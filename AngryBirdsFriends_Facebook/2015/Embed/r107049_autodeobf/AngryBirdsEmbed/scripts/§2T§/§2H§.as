package §2T§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §7J§.§=U§;
   import flash.display.MovieClip;
   
   public class §2H§ extends §=U§
   {
       
      
      private var §8t§:§9;§;
      
      public function §2H§(param1:XML, param2:§&M§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §4j§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §4j§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §4j§(§`U§,param1.@MouseOver);
         §4j§(§-!G§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == § S§)
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
         if(§<b§)
         {
            if(param1 == §#!"§)
            {
               if(this.§8t§ != null)
               {
                  this.§8t§.stop();
               }
               this.§8t§ = §'!A§.§5+§.§;h§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§8t§.play();
            }
            else if(param1 == §^V§)
            {
               if(this.§8t§ != null)
               {
                  this.§8t§.stop();
               }
               this.§8t§ = §'!A§.§5+§.§;h§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§8t§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§8t§)
         {
            this.§8t§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§8t§)
         {
            this.§8t§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
