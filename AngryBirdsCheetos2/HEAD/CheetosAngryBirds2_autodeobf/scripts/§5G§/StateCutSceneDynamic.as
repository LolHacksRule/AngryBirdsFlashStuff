package §5G§
{
   import §"§.§%!$§;
   import §'!D§.§08§;
   import §-!Q§.§,!7§;
   import §1!E§.§>f§;
   import §3!,§.§#x§;
   import §3!,§.ColorFadeLayerEvent;
   import §>M§.§-!P§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §[h§.§3!c§;
   import §[h§.§[_§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends §%!$§
   {
      
      public static const §3!?§:String = "StateCutSceneDynamic";
      
      private static const §^@§:Number = 2000;
      
      private static const §50§:String = "1-3";
      
      private static var §?-§:Boolean = true;
      
      private static const §-!+§:String = "flash/external_assets/dynamic/";
       
      
      private var §3! §:Boolean;
      
      private var §7!E§:Dictionary;
      
      private var §5!+§:String;
      
      private var §1!Y§:§[_§ = null;
      
      private var §[2§:MovieClip = null;
      
      private var §&@§:Boolean = false;
      
      protected var §#q§:§#x§ = null;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function §--§() : void
      {
         if(§,!7§.§-!§("Channel_Theme") == null || !§,!7§.§-!§("Channel_Theme").§`!N§())
         {
            §,!7§.playSound("birds_intro","Channel_Theme",1);
         }
      }
      
      public static function §"!B§() : void
      {
         if(§,!7§.§-!§("Channel_Theme"))
         {
            §,!7§.§-!§("Channel_Theme").§13§();
         }
      }
      
      public static function set §^C§(param1:Boolean) : void
      {
         §?-§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         this.§#q§ = new §#x§(0,0,0,1);
         §%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_CutScene[0]);
         this.§7!E§ = new Dictionary();
         §@!Z§.§;!,§.§%d§(false);
      }
      
      override public function activate() : void
      {
         var _loc2_:§^-§ = null;
         var _loc3_:MovieClip = null;
         super.activate();
         this.§;p§();
         if(!§?-§ && §>f§.§^!a§(§@;§.§6!K§) && §@;§.§=C§ != §50§)
         {
            §%!0§.getItemByName("Button_Menu").setVisibility(true);
            _loc2_ = §%!0§.getItemByName("Button_Skip") as §^-§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = true;
         }
         else if(!§>f§.§^!a§(§@;§.§6!K§))
         {
            §%!0§.getItemByName("Button_Menu").setVisibility(false);
            §%!0§.getItemByName("Button_Skip").setVisibility(true);
            _loc2_ = §%!0§.getItemByName("Button_Skip") as §^-§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         else
         {
            _loc2_ = §%!0§.getItemByName("Button_Skip") as §^-§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         this.§&@§ = false;
         §5!9§.§2z§();
         this.§3! § = false;
         var _loc1_:String = this.§2@§();
         if(_loc1_)
         {
            if(!this.§7!E§[this.§5!+§])
            {
               this.§ !`§(_loc1_);
            }
            else
            {
               this.§[2§ = this.§7!E§[this.§5!+§];
               this.play();
            }
         }
         else
         {
            mNextState = §'!9§.§3!?§;
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§^-§ = null;
         var _loc4_:MovieClip = null;
         §%!0§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§3! §)
         {
            this.end();
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§?-§ && §>f§.§^!a§(§@;§.§6!K§) && §@;§.§=C§ != §50§)
         {
            §%!0§.getItemByName("Button_Menu").setVisibility(true);
            _loc3_ = §%!0§.getItemByName("Button_Skip") as §^-§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = true;
         }
         else if(!§>f§.§^!a§(§@;§.§6!K§))
         {
            §%!0§.getItemByName("Button_Menu").setVisibility(false);
            §%!0§.getItemByName("Button_Skip").setVisibility(true);
            _loc3_ = §%!0§.getItemByName("Button_Skip") as §^-§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         else
         {
            _loc3_ = §%!0§.getItemByName("Button_Skip") as §^-§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         this.§7v§(§%!0§.getItemByName("MovieClip_CutScene") as §-!P§,param1);
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      private function §7v§(param1:§-!P§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§&@§ && param1.§`!N§ == true)
         {
            _loc3_ = param1.§5J§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§`!N§ = false;
            }
         }
      }
      
      private function play() : void
      {
         §--§();
         this.§&@§ = true;
         §%!0§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§[2§);
         (§%!0§.getItemByName("MovieClip_CutScene") as §-!P§).§ m§("Start");
         §%!0§.getItemByName("MovieClip_Loading").setVisibility(false);
         §%!0§.getItemByName("MovieClip_BackGround").setVisibility(false);
         §%!0§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§%!0§.getItemByName("MovieClip_CutScene") as §-!P§).§`!N§ = true;
      }
      
      private function end() : void
      {
         §"!B§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#q§ && §%!0§.container.mClip.contains(this.§#q§))
         {
            §%!0§.container.mClip.removeChild(this.§#q§);
         }
         if(this.§#q§)
         {
            this.§#q§.removeEventListener(ColorFadeLayerEvent.§79§,this.§63§);
         }
         §%!0§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §%!0§.getItemByName("MovieClip_Loading").setVisibility(false);
         §%!0§.getItemByName("MovieClip_BackGround").setVisibility(false);
         §%!0§.getItemByName("Button_Skip").setVisibility(false);
         §%!0§.getItemByName("Button_Menu").setVisibility(false);
         if(this.§1!Y§)
         {
            this.§1!Y§.dispose();
            this.§1!Y§.removeEventListener(§3!c§.§%!g§,this.§>@§);
            this.§1!Y§.removeEventListener(§3!c§.§;d§,this.§ each§);
            this.§1!Y§.removeEventListener(§3!c§.§`!O§,this.§97§);
            this.§1!Y§ = null;
         }
         §@!Z§.§;!,§.§%d§(true);
         §@;§.§=C§ = null;
         §?-§ = false;
         (§%!0§.getItemByName("MovieClip_CutScene") as §-!P§).§ m§("Start");
         §@;§.§=C§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§3! § = true;
               if(§>f§.§^!a§(§@;§.§6!K§) && §@;§.§=C§ != §50§)
               {
                  mNextState = §'!9§.§3!?§;
               }
               else if(§@;§.§=C§ == §50§)
               {
                  mNextState = §39§.§3!?§;
               }
               else
               {
                  §"!B§();
                  mNextState = §9!$§.§3!?§;
               }
               break;
            case "MENU":
               §"!B§();
               mNextState = §39§.§3!?§;
         }
      }
      
      private function § !`§(param1:String) : void
      {
         this.§1!Y§ = new §[_§();
         this.§1!Y§.addEventListener(§3!c§.§%!g§,this.§>@§);
         this.§1!Y§.addEventListener(§3!c§.§;d§,this.§ each§);
         this.§1!Y§.addEventListener(§3!c§.§`!O§,this.§97§);
         if(!this.§1!Y§.load(§-!+§ + param1))
         {
            this.end();
         }
      }
      
      private function §>@§(param1:§3!c§) : void
      {
         this.§7!E§[this.§5!+§] = this.§1!Y§.content;
         this.§[2§ = this.§7!E§[this.§5!+§];
         this.play();
      }
      
      private function § each§(param1:§3!c§) : void
      {
         this.end();
      }
      
      private function §97§(param1:§3!c§) : void
      {
         §%!0§.getItemByName("MovieClip_Loading").setVisibility(true);
         §%!0§.getItemByName("MovieClip_BackGround").setVisibility(true);
      }
      
      private function §2@§() : String
      {
         this.§5!+§ = §@;§.§=C§;
         if(this.§5!+§ == null)
         {
            this.§5!+§ = §@;§.§6!K§;
         }
         if(§?-§)
         {
            this.§5!+§ += "-INTRO";
         }
         else
         {
            this.§5!+§ += "-OUTRO";
         }
         return §@;§.§+Q§().§]<§(this.§5!+§);
      }
      
      protected function §;p§() : void
      {
         if(this.§#q§)
         {
            this.§#q§.§"!c§(1);
            if(this.§#q§.parent == §%!0§.container.mClip)
            {
               §%!0§.container.mClip.removeChild(this.§#q§);
               §%!0§.container.mClip.addChild(this.§#q§);
            }
            else
            {
               §%!0§.container.mClip.addChild(this.§#q§);
            }
            this.§#q§.§'H§(0,0.2);
            this.§#q§.addEventListener(ColorFadeLayerEvent.§79§,this.§63§);
         }
      }
      
      private function §63§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§#q§ && §%!0§.container.mClip.contains(this.§#q§))
         {
            §%!0§.container.mClip.removeChild(this.§#q§);
         }
      }
   }
}
