package §@r§
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §+"i§ extends EventDispatcher
   {
       
      
      protected var §3!5§:MovieClip;
      
      protected var §>!`§:String;
      
      public function §+"i§(param1:MovieClip, param2:String)
      {
         super();
         this.§3!5§ = param1;
         this.§3!5§.buttonMode = true;
         this.§3!5§.mouseChildren = false;
         this.§3!5§.tabEnabled = false;
         this.§>!`§ = param2;
         this.§09§();
      }
      
      protected function §09§() : void
      {
         this.§3!5§.addEventListener(MouseEvent.CLICK,this.§-!K§);
      }
      
      protected function §3#f§() : void
      {
         this.§3!5§.removeEventListener(MouseEvent.CLICK,this.§-!K§);
      }
      
      protected function §-!K§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function §!#z§() : void
      {
         this.§3!5§.gotoAndStop("Normal");
      }
      
      public function select() : void
      {
         this.§3!5§.gotoAndStop("Selected");
      }
      
      public function get name() : String
      {
         return this.§>!`§;
      }
   }
}
