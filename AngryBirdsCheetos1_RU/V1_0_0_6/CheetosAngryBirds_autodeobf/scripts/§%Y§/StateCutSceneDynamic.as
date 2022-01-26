package §%Y§
{
   import §#!<§.§8!3§;
   import §'!N§.§9!O§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §2>§.§?!1§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §;[§.§7!F§;
   import §;[§.§]O§;
   import §=@§.§ G§;
   import §=@§.§`A§;
   import §]m§.§-D§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends §-D§
   {
      
      public static const §7!Q§:String = "StateCutSceneDynamic";
      
      private static const §`D§:Number = 2000;
      
      private static var §]!8§:Boolean = true;
      
      private static const §"`§:String = "flash/external_assets/dynamic/";
       
      
      private var §,!§:Boolean;
      
      private var §^X§:Dictionary;
      
      private var §-N§:String;
      
      private var § !#§:§ G§ = null;
      
      private var §4!@§:MovieClip = null;
      
      private var §[K§:Boolean = false;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function §;3§() : void
      {
         if(§?!1§.§,W§("Channel_Theme") == null || !§?!1§.§,W§("Channel_Theme").§'!S§())
         {
            §?!1§.§0!O§("birds_intro","Channel_Theme",100);
         }
      }
      
      public static function §;A§() : void
      {
         if(§?!1§.§,W§("Channel_Theme"))
         {
            §?!1§.§,W§("Channel_Theme").§>a§();
         }
      }
      
      public static function set §&!&§(param1:Boolean) : void
      {
         §]!8§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_CutScene[0]);
         this.§^X§ = new Dictionary();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§[K§ = false;
         §1R§.§7d§();
         this.§,!§ = false;
         var _loc1_:String = this.§6l§();
         if(_loc1_)
         {
            if(!this.§^X§[this.§-N§])
            {
               this.§>Q§(_loc1_);
            }
            else
            {
               this.§4!@§ = this.§^X§[this.§-N§];
               this.play();
            }
         }
         else
         {
            mNextState = §2O§.§7!Q§;
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§7!F§ = null;
         var _loc4_:MovieClip = null;
         §>#§.getItemByName("Button_Skip").setVisibility(true);
         if(!§]!8§)
         {
            §>#§.getItemByName("Button_Menu").setVisibility(true);
            _loc3_ = §>#§.getItemByName("Button_Skip") as §7!F§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = true;
         }
         else
         {
            _loc3_ = §>#§.getItemByName("Button_Skip") as §7!F§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         if(this.§,!§)
         {
            this.end();
            return §-D§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§8!R§(§>#§.getItemByName("MovieClip_CutScene") as §]O§,param1);
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      private function §8!R§(param1:§]O§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§[K§ && param1.§'!S§ == true)
         {
            _loc3_ = param1.§4W§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§'!S§ = false;
            }
         }
      }
      
      private function play() : void
      {
         §;3§();
         this.§[K§ = true;
         §>#§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§4!@§);
         (§>#§.getItemByName("MovieClip_CutScene") as §]O§).§1!"§("Start");
         §>#§.getItemByName("MovieClip_Loading").setVisibility(false);
         §>#§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§>#§.getItemByName("MovieClip_CutScene") as §]O§).§'!S§ = true;
      }
      
      private function end() : void
      {
         §;A§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §>#§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §>#§.getItemByName("MovieClip_Loading").setVisibility(false);
         §>#§.getItemByName("Button_Skip").setVisibility(false);
         §>#§.getItemByName("Button_Menu").setVisibility(false);
         if(this.§ !#§)
         {
            this.§ !#§.dispose();
            this.§ !#§.removeEventListener(§`A§.§;'§,this.§#@§);
            this.§ !#§.removeEventListener(§`A§.§!!M§,this.§#E§);
            this.§ !#§.removeEventListener(§`A§.§7!P§,this.§^7§);
            this.§ !#§ = null;
         }
         §@!Q§.§7l§.§9<§(true);
         §7M§.§4p§ = null;
         §]!8§ = false;
         (§>#§.getItemByName("MovieClip_CutScene") as §]O§).§1!"§("Start");
         §7M§.§4p§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§,!§ = true;
               if(§8!3§.§[h§(§7M§.§9-§))
               {
                  mNextState = §2O§.§7!Q§;
               }
               else
               {
                  mNextState = §@4§.§7!Q§;
               }
               break;
            case "MENU":
               mNextState = §@4§.§7!Q§;
         }
      }
      
      private function §>Q§(param1:String) : void
      {
         this.§ !#§ = new § G§();
         this.§ !#§.addEventListener(§`A§.§;'§,this.§#@§);
         this.§ !#§.addEventListener(§`A§.§!!M§,this.§#E§);
         this.§ !#§.addEventListener(§`A§.§7!P§,this.§^7§);
         if(!this.§ !#§.load(§"`§ + param1))
         {
            this.end();
         }
      }
      
      private function §#@§(param1:§`A§) : void
      {
         this.§^X§[this.§-N§] = this.§ !#§.content;
         this.§4!@§ = this.§^X§[this.§-N§];
         this.play();
      }
      
      private function §#E§(param1:§`A§) : void
      {
         this.end();
      }
      
      private function §^7§(param1:§`A§) : void
      {
         §>#§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      private function §6l§() : String
      {
         this.§-N§ = §7M§.§4p§;
         if(this.§-N§ == null)
         {
            this.§-N§ = §7M§.§9-§;
         }
         if(§]!8§)
         {
            this.§-N§ += "-INTRO";
         }
         else
         {
            this.§-N§ += "-OUTRO";
         }
         return §7M§.§>! §().§`M§(this.§-N§);
      }
   }
}
