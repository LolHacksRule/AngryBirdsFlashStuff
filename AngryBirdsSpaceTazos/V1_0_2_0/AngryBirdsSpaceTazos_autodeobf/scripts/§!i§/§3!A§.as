package §!i§
{
   import §4!t§.§>r§;
   import §<!#§.§""§;
   import flash.display.MovieClip;
   
   public class §3!A§ extends §>r§
   {
       
      
      public function §3!A§(param1:XML, param2:§1s§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §^7§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §^7§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §^7§(§!!M§,param1.@MouseOver);
         §^7§(§1>§,param1.@MouseOut);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §""§
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
