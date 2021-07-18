package §2V§
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §;a§ extends EventDispatcher
   {
       
      
      protected var §-#5§:MovieClip;
      
      protected var §8#%§:String;
      
      public function §;a§(param1:MovieClip, param2:String)
      {
         super();
         this.§-#5§ = param1;
         this.§-#5§.buttonMode = true;
         this.§-#5§.mouseChildren = false;
         this.§-#5§.tabEnabled = false;
         this.§8#%§ = param2;
         this.§+!T§();
      }
      
      protected function §+!T§() : void
      {
         this.§-#5§.addEventListener(MouseEvent.CLICK,this.§^%§);
      }
      
      protected function §;!'§() : void
      {
         this.§-#5§.removeEventListener(MouseEvent.CLICK,this.§^%§);
      }
      
      protected function §^%§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function §!!?§() : void
      {
         this.§-#5§.gotoAndStop("Normal");
      }
      
      public function select() : void
      {
         this.§-#5§.gotoAndStop("Selected");
      }
      
      public function get name() : String
      {
         return this.§8#%§;
      }
   }
}
