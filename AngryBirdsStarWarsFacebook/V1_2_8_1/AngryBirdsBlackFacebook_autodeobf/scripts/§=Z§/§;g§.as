package §=Z§
{
   import §8!h§.§%"z§;
   import flash.display.MovieClip;
   
   public class §;g§ extends §%"z§
   {
       
      
      public function §;g§(param1:XML, param2:§@!8§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §="B§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §="B§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §="B§(§7!j§,param1.@MouseOver);
         §="B§(§?"N§,param1.@MouseOut);
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
