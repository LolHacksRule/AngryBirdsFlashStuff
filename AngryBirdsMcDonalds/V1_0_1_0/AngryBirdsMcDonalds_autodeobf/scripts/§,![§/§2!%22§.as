package §,![§
{
   import §-1§.§>!6§;
   import §3l§.§&W§;
   import §3l§.§9m§;
   import flash.display.MovieClip;
   
   public class §2!"§ extends §>!6§
   {
       
      
      private var §8P§:§&W§;
      
      public function §2!"§(param1:XML, param2:§[!S§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §%!4§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §%!4§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §%!4§(§%'§,param1.@MouseOver);
         §%!4§(§,4§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §5h§)
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
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(§<!I§)
         {
            if(param1 == §?T§)
            {
               if(this.§8P§ != null)
               {
                  this.§8P§.stop();
               }
               this.§8P§ = §9m§.§>E§.§"0§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§8P§.play();
            }
            else if(param1 == §+o§)
            {
               if(this.§8P§ != null)
               {
                  this.§8P§.stop();
               }
               this.§8P§ = §9m§.§>E§.§"0§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§8P§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§8P§)
         {
            this.§8P§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§8P§)
         {
            this.§8P§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
