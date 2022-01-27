package §`"]§
{
   import §+&§.§&q§;
   import §+&§.§>`§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class § #2§ extends Sprite
   {
       
      
      private var §3!u§:String;
      
      protected var §0"2§:String;
      
      protected var §="f§:§&q§;
      
      public function § #2§(param1:String, param2:String = null)
      {
         super();
         this.§3!u§ = param1;
         this.§0"2§ = param2 || §&q§.§8"`§;
         this.init();
      }
      
      private function init() : void
      {
         this.§="f§ = §>`§.§!6§.§3&§(this.§3!u§,this.§0"2§);
         this.§="f§.addEventListener(Event.COMPLETE,this.§&"%§);
         addChild(this.§="f§);
      }
      
      private function §&"%§(param1:Event) : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
         if(this.§="f§)
         {
            this.§="f§.removeEventListener(Event.COMPLETE,this.§&"%§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§="f§)
         {
            removeChild(this.§="f§);
            §>`§.§!6§.§&!p§(this.§3!u§,this.§0"2§,this.§="f§);
            this.§="f§ = null;
         }
      }
   }
}
