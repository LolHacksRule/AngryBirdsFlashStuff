package §<h§
{
   import §3#T§.§,#[§;
   import flash.display.MovieClip;
   
   public class §>"0§ extends §,#[§
   {
       
      
      public function §>"0§(param1:XML, param2:§[#K§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §<!4§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §<!4§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §<!4§(§^$?§,param1.@MouseOver);
         §<!4§(§5x§,param1.@MouseOut);
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
