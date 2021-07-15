package §0"$§
{
   import §,L§.§%J§;
   import flash.display.MovieClip;
   
   public class §;§ extends §%J§
   {
       
      
      public function §;§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §9E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §9E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §9E§(§,!y§,param1.@MouseOver);
         §9E§(§-g§,param1.@MouseOut);
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
