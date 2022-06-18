package §5!$§
{
   import §4!n§.§'!V§;
   import flash.display.MovieClip;
   
   public class §"S§ extends §'!V§
   {
       
      
      public function §"S§(param1:XML, param2:§<c§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §4M§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §4M§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §4M§(§[!P§,param1.@MouseOver);
         §4M§(§`[§,param1.@MouseOut);
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
