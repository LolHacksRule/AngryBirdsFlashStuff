package §+D§
{
   import §;"Y§.§1"z§;
   import flash.display.MovieClip;
   
   public class §^"m§ extends §1"z§
   {
       
      
      public function §^"m§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         § #A§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         § #A§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         § #A§(§;#V§,param1.@MouseOver);
         § #A§(§<!^§,param1.@MouseOut);
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
