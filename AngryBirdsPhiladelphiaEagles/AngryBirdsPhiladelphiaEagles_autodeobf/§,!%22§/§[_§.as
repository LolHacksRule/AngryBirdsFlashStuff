package §,!"§
{
   import §'!O§.§'!#§;
   import §6v§.§`M§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §[_§ extends §'!#§
   {
      
      public static const §-A§:String = "FlashGoes11State";
      
      public static const §7Y§:Number = 6000;
       
      
      private var §&!9§:Number = -1;
      
      private var §3!Q§:MovieClip = null;
      
      public function §[_§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §[!D§.§8!N§("MovieClip_Animation");
         this.§3!Q§ = new _loc1_();
         §0q§.addChild(this.§3!Q§);
         this.§3!Q§.scaleY = 1.3;
         this.§3!Q§.scaleX = 1.3;
         this.§3!Q§.x = (1024 - 1024 * 1.3) / 2;
         this.§3!Q§.y = (768 - 768 * 1.3) / 2;
         this.§&!9§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§3!Q§.currentFrame == this.§3!Q§.totalFrames)
         {
            mNextState = §8j§.§-A§;
         }
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§-A§;
         }
      }
   }
}
