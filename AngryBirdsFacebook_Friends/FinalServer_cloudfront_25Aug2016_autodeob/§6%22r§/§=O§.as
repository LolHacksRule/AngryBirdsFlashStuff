package §6"r§
{
   import §'!U§.§4P§;
   import flash.display.MovieClip;
   
   public class §=O§ extends §4P§
   {
       
      
      public function §=O§(param1:XML, param2:§0"<§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §7!7§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7!7§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7!7§(§1"j§,param1.@MouseOver);
         §7!7§(§`!O§,param1.@MouseOut);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == COMPONENT_STATE_DISABLED)
         {
            targetSprite.useHandCursor = false;
            targetSprite.buttonMode = false;
         }
         else
         {
            targetSprite.useHandCursor = true;
            targetSprite.buttonMode = true;
            targetSprite.mouseChildren = false;
         }
         super.setComponentState(param1);
      }
   }
}
