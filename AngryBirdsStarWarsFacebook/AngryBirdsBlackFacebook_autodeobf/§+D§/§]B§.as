package §+D§
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §]B§
   {
       
      
      private var §1"&§:Boolean = false;
      
      private var §7"k§:MovieClip;
      
      public function §]B§(param1:MovieClip, param2:Boolean = false)
      {
         super();
         this.§7"k§ = param1;
         this.§7"k§.buttonMode = true;
         this.§7"k§.addEventListener(MouseEvent.CLICK,this.§^!R§);
         this.§0" § = param2;
      }
      
      public function get §[!8§() : DisplayObject
      {
         return this.§7"k§;
      }
      
      public function dispose() : void
      {
         this.§7"k§.removeEventListener(MouseEvent.CLICK,this.§^!R§);
         this.§7"k§ = null;
      }
      
      private function §^!R§(param1:MouseEvent) : void
      {
         this.§0" § = !this.§0" §;
      }
      
      public function get §0" §() : Boolean
      {
         return this.§1"&§;
      }
      
      public function set §0" §(param1:Boolean) : void
      {
         this.§1"&§ = param1;
         this.§7"k§.gotoAndStop(this.§1"&§.toString());
         this.§[!8§.dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
