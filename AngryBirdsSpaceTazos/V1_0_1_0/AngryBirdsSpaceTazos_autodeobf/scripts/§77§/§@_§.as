package §77§
{
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import flash.display.MovieClip;
   
   public class §@_§ extends §@!!§
   {
       
      
      public function §@_§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §]!d§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §]!d§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §]!d§(§3!R§,param1.@MouseOver);
         §]!d§(§ h§,param1.@MouseOut);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
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
