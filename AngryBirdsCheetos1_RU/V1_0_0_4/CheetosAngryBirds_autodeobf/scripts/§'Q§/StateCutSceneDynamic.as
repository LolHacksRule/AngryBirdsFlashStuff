package §'Q§
{
   import §!!S§.§^P§;
   import §3!M§.§&V§;
   import §4!R§.§@,§;
   import §6=§.§`!<§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §?!F§.§0!Y§;
   import §[I§.§,!L§;
   import §[I§.§^!B§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   
   public class StateCutSceneDynamic extends §0!Y§
   {
      
      public static const §1o§:String = "StateCutSceneDynamic";
      
      private static const §5!N§:Number = 2000;
      
      private static var §[s§:Boolean = true;
      
      private static const §"!#§:String = "flash/external_assets/dynamic/";
       
      
      private var §0!U§:Boolean;
      
      private var §6u§:Dictionary;
      
      private var §3<§:String;
      
      private var §7J§:§,!L§ = null;
      
      private var §-Y§:MovieClip = null;
      
      private var §?H§:Boolean = false;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function set §8>§(param1:Boolean) : void
      {
         §[s§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_CutScene[0]);
         this.§6u§ = new Dictionary();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§?H§ = false;
         §4+§.§?"§();
         this.§0!U§ = false;
         var _loc1_:String = this.§3!<§();
         if(_loc1_)
         {
            if(!this.§6u§[this.§3<§])
            {
               this.§2[§(_loc1_);
            }
            else
            {
               this.§-Y§ = this.§6u§[this.§3<§];
               this.play();
            }
         }
         else
         {
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         §2m§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§0!U§)
         {
            this.end();
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§9!7§(§2m§.getItemByName("MovieClip_CutScene") as §&V§,param1);
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      private function §9!7§(param1:§&V§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§?H§ && param1.§6F§ == true)
         {
            _loc3_ = param1.§[A§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§6F§ = false;
            }
         }
      }
      
      private function play() : void
      {
         this.§?H§ = true;
         §2m§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§-Y§);
         (§2m§.getItemByName("MovieClip_CutScene") as §&V§).§!<§("Start");
         §2m§.getItemByName("MovieClip_Loading").setVisibility(false);
         §2m§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§2m§.getItemByName("MovieClip_CutScene") as §&V§).§6F§ = true;
      }
      
      private function end() : void
      {
         var _loc1_:uint = 0;
         if(§@,§.§`n§(§<!,§.§1D§))
         {
            if(§@,§.credits <= 0 && (§<!,§.§1D§ == "1-4" || §<!,§.§1D§ == "1-5" || §<!,§.§1D§ == "1-6" || §<!,§.§1D§ == "1-7" || §<!,§.§1D§ == "1-8"))
            {
               _loc1_ = setTimeout(§=!R§.sCheetosPopups.showPopup,400,§`!<§.NO_CREDIT,"NO_CREDIT");
               mNextState = §@Q§.§1o§;
            }
            else
            {
               mNextState = §8!E§.§1o§;
            }
         }
         else
         {
            mNextState = §@Q§.§1o§;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §2m§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §2m§.getItemByName("MovieClip_Loading").setVisibility(false);
         §2m§.getItemByName("Button_Skip").setVisibility(false);
         if(this.§7J§)
         {
            this.§7J§.dispose();
            this.§7J§.removeEventListener(§^!B§.§%O§,this.§<w§);
            this.§7J§.removeEventListener(§^!B§.§+!R§,this.§#m§);
            this.§7J§.removeEventListener(§^!B§.§#8§,this.§!E§);
            this.§7J§ = null;
         }
         §7`§.§2'§.§5[§(true);
         §<!,§.§&_§ = null;
         §[s§ = false;
         (§2m§.getItemByName("MovieClip_CutScene") as §&V§).§!<§("Start");
         §<!,§.§&_§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§0!U§ = true;
         }
      }
      
      private function §2[§(param1:String) : void
      {
         this.§7J§ = new §,!L§();
         this.§7J§.addEventListener(§^!B§.§%O§,this.§<w§);
         this.§7J§.addEventListener(§^!B§.§+!R§,this.§#m§);
         this.§7J§.addEventListener(§^!B§.§#8§,this.§!E§);
         if(!this.§7J§.load(§"!#§ + param1))
         {
            this.end();
         }
      }
      
      private function §<w§(param1:§^!B§) : void
      {
         this.§6u§[this.§3<§] = this.§7J§.content;
         this.§-Y§ = this.§6u§[this.§3<§];
         this.play();
      }
      
      private function §#m§(param1:§^!B§) : void
      {
         this.end();
      }
      
      private function §!E§(param1:§^!B§) : void
      {
         §2m§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      private function §3!<§() : String
      {
         this.§3<§ = §<!,§.§&_§;
         if(this.§3<§ == null)
         {
            this.§3<§ = §<!,§.§1D§;
         }
         if(§[s§)
         {
            this.§3<§ += "-INTRO";
         }
         else
         {
            this.§3<§ += "-OUTRO";
         }
         return §<!,§.§7I§().§2=§(this.§3<§);
      }
   }
}
