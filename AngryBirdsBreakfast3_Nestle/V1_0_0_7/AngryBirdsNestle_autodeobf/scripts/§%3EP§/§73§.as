package §>P§
{
   import §"V§.§]j§;
   import §<!0§.§3!W§;
   import flash.display.MovieClip;
   
   public class §73§ extends §3!W§
   {
       
      
      public function §73§(param1:XML, param2:§]"4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §&!4§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §&!4§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §&!4§(§+!1§,param1.@MouseOver);
         §&!4§(§?!_§,param1.@MouseOut);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]j§
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
