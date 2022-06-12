package §5!8§
{
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §^x§.§;_§;
   import flash.display.MovieClip;
   
   public class §;!Z§ extends §;_§
   {
       
      
      private var §"H§:§+I§;
      
      public function §;!Z§(param1:XML, param2:§+!?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §^T§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §^T§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §^T§(§^!H§,param1.@MouseOver);
         §^T§(§^!K§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §<!v§)
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
         if(§;!%§)
         {
            if(param1 == §42§)
            {
               if(this.§"H§ != null)
               {
                  this.§"H§.stop();
               }
               this.§"H§ = §-!M§.§ "!§.§+d§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§"H§.play();
            }
            else if(param1 == §8;§)
            {
               if(this.§"H§ != null)
               {
                  this.§"H§.stop();
               }
               this.§"H§ = §-!M§.§ "!§.§+d§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§"H§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§"H§)
         {
            this.§"H§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§"H§)
         {
            this.§"H§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
