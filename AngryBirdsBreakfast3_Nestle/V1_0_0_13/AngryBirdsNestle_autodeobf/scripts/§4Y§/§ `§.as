package §4Y§
{
   import §!R§.§-!T§;
   import flash.display.MovieClip;
   
   public class § `§ extends §-!T§
   {
       
      
      public function § `§(param1:XML, param2:§%n§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §0!U§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §0!U§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §0!U§(§<!>§,param1.@MouseOver);
         §0!U§(§!""§,param1.@MouseOut);
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
