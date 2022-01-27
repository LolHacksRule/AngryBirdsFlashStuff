package §""d§
{
   import §4##§.§7!Y§;
   import flash.display.MovieClip;
   
   public class §2"8§ extends §7!Y§
   {
       
      
      public function §2"8§(param1:XML, param2:§,m§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §#"]§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §#"]§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §#"]§(§>"S§,param1.@MouseOver);
         §#"]§(§-"7§,param1.@MouseOut);
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
