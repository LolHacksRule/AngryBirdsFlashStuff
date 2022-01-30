package §@#§
{
   import §?!4§.§^!S§;
   import §[!b§.§]"-§;
   import flash.display.MovieClip;
   
   public class §4!O§ extends §]"-§
   {
       
      
      public function §4!O§(param1:XML, param2:§9!'§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §1!@§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §1!@§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §1!@§(§9y§,param1.@MouseOver);
         §1!@§(§3!W§,param1.@MouseOut);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §^!S§
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
