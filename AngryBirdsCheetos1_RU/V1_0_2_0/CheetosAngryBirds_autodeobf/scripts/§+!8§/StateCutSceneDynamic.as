package §+!8§
{
   import §"I§.§-x§;
   import §#J§.§7!<§;
   import §#J§.§=!;§;
   import §#b§.§5!#§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §1o§.§'M§;
   import §7L§.§9I§;
   import §8O§.§'S§;
   import §@!W§.§8!W§;
   import §[]§.§+F§;
   import §[]§.§=!6§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends §-x§
   {
      
      public static const §,!+§:String = "StateCutSceneDynamic";
      
      private static const §0>§:Number = 2000;
      
      private static var §7w§:Boolean = true;
      
      private static const §#Y§:String = "flash/external_assets/dynamic/";
       
      
      private var §6o§:Boolean;
      
      private var § !7§:Dictionary;
      
      private var §'!2§:String;
      
      private var §?W§:§7!<§ = null;
      
      private var §>!'§:MovieClip = null;
      
      private var §3!-§:Boolean = false;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function §&!P§() : void
      {
         if(§'M§.§%!]§("Channel_Theme") == null || !§'M§.§%!]§("Channel_Theme").§]!K§())
         {
            §'M§.§1T§("birds_intro","Channel_Theme",1);
         }
      }
      
      public static function §-m§() : void
      {
         if(§'M§.§%!]§("Channel_Theme"))
         {
            §'M§.§%!]§("Channel_Theme").§"!?§();
         }
      }
      
      public static function set §%n§(param1:Boolean) : void
      {
         §7w§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_CutScene[0]);
         this.§ !7§ = new Dictionary();
      }
      
      override public function activate() : void
      {
         var _loc2_:§+F§ = null;
         var _loc3_:MovieClip = null;
         super.activate();
         if(!§7w§ && §'S§.§1M§(§5!#§.§'D§))
         {
            §&X§.getItemByName("Button_Menu").setVisibility(true);
            _loc2_ = §&X§.getItemByName("Button_Skip") as §+F§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = true;
         }
         else if(!§'S§.§1M§(§5!#§.§'D§))
         {
            §&X§.getItemByName("Button_Menu").setVisibility(false);
            §&X§.getItemByName("Button_Skip").setVisibility(true);
            _loc2_ = §&X§.getItemByName("Button_Skip") as §+F§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         else
         {
            _loc2_ = §&X§.getItemByName("Button_Skip") as §+F§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         this.§3!-§ = false;
         §@!!§.§'!H§();
         this.§6o§ = false;
         var _loc1_:String = this.§5!8§();
         if(_loc1_)
         {
            if(!this.§ !7§[this.§'!2§])
            {
               this.§<[§(_loc1_);
            }
            else
            {
               this.§>!'§ = this.§ !7§[this.§'!2§];
               this.play();
            }
         }
         else
         {
            mNextState = §=!S§.§,!+§;
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§+F§ = null;
         var _loc4_:MovieClip = null;
         §&X§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§6o§)
         {
            this.end();
            return §-x§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§7w§ && §'S§.§1M§(§5!#§.§'D§))
         {
            §&X§.getItemByName("Button_Menu").setVisibility(true);
            _loc3_ = §&X§.getItemByName("Button_Skip") as §+F§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = true;
         }
         else if(!§'S§.§1M§(§5!#§.§'D§))
         {
            §&X§.getItemByName("Button_Menu").setVisibility(false);
            §&X§.getItemByName("Button_Skip").setVisibility(true);
            _loc3_ = §&X§.getItemByName("Button_Skip") as §+F§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         else
         {
            _loc3_ = §&X§.getItemByName("Button_Skip") as §+F§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         this.§8!,§(§&X§.getItemByName("MovieClip_CutScene") as §=!6§,param1);
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      private function §8!,§(param1:§=!6§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§3!-§ && param1.§]!K§ == true)
         {
            _loc3_ = param1.§]=§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§]!K§ = false;
            }
         }
      }
      
      private function play() : void
      {
         §&!P§();
         this.§3!-§ = true;
         §&X§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§>!'§);
         (§&X§.getItemByName("MovieClip_CutScene") as §=!6§).§%?§("Start");
         §&X§.getItemByName("MovieClip_Loading").setVisibility(false);
         §&X§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§&X§.getItemByName("MovieClip_CutScene") as §=!6§).§]!K§ = true;
      }
      
      private function end() : void
      {
         §-m§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&X§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §&X§.getItemByName("MovieClip_Loading").setVisibility(false);
         §&X§.getItemByName("Button_Skip").setVisibility(false);
         §&X§.getItemByName("Button_Menu").setVisibility(false);
         if(this.§?W§)
         {
            this.§?W§.dispose();
            this.§?W§.removeEventListener(§=!;§.§"!C§,this.§>!8§);
            this.§?W§.removeEventListener(§=!;§.§ !8§,this.§3!D§);
            this.§?W§.removeEventListener(§=!;§.§07§,this.§<;§);
            this.§?W§ = null;
         }
         §8!W§.§=X§.§!6§(true);
         §5!#§.§-!E§ = null;
         §7w§ = false;
         (§&X§.getItemByName("MovieClip_CutScene") as §=!6§).§%?§("Start");
         §5!#§.§-!E§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§6o§ = true;
               if(§'S§.§1M§(§5!#§.§'D§))
               {
                  mNextState = §=!S§.§,!+§;
               }
               else
               {
                  §-m§();
                  mNextState = §]!4§.§,!+§;
               }
               break;
            case "MENU":
               §-m§();
               mNextState = §=f§.§,!+§;
         }
      }
      
      private function §<[§(param1:String) : void
      {
         this.§?W§ = new §7!<§();
         this.§?W§.addEventListener(§=!;§.§"!C§,this.§>!8§);
         this.§?W§.addEventListener(§=!;§.§ !8§,this.§3!D§);
         this.§?W§.addEventListener(§=!;§.§07§,this.§<;§);
         if(!this.§?W§.load(§#Y§ + param1))
         {
            this.end();
         }
      }
      
      private function §>!8§(param1:§=!;§) : void
      {
         this.§ !7§[this.§'!2§] = this.§?W§.content;
         this.§>!'§ = this.§ !7§[this.§'!2§];
         this.play();
      }
      
      private function §3!D§(param1:§=!;§) : void
      {
         this.end();
      }
      
      private function §<;§(param1:§=!;§) : void
      {
         §&X§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      private function §5!8§() : String
      {
         this.§'!2§ = §5!#§.§-!E§;
         if(this.§'!2§ == null)
         {
            this.§'!2§ = §5!#§.§'D§;
         }
         if(§7w§)
         {
            this.§'!2§ += "-INTRO";
         }
         else
         {
            this.§'!2§ += "-OUTRO";
         }
         return §5!#§.§%!H§().§"!#§(this.§'!2§);
      }
   }
}
