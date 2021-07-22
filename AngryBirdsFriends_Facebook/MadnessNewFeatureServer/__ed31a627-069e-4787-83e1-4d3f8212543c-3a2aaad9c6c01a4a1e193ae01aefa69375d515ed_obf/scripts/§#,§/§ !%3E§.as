package §#,§
{
   import §,!Q§.§+!2§;
   import flash.display.MovieClip;
   
   public class § !>§ extends §+!2§
   {
       
      
      public function § !>§(param1:XML, param2:§]$+§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §1r§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §1r§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §1r§(§0!5§,param1.@MouseOver);
         §1r§(§<!$§,param1.@MouseOut);
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
