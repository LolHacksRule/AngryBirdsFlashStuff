package §,!?§
{
   import §"!S§.§"_§;
   import §-!O§.§7'§;
   import §1E§.§2^§;
   import §;!<§.§<!&§;
   import §;!<§.§<!D§;
   import §>8§.§?2§;
   import §]!&§.§#?§;
   import §]!&§.§0!Q§;
   import §]!5§.§-!3§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   import §^!!§.§'!_§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends §7'§
   {
      
      public static const §@B§:String = "StateCutSceneDynamic";
      
      private static const §5n§:Number = 2000;
      
      private static var §#1§:Boolean = true;
      
      private static const §4-§:String = "flash/external_assets/dynamic/";
       
      
      private var §]L§:Boolean;
      
      private var §^t§:Dictionary;
      
      private var §&j§:String;
      
      private var §&U§:§<!D§ = null;
      
      private var §!!a§:MovieClip = null;
      
      private var §6!0§:Boolean = false;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function §super§() : void
      {
         if(§2^§.§6m§("Channel_Theme") == null || !§2^§.§6m§("Channel_Theme").§"U§())
         {
            §2^§.§ !C§("birds_intro","Channel_Theme",1);
         }
      }
      
      public static function §7!-§() : void
      {
         if(§2^§.§6m§("Channel_Theme"))
         {
            §2^§.§6m§("Channel_Theme").§ !]§();
         }
      }
      
      public static function set §21§(param1:Boolean) : void
      {
         §#1§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_CutScene[0]);
         this.§^t§ = new Dictionary();
      }
      
      override public function activate() : void
      {
         var _loc2_:§#?§ = null;
         var _loc3_:MovieClip = null;
         super.activate();
         if(!§#1§ && §'!_§.§7I§(§?2§.§=$§))
         {
            §??§.getItemByName("Button_Menu").setVisibility(true);
            _loc2_ = §??§.getItemByName("Button_Skip") as §#?§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = true;
         }
         else if(!§'!_§.§7I§(§?2§.§=$§))
         {
            §??§.getItemByName("Button_Menu").setVisibility(false);
            §??§.getItemByName("Button_Skip").setVisibility(true);
            _loc2_ = §??§.getItemByName("Button_Skip") as §#?§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         else
         {
            _loc2_ = §??§.getItemByName("Button_Skip") as §#?§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         this.§6!0§ = false;
         §2!-§.§9!C§();
         this.§]L§ = false;
         var _loc1_:String = this.§+!O§();
         if(_loc1_)
         {
            if(!this.§^t§[this.§&j§])
            {
               this.§<C§(_loc1_);
            }
            else
            {
               this.§!!a§ = this.§^t§[this.§&j§];
               this.play();
            }
         }
         else
         {
            mNextState = §0T§.§@B§;
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§#?§ = null;
         var _loc4_:MovieClip = null;
         §??§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§]L§)
         {
            this.end();
            return §7'§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§#1§ && §'!_§.§7I§(§?2§.§=$§))
         {
            §??§.getItemByName("Button_Menu").setVisibility(true);
            _loc3_ = §??§.getItemByName("Button_Skip") as §#?§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = true;
         }
         else if(!§'!_§.§7I§(§?2§.§=$§))
         {
            §??§.getItemByName("Button_Menu").setVisibility(false);
            §??§.getItemByName("Button_Skip").setVisibility(true);
            _loc3_ = §??§.getItemByName("Button_Skip") as §#?§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         else
         {
            _loc3_ = §??§.getItemByName("Button_Skip") as §#?§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         this.§,!4§(§??§.getItemByName("MovieClip_CutScene") as §0!Q§,param1);
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      private function §,!4§(param1:§0!Q§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§6!0§ && param1.§"U§ == true)
         {
            _loc3_ = param1.§]a§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§"U§ = false;
            }
         }
      }
      
      private function play() : void
      {
         §super§();
         this.§6!0§ = true;
         §??§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§!!a§);
         (§??§.getItemByName("MovieClip_CutScene") as §0!Q§).§`Q§("Start");
         §??§.getItemByName("MovieClip_Loading").setVisibility(false);
         §??§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§??§.getItemByName("MovieClip_CutScene") as §0!Q§).§"U§ = true;
      }
      
      private function end() : void
      {
         §7!-§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §??§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §??§.getItemByName("MovieClip_Loading").setVisibility(false);
         §??§.getItemByName("Button_Skip").setVisibility(false);
         §??§.getItemByName("Button_Menu").setVisibility(false);
         if(this.§&U§)
         {
            this.§&U§.dispose();
            this.§&U§.removeEventListener(§<!&§.§2X§,this.§0B§);
            this.§&U§.removeEventListener(§<!&§.§0-§,this.§,!S§);
            this.§&U§.removeEventListener(§<!&§.§8&§,this.§&y§);
            this.§&U§ = null;
         }
         §"_§.§+!^§.§+Y§(true);
         §?2§.§?@§ = null;
         §#1§ = false;
         (§??§.getItemByName("MovieClip_CutScene") as §0!Q§).§`Q§("Start");
         §?2§.§?@§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§]L§ = true;
               if(§'!_§.§7I§(§?2§.§=$§))
               {
                  mNextState = §0T§.§@B§;
               }
               else
               {
                  §7!-§();
                  mNextState = §]R§.§@B§;
               }
               break;
            case "MENU":
               §7!-§();
               mNextState = §&c§.§@B§;
         }
      }
      
      private function §<C§(param1:String) : void
      {
         this.§&U§ = new §<!D§();
         this.§&U§.addEventListener(§<!&§.§2X§,this.§0B§);
         this.§&U§.addEventListener(§<!&§.§0-§,this.§,!S§);
         this.§&U§.addEventListener(§<!&§.§8&§,this.§&y§);
         if(!this.§&U§.load(§4-§ + param1))
         {
            this.end();
         }
      }
      
      private function §0B§(param1:§<!&§) : void
      {
         this.§^t§[this.§&j§] = this.§&U§.content;
         this.§!!a§ = this.§^t§[this.§&j§];
         this.play();
      }
      
      private function §,!S§(param1:§<!&§) : void
      {
         this.end();
      }
      
      private function §&y§(param1:§<!&§) : void
      {
         §??§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      private function §+!O§() : String
      {
         this.§&j§ = §?2§.§?@§;
         if(this.§&j§ == null)
         {
            this.§&j§ = §?2§.§=$§;
         }
         if(§#1§)
         {
            this.§&j§ += "-INTRO";
         }
         else
         {
            this.§&j§ += "-OUTRO";
         }
         return §?2§.§@D§().§5y§(this.§&j§);
      }
   }
}
