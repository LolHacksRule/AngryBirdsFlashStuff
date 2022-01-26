package §2!C§
{
   import §!$§.§!!O§;
   import §&h§.§+Y§;
   import §2K§.§ 3§;
   import §2K§.§,d§;
   import §3!8§.§&!,§;
   import §3!8§.§?d§;
   import §39§.§-W§;
   import §6!K§.§#![§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §[p§.§"w§;
   import §^Q§.§,^§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends §+Y§
   {
      
      public static const §+!a§:String = "StateCutSceneDynamic";
      
      private static const §=3§:Number = 2000;
      
      private static var §9^§:Boolean = true;
      
      private static const §9!Y§:String = "flash/external_assets/dynamic/";
       
      
      private var §0t§:Boolean;
      
      private var §'p§:Dictionary;
      
      private var §#!E§:String;
      
      private var §@5§:§&!,§ = null;
      
      private var §+! §:MovieClip = null;
      
      private var §'=§:Boolean = false;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function §8s§() : void
      {
         if(§!!O§.§@!9§("Channel_Theme") == null || !§!!O§.§@!9§("Channel_Theme").§6G§())
         {
            §!!O§.§<D§("birds_intro","Channel_Theme",1);
         }
      }
      
      public static function §#!I§() : void
      {
         if(§!!O§.§@!9§("Channel_Theme"))
         {
            §!!O§.§@!9§("Channel_Theme").§+"§();
         }
      }
      
      public static function set §+!F§(param1:Boolean) : void
      {
         §9^§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_CutScene[0]);
         this.§'p§ = new Dictionary();
      }
      
      override public function activate() : void
      {
         var _loc2_:§ 3§ = null;
         var _loc3_:MovieClip = null;
         super.activate();
         if(!§9^§ && §"w§.§>!3§(§-W§.§,[§))
         {
            §?!?§.getItemByName("Button_Menu").setVisibility(true);
            _loc2_ = §?!?§.getItemByName("Button_Skip") as § 3§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = true;
         }
         else if(!§"w§.§>!3§(§-W§.§,[§))
         {
            §?!?§.getItemByName("Button_Menu").setVisibility(false);
            §?!?§.getItemByName("Button_Skip").setVisibility(true);
            _loc2_ = §?!?§.getItemByName("Button_Skip") as § 3§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         else
         {
            _loc2_ = §?!?§.getItemByName("Button_Skip") as § 3§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         this.§'=§ = false;
         §7d§.§@=§();
         this.§0t§ = false;
         var _loc1_:String = this.§;!V§();
         if(_loc1_)
         {
            if(!this.§'p§[this.§#!E§])
            {
               this.§4A§(_loc1_);
            }
            else
            {
               this.§+! § = this.§'p§[this.§#!E§];
               this.play();
            }
         }
         else
         {
            mNextState = §,!]§.§+!a§;
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§ 3§ = null;
         var _loc4_:MovieClip = null;
         §?!?§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§0t§)
         {
            this.end();
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§9^§ && §"w§.§>!3§(§-W§.§,[§))
         {
            §?!?§.getItemByName("Button_Menu").setVisibility(true);
            _loc3_ = §?!?§.getItemByName("Button_Skip") as § 3§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = true;
         }
         else if(!§"w§.§>!3§(§-W§.§,[§))
         {
            §?!?§.getItemByName("Button_Menu").setVisibility(false);
            §?!?§.getItemByName("Button_Skip").setVisibility(true);
            _loc3_ = §?!?§.getItemByName("Button_Skip") as § 3§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         else
         {
            _loc3_ = §?!?§.getItemByName("Button_Skip") as § 3§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         this.§8C§(§?!?§.getItemByName("MovieClip_CutScene") as §,d§,param1);
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      private function §8C§(param1:§,d§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§'=§ && param1.§6G§ == true)
         {
            _loc3_ = param1.§;!?§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§6G§ = false;
            }
         }
      }
      
      private function play() : void
      {
         §8s§();
         this.§'=§ = true;
         §?!?§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§+! §);
         (§?!?§.getItemByName("MovieClip_CutScene") as §,d§).§#!`§("Start");
         §?!?§.getItemByName("MovieClip_Loading").setVisibility(false);
         §?!?§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§?!?§.getItemByName("MovieClip_CutScene") as §,d§).§6G§ = true;
      }
      
      private function end() : void
      {
         §#!I§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?!?§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §?!?§.getItemByName("MovieClip_Loading").setVisibility(false);
         §?!?§.getItemByName("Button_Skip").setVisibility(false);
         §?!?§.getItemByName("Button_Menu").setVisibility(false);
         if(this.§@5§)
         {
            this.§@5§.dispose();
            this.§@5§.removeEventListener(§?d§.§[9§,this.§"D§);
            this.§@5§.removeEventListener(§?d§.§+W§,this.§#!§);
            this.§@5§.removeEventListener(§?d§.§1!`§,this.§,q§);
            this.§@5§ = null;
         }
         §,^§.§0K§.§@!_§(true);
         §-W§.§^6§ = null;
         §9^§ = false;
         (§?!?§.getItemByName("MovieClip_CutScene") as §,d§).§#!`§("Start");
         §-W§.§^6§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#![§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§0t§ = true;
               if(§"w§.§>!3§(§-W§.§,[§))
               {
                  mNextState = §,!]§.§+!a§;
               }
               else
               {
                  §#!I§();
                  mNextState = §?h§.§+!a§;
               }
               break;
            case "MENU":
               §#!I§();
               mNextState = §^w§.§+!a§;
         }
      }
      
      private function §4A§(param1:String) : void
      {
         this.§@5§ = new §&!,§();
         this.§@5§.addEventListener(§?d§.§[9§,this.§"D§);
         this.§@5§.addEventListener(§?d§.§+W§,this.§#!§);
         this.§@5§.addEventListener(§?d§.§1!`§,this.§,q§);
         if(!this.§@5§.load(§9!Y§ + param1))
         {
            this.end();
         }
      }
      
      private function §"D§(param1:§?d§) : void
      {
         this.§'p§[this.§#!E§] = this.§@5§.content;
         this.§+! § = this.§'p§[this.§#!E§];
         this.play();
      }
      
      private function §#!§(param1:§?d§) : void
      {
         this.end();
      }
      
      private function §,q§(param1:§?d§) : void
      {
         §?!?§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      private function §;!V§() : String
      {
         this.§#!E§ = §-W§.§^6§;
         if(this.§#!E§ == null)
         {
            this.§#!E§ = §-W§.§,[§;
         }
         if(§9^§)
         {
            this.§#!E§ += "-INTRO";
         }
         else
         {
            this.§#!E§ += "-OUTRO";
         }
         return §-W§.§7U§().§"!H§(this.§#!E§);
      }
   }
}
