package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§7!8§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §8!<§ extends §<"+§
   {
      
      public static const §8G§:String = "FlashGoes11State";
      
      public static const §]!l§:Number = 6000;
       
      
      private var §<!,§:Number = -1;
      
      private var §3O§:MovieClip = null;
      
      public function §8!<§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §8!q§.§2^§("MovieClip_Animation");
         this.§3O§ = new _loc1_();
         §;i§.addChild(this.§3O§);
         this.§3O§.scaleY = 1.3;
         this.§3O§.scaleX = 1.3;
         this.§3O§.x = (1024 - 1024 * 1.3) / 2;
         this.§3O§.y = (768 - 768 * 1.3) / 2;
         this.§<!,§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§3O§.currentFrame == this.§3O§.totalFrames)
         {
            mNextState = §+e§.§8G§;
         }
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§8G§;
         }
      }
   }
}
