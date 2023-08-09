function talk(string){
    let speech = new SpeechSynthesisUtterance();
    speech.lang = "en";
    speech.text = string;
    window.speechSynthesis.speak(speech);
}
