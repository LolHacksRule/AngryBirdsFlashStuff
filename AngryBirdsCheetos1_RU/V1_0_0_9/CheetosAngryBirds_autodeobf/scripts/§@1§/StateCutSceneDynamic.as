package §@1§
{
   import §"!@§.§3!+§;
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §5!G§.§31§;
   import §7!U§.§2!7§;
   import §7f§.§,!>§;
   import §7f§.§=!1§;
   import §8!#§.§6G§;
   import §<!P§.§>l§;
   import §>!1§.§'!P§;
   import §>!1§.§[#§;
   import §^r§.§>`§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends §>l§
   {
      
      public static const §]U§:String = "StateCutSceneDynamic";
      
      private static const §"3§:Number = 2000;
      
      private static var §,!?§:Boolean = true;
      
      private static const §?z§:String = "flash/external_assets/dynamic/";
       
      
      private var §,!'§:Boolean;
      
      private var §3![§:Dictionary;
      
      private var §9G§:String;
      
      private var §9!7§:§'!P§ = null;
      
      private var §`]§:MovieClip = null;
      
      private var §=!%§:Boolean = false;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function §3!S§() : void
      {
         if(§31§.§9!H§("Channel_Theme") == null || !§31§.§9!H§("Channel_Theme").§]!_§())
         {
            §31§.§>%§("birds_intro","Channel_Theme",1);
         }
      }
      
      public static function §40§() : void
      {
         if(§31§.§9!H§("Channel_Theme"))
         {
            §31§.§9!H§("Channel_Theme").§55§();
         }
      }
      
      public static function set §0[§(param1:Boolean) : void
      {
         §,!?§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_CutScene[0]);
         this.§3![§ = new Dictionary();
      }
      
      override public function activate() : void
      {
         var _loc2_:§,!>§ = null;
         var _loc3_:MovieClip = null;
         super.activate();
         if(!§,!?§ && §6G§.§^!D§(§3!+§.§%2§))
         {
            §[B§.getItemByName("Button_Menu").setVisibility(true);
            _loc2_ = §[B§.getItemByName("Button_Skip") as §,!>§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = true;
         }
         else if(!§6G§.§^!D§(§3!+§.§%2§))
         {
            §[B§.getItemByName("Button_Menu").setVisibility(false);
            §[B§.getItemByName("Button_Skip").setVisibility(true);
            _loc2_ = §[B§.getItemByName("Button_Skip") as §,!>§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         else
         {
            _loc2_ = §[B§.getItemByName("Button_Skip") as §,!>§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         this.§=!%§ = false;
         §+§.§&!9§();
         this.§,!'§ = false;
         var _loc1_:String = this.§`u§();
         if(_loc1_)
         {
            if(!this.§3![§[this.§9G§])
            {
               this.§'!,§(_loc1_);
            }
            else
            {
               this.§`]§ = this.§3![§[this.§9G§];
               this.play();
            }
         }
         else
         {
            mNextState = §#!5§.§]U§;
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         §[B§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§,!'§)
         {
            this.end();
            return §>l§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§8!C§(§[B§.getItemByName("MovieClip_CutScene") as §=!1§,param1);
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      private function §8!C§(param1:§=!1§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§=!%§ && param1.§]!_§ == true)
         {
            _loc3_ = param1.§-L§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§]!_§ = false;
            }
         }
      }
      
      private function play() : void
      {
         §3!S§();
         this.§=!%§ = true;
         §[B§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§`]§);
         (§[B§.getItemByName("MovieClip_CutScene") as §=!1§).§&k§("Start");
         §[B§.getItemByName("MovieClip_Loading").setVisibility(false);
         §[B§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§[B§.getItemByName("MovieClip_CutScene") as §=!1§).§]!_§ = true;
      }
      
      private function end() : void
      {
         §40§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[B§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §[B§.getItemByName("MovieClip_Loading").setVisibility(false);
         §[B§.getItemByName("Button_Skip").setVisibility(false);
         §[B§.getItemByName("Button_Menu").setVisibility(false);
         if(this.§9!7§)
         {
            this.§9!7§.dispose();
            this.§9!7§.removeEventListener(§[#§.§;!+§,this.§]<§);
            this.§9!7§.removeEventListener(§[#§.§"1§,this.§79§);
            this.§9!7§.removeEventListener(§[#§.§[!'§,this.§87§);
            this.§9!7§ = null;
         }
         §2!7§.§5G§.§4h§(true);
         §3!+§.§&F§ = null;
         §,!?§ = false;
         (§[B§.getItemByName("MovieClip_CutScene") as §=!1§).§&k§("Start");
         §3!+§.§&F§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§,!'§ = true;
               if(§6G§.§^!D§(§3!+§.§%2§))
               {
                  mNextState = §#!5§.§]U§;
               }
               else
               {
                  §40§();
                  mNextState = §+s§.§]U§;
               }
               break;
            case "MENU":
               §40§();
               mNextState = §05§.§]U§;
         }
      }
      
      private function §'!,§(param1:String) : void
      {
         this.§9!7§ = new §'!P§();
         this.§9!7§.addEventListener(§[#§.§;!+§,this.§]<§);
         this.§9!7§.addEventListener(§[#§.§"1§,this.§79§);
         this.§9!7§.addEventListener(§[#§.§[!'§,this.§87§);
         if(!this.§9!7§.load(§?z§ + param1))
         {
            this.end();
         }
      }
      
      private function §]<§(param1:§[#§) : void
      {
         this.§3![§[this.§9G§] = this.§9!7§.content;
         this.§`]§ = this.§3![§[this.§9G§];
         this.play();
      }
      
      private function §79§(param1:§[#§) : void
      {
         this.end();
      }
      
      private function §87§(param1:§[#§) : void
      {
         §[B§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      private function §`u§() : String
      {
         this.§9G§ = §3!+§.§&F§;
         if(this.§9G§ == null)
         {
            this.§9G§ = §3!+§.§%2§;
         }
         if(§,!?§)
         {
            this.§9G§ += "-INTRO";
         }
         else
         {
            this.§9G§ += "-OUTRO";
         }
         return §3!+§.§#M§().§6!U§(this.§9G§);
      }
   }
}
