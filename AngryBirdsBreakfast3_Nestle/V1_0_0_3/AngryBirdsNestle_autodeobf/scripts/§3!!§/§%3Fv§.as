package §3!!§
{
   import §>!L§.§?!d§;
   import §@f§.§4d§;
   import flash.display.MovieClip;
   
   public class §?v§ extends §4d§
   {
       
      
      public function §?v§(param1:XML, param2:§5" §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §8y§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §8y§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §8y§(§ !@§,param1.@MouseOver);
         §8y§(§<![§,param1.@MouseOut);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!d§
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
