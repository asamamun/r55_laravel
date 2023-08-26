@extends('layouts.test')

@section('content')

<h3>Your Cart Items</h3>
<table class="table table-responsive table-striped table-hover">
    <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Quantity</th>
        <th>Product Price</th>        
        <th>Action</th>
    </tr>
    <tbody id="data">
        
    </tbody>
    <tfoot>
        <tr>
            <th colspan="3"></th>
            <th colspan="2">
                Total : <span id="total"></span>
            </th>
        </tr>
    </tfoot>
</table>

    
@endsection

@section('script')
<script>

    $(document).ready(function () {
        let c = new Cart();
        let total = c.getTotalPrice();
        $("#total").html(total);    
        console.table(c.items);
        $items = "";
        c.items.forEach(item => {
            $items += "<tr>";
            $items += "<td>"+item.id+"</td>";
            $items += "<td>"+item.name+"</td>";
            $items += "<td><input class='pq' type='number' value='"+item.quantity+"'></td>";
            $items += "<td class='pp'>"+item.price+"</td>";            
            $items += "<td class='pnp'>"+(item.price * item.quantity)+"</td>";            
            $items += "<td> <a class='removeCart' data-pid='"+item.id+"'><i class='bi bi-trash'></i></a> </td>";
            $items += "</tr>";
        });        
        $("#data").html($items);
        //total amount
        function total_amount(){
            let tm = 0;
            $.each($(".pnp"), function (i, e) { 
                 tm += Number(e.innerHTML);
            });
            $("#total").html(tm);
        }
        //change quantity
        $("#data").on('change',".pq" ,function(){
            let $t = $(this);
            let q = $t.val();
            let p = $t.parent().parent().find('.pp').html();
            //console.log(p);
            let pnp = q * p;
            $(this).parent().parent().find('.pnp').html(pnp);
            total_amount();
        })
        //remove single cart item
        $("#data").on("click",'a.removeCart',function(){
            let cart = new Cart();
            talk("Are you sure you want to remove the item?");
            let c = confirm("Are you sure you want to remove");
            if(c){
                let pid = $(this).data("pid");
                cart.removeItem(pid);
                $(this).parent().parent().remove();
                $("#total").html(cart.getTotalPrice());
                talk("Item removed successfully from your cart");
            }
        });
    });
</script>
    
@endsection