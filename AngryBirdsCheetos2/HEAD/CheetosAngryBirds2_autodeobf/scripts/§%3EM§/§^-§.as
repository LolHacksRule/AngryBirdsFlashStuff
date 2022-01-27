package §>M§
{
   import §'!D§.§0j§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import flash.display.MovieClip;
   
   public class §^-§ extends §0j§
   {
       
      
      private var §"!U§:§7g§;
      
      public function §^-§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §8!h§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §8!h§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §8!h§(§&x§,param1.@MouseOver);
         §8!h§(§;=§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §%!T§)
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
         if(§%!3§)
         {
            if(param1 == §=Z§)
            {
               if(this.§"!U§ != null)
               {
                  this.§"!U§.stop();
               }
               this.§"!U§ = §%g§.§'I§.§5!0§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§"!U§.play();
            }
            else if(param1 == §-y§)
            {
               if(this.§"!U§ != null)
               {
                  this.§"!U§.stop();
               }
               this.§"!U§ = §%g§.§'I§.§5!0§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§"!U§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§"!U§)
         {
            this.§"!U§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§"!U§)
         {
            this.§"!U§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
