package § C§
{
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §0R§.§ for§;
   import §0R§.§;g§;
   import §1n§.§5#§;
   import §1n§.§try §;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import flash.events.Event;
   
   public class StateCutScene extends §-§
   {
      
      public static const §?B§:String = "StateCutScene";
      
      private static const §3!#§:Number = 500;
       
      
      private var §7t§:§;g§;
      
      private var §@d§:Boolean;
      
      private var §[e§:Number = 0;
      
      private var §7q§:Number = 0;
      
      private var §5!0§:§try §;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_CutScene[0]);
      }
      
      protected function §5! §(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§5!0§)
            {
               §,R§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§5!0§.removeEventListener(Event.COMPLETE,this.§3>§);
               this.§5!0§.removeEventListener(Event.CANCEL,this.§=M§);
               this.§5!0§.addEventListener(Event.COMPLETE,this.§3>§);
               this.§5!0§.addEventListener(Event.CANCEL,this.§=M§);
               this.§5!0§.§'[§("cutscene_" + param1);
            }
            else
            {
               this.§5q§();
            }
            return true;
         }
         return false;
      }
      
      private function §3>§(param1:Event) : void
      {
         if(this.§5!0§)
         {
            this.§5!0§.removeEventListener(Event.COMPLETE,this.§3>§);
            this.§5!0§.removeEventListener(Event.CANCEL,this.§=M§);
            this.§5q§();
         }
      }
      
      private function §5q§() : void
      {
         §,R§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§<8§();
         var _loc2_:§5#§ = §5#§.§[8§;
         if(this.§5!0§)
         {
            _loc2_ = this.§5!0§.textureManager;
         }
         this.§7t§ = § for§.§>+§(_loc1_,_loc2_);
         if(this.§7t§)
         {
            AngryBirdsFP11.§64§.§6w§(_loc1_);
            §[o§.§='§.§"3§(true);
            §[o§.§='§.§[!C§(false);
            this.§7t§.update(0);
            §[o§.§='§.§1S§.addChild(this.§7t§.sprite);
         }
      }
      
      protected function §=M§(param1:Event) : void
      {
         if(this.§5!0§)
         {
            this.§5!0§.removeEventListener(Event.COMPLETE,this.§3>§);
            this.§5!0§.removeEventListener(Event.CANCEL,this.§=M§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§5!0§)
         {
            this.§5!0§ = §[o§.§='§.§@y§;
         }
         if(§?h§.§ n§)
         {
            §?h§.§ n§.color = 0;
         }
         this.§[e§ = 0;
         this.§7q§ = 0;
         §,R§.getItemByName("Button_Skip").setVisibility(false);
         §,R§.getItemByName("Button_Skip").mClip.alpha = this.§[e§;
         AngryBirdsFP11.§^!<§();
         this.§@d§ = false;
         §,R§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§<8§();
         if(!this.§5! §(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §<8§() : String
      {
         var _loc1_:String = §0$§.§>Q§;
         var _loc2_:String = §0$§.§ H§().§1!2§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §0$§.§[C§;
            _loc2_ = §0$§.§ H§().§1!2§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§7t§)
         {
            §[o§.§='§.§1S§.removeChild(this.§7t§.sprite);
            this.§7t§.dispose();
            this.§7t§ = null;
         }
         if(this.§5!0§)
         {
            this.§5!0§.removeEventListener(Event.COMPLETE,this.§3>§);
            this.§5!0§.removeEventListener(Event.CANCEL,this.§=M§);
         }
         §[o§.§='§.§[!C§(true);
         §0$§.§>Q§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§@d§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§7q§ > §3!#§)
         {
            §,R§.getItemByName("Button_Skip").setVisibility(true);
            this.§[e§ += param1 / 1000;
            §,R§.getItemByName("Button_Skip").mClip.alpha = this.§[e§;
            if(this.§[e§ > 1)
            {
               this.§[e§ = 1;
            }
         }
         else
         {
            this.§7q§ += param1;
         }
         if(this.§@d§)
         {
            this.end();
            return §-§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         if(this.§7t§ && !this.§7t§.update(param1))
         {
            this.end();
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§7t§ && this.§7t§.§?g§ == §;g§.§=s§)
         {
            §4t§.§7p§ = StateCutScene.§?B§;
            mNextState = §4t§.§?B§;
         }
         else if(this.§7t§ && this.§7t§.§?g§ == §;g§.§%Z§)
         {
            mNextState = §%H§.§?B§;
         }
         else
         {
            _loc1_ = §0$§.§[C§;
            if(_loc1_)
            {
               mNextState = this.§`^§();
            }
            else
            {
               mNextState = §4t§.§?B§;
            }
         }
      }
      
      protected function §`^§() : String
      {
         return §7!6§.§?B§;
      }
   }
}
