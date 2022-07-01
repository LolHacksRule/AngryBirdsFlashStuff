package §2u§
{
   import §'"!§.§-!g§;
   import flash.display.MovieClip;
   
   public class §]"%§ extends §-!g§
   {
       
      
      public function §]"%§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §^1§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §^1§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §^1§(§]'§,param1.@MouseOver);
         §^1§(§<!H§,param1.@MouseOut);
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
