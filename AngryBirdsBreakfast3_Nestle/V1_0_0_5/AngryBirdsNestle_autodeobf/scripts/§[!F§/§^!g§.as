package §[!F§
{
   import §&<§.§@j§;
   import §8,§.§8!h§;
   import flash.display.MovieClip;
   
   public class §^!g§ extends §@j§
   {
       
      
      public function §^!g§(param1:XML, param2:§3j§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §0!0§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §0!0§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §0!0§(§^!2§,param1.@MouseOver);
         §0!0§(§+!b§,param1.@MouseOut);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8!h§
      {
         return super.listenerUIEventOccured(param1,param2);
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
