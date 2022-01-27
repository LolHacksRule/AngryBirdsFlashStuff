package §="<§
{
   import §#R§.§%!S§;
   import §7!6§.§^l§;
   import flash.display.MovieClip;
   
   public class §87§ extends §^l§
   {
       
      
      public function §87§(param1:XML, param2:§,"$§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §!!2§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §!!2§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §!!2§(§,G§,param1.@MouseOver);
         §!!2§(§>"5§,param1.@MouseOut);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%!S§
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
