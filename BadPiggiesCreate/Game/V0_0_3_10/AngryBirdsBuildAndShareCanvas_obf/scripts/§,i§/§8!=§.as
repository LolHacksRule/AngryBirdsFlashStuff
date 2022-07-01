package §,i§
{
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §<8§.§7!n§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §8!=§ extends §0!K§
   {
      
      public static const §]"2§:String = "FlashGoes11State";
      
      public static const §!a§:Number = 6000;
       
      
      private var §6!'§:Number = -1;
      
      private var §7f§:MovieClip = null;
      
      public function §8!=§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §5!+§.§,]§("MovieClip_Animation");
         this.§7f§ = new _loc1_();
         §'K§.addChild(this.§7f§);
         this.§7f§.scaleY = 1.3;
         this.§7f§.scaleX = 1.3;
         this.§7f§.x = (1024 - 1024 * 1.3) / 2;
         this.§7f§.y = (768 - 768 * 1.3) / 2;
         this.§6!'§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§7f§.currentFrame == this.§7f§.totalFrames)
         {
            mNextState = §#!G§.§]"2§;
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§]"2§;
         }
      }
   }
}
