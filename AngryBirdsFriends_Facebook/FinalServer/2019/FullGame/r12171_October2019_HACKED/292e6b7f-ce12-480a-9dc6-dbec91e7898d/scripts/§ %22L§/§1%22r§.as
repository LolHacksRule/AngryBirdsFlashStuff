package § "L§
{
   import §^"3§.§ #&§;
   import flash.display.MovieClip;
   
   public class §1"r§ extends § #&§
   {
       
      
      public function §1"r§(param1:XML, param2:§23§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §+"6§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §+"6§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §+"6§(§4$5§,param1.@MouseOver);
         §+"6§(§@"`§,param1.@MouseOut);
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
