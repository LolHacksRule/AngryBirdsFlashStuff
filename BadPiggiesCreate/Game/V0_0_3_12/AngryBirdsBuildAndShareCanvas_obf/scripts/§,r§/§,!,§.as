package §,r§
{
   import §%!,§.§,v§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §,!,§ extends §,v§
   {
      
      public static const §8n§:String = "FlashGoes11State";
      
      public static const §%]§:Number = 6000;
       
      
      private var §4"%§:Number = -1;
      
      private var §+!Z§:MovieClip = null;
      
      public function §,!,§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §!"'§.§%!Q§("MovieClip_Animation");
         this.§+!Z§ = new _loc1_();
         §?F§.addChild(this.§+!Z§);
         this.§+!Z§.scaleY = 1.3;
         this.§+!Z§.scaleX = 1.3;
         this.§+!Z§.x = (1024 - 1024 * 1.3) / 2;
         this.§+!Z§.y = (768 - 768 * 1.3) / 2;
         this.§4"%§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§+!Z§.currentFrame == this.§+!Z§.totalFrames)
         {
            mNextState = §^u§.§8n§;
         }
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§8n§;
         }
      }
   }
}
