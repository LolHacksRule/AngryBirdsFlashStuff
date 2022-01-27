package §,!7§
{
   import §+=§.§?!Q§;
   import §6B§.§5![§;
   import flash.display.MovieClip;
   
   public class §%!J§ extends §5![§
   {
       
      
      public function §%!J§(param1:XML, param2:§5!k§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §7!B§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7!B§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7!B§(§21§,param1.@MouseOver);
         §7!B§(§=!^§,param1.@MouseOut);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!Q§
      {
         return super.listenerUIEventOccured(param1,param2);
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
