package §%#A§
{
   import §<"1§.§@!N§;
   import flash.display.MovieClip;
   
   public class §,#w§ extends §@!N§
   {
       
      
      public function §,#w§(param1:XML, param2:§]!_§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §<!t§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §<!t§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §<!t§(§1#+§,param1.@MouseOver);
         §<!t§(§+#"§,param1.@MouseOut);
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
