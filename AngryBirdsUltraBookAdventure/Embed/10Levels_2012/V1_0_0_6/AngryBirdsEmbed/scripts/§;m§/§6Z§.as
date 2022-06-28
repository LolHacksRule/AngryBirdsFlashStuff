package §;m§
{
   import §0w§.§0#§;
   import §0w§.§06§;
   import §6H§.§>3§;
   import §`!0§.§"?§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §6Z§ extends §>3§
   {
      
      public static const §-!A§:String = "FlashGoes11State";
      
      public static const §2!$§:Number = 6000;
       
      
      private var §9§:Number = -1;
      
      private var §-!C§:MovieClip = null;
      
      public function §6Z§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §!Q§.§^!H§("MovieClip_Animation");
         this.§-!C§ = new _loc1_();
         §-f§.addChild(this.§-!C§);
         this.§-!C§.scaleY = 1.3;
         this.§-!C§.scaleX = 1.3;
         this.§-!C§.x = (1024 - 1024 * 1.3) / 2;
         this.§-!C§.y = (768 - 768 * 1.3) / 2;
         this.§9§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§-!C§.currentFrame == this.§-!C§.totalFrames)
         {
            mNextState = §1!§.§-!A§;
         }
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§-!A§;
         }
      }
   }
}
