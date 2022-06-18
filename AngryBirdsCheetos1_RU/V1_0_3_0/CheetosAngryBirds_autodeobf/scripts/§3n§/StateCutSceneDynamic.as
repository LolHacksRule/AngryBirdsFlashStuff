package §3n§
{
   import §#h§.§%o§;
   import §#h§.§>,§;
   import §+!^§.§'Y§;
   import §0L§.§&Y§;
   import §1Y§.§+$§;
   import §7!7§.§return§;
   import §7'§.§-!6§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §?>§.§!&§;
   import §?>§.§+&§;
   import §^9§.§[!L§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class StateCutSceneDynamic extends §+$§
   {
      
      public static const §,F§:String = "StateCutSceneDynamic";
      
      private static const §^l§:Number = 2000;
      
      private static var §&!R§:Boolean = true;
      
      private static const §6-§:String = "flash/external_assets/dynamic/";
       
      
      private var §6%§:Boolean;
      
      private var §46§:Dictionary;
      
      private var §3$§:String;
      
      private var §'!D§:§%o§ = null;
      
      private var §=1§:MovieClip = null;
      
      private var §%$§:Boolean = false;
      
      public function StateCutSceneDynamic(param1:Boolean, param2:String = "StateCutSceneDynamic")
      {
         super(param1,param2);
      }
      
      public static function §'K§() : void
      {
         if(§return§.§!!T§("Channel_Theme") == null || !§return§.§!!T§("Channel_Theme").§7`§())
         {
            §return§.§2!S§("birds_intro","Channel_Theme",1);
         }
      }
      
      public static function §&!7§() : void
      {
         if(§return§.§!!T§("Channel_Theme"))
         {
            §return§.§!!T§("Channel_Theme").§+r§();
         }
      }
      
      public static function set §<9§(param1:Boolean) : void
      {
         §&!R§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_CutScene[0]);
         this.§46§ = new Dictionary();
      }
      
      override public function activate() : void
      {
         var _loc2_:§!&§ = null;
         var _loc3_:MovieClip = null;
         super.activate();
         if(!§&!R§ && §&Y§.§'Z§(§[!L§.§^!X§))
         {
            §2!J§.getItemByName("Button_Menu").setVisibility(true);
            _loc2_ = §2!J§.getItemByName("Button_Skip") as §!&§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = true;
         }
         else if(!§&Y§.§'Z§(§[!L§.§^!X§))
         {
            §2!J§.getItemByName("Button_Menu").setVisibility(false);
            §2!J§.getItemByName("Button_Skip").setVisibility(true);
            _loc2_ = §2!J§.getItemByName("Button_Skip") as §!&§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         else
         {
            _loc2_ = §2!J§.getItemByName("Button_Skip") as §!&§;
            _loc3_ = _loc2_.mClip.MovieClip_CreditCoin as MovieClip;
            _loc3_.visible = false;
         }
         this.§%$§ = false;
         §7!^§.§]!9§();
         this.§6%§ = false;
         var _loc1_:String = this.§%y§();
         if(_loc1_)
         {
            if(!this.§46§[this.§3$§])
            {
               this.§![§(_loc1_);
            }
            else
            {
               this.§=1§ = this.§46§[this.§3$§];
               this.play();
            }
         }
         else
         {
            mNextState = §7!6§.§,F§;
            this.end();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§!&§ = null;
         var _loc4_:MovieClip = null;
         §2!J§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§6%§)
         {
            this.end();
            return §+$§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§&!R§ && §&Y§.§'Z§(§[!L§.§^!X§))
         {
            §2!J§.getItemByName("Button_Menu").setVisibility(true);
            _loc3_ = §2!J§.getItemByName("Button_Skip") as §!&§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = true;
         }
         else if(!§&Y§.§'Z§(§[!L§.§^!X§))
         {
            §2!J§.getItemByName("Button_Menu").setVisibility(false);
            §2!J§.getItemByName("Button_Skip").setVisibility(true);
            _loc3_ = §2!J§.getItemByName("Button_Skip") as §!&§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         else
         {
            _loc3_ = §2!J§.getItemByName("Button_Skip") as §!&§;
            (_loc4_ = _loc3_.mClip.MovieClip_CreditCoin as MovieClip).visible = false;
         }
         this.§<_§(§2!J§.getItemByName("MovieClip_CutScene") as §+&§,param1);
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      private function §<_§(param1:§+&§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(this.§%$§ && param1.§7`§ == true)
         {
            _loc3_ = param1.§5L§(param2 / 3);
            if(_loc3_ == "End")
            {
               param1.§7`§ = false;
            }
         }
      }
      
      private function play() : void
      {
         §'K§();
         this.§%$§ = true;
         §2!J§.getItemByName("MovieClip_CutScene").changeMovieClip(this.§=1§);
         (§2!J§.getItemByName("MovieClip_CutScene") as §+&§).§[!`§("Start");
         §2!J§.getItemByName("MovieClip_Loading").setVisibility(false);
         §2!J§.getItemByName("MovieClip_CutScene").setVisibility(true);
         (§2!J§.getItemByName("MovieClip_CutScene") as §+&§).§7`§ = true;
      }
      
      private function end() : void
      {
         §&!7§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §2!J§.getItemByName("MovieClip_CutScene").setVisibility(false);
         §2!J§.getItemByName("MovieClip_Loading").setVisibility(false);
         §2!J§.getItemByName("Button_Skip").setVisibility(false);
         §2!J§.getItemByName("Button_Menu").setVisibility(false);
         if(this.§'!D§)
         {
            this.§'!D§.dispose();
            this.§'!D§.removeEventListener(§>,§.§?!;§,this.§2<§);
            this.§'!D§.removeEventListener(§>,§.§'!]§,this.§1!S§);
            this.§'!D§.removeEventListener(§>,§.§6!S§,this.§ $§);
            this.§'!D§ = null;
         }
         §'Y§.§@j§.§]I§(true);
         §[!L§.§0h§ = null;
         §&!R§ = false;
         (§2!J§.getItemByName("MovieClip_CutScene") as §+&§).§[!`§("Start");
         §[!L§.§0h§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§6%§ = true;
               if(§&Y§.§'Z§(§[!L§.§^!X§))
               {
                  mNextState = §7!6§.§,F§;
               }
               else
               {
                  §&!7§();
                  mNextState = §8s§.§,F§;
               }
               break;
            case "MENU":
               §&!7§();
               mNextState = §-'§.§,F§;
         }
      }
      
      private function §![§(param1:String) : void
      {
         this.§'!D§ = new §%o§();
         this.§'!D§.addEventListener(§>,§.§?!;§,this.§2<§);
         this.§'!D§.addEventListener(§>,§.§'!]§,this.§1!S§);
         this.§'!D§.addEventListener(§>,§.§6!S§,this.§ $§);
         if(!this.§'!D§.load(§6-§ + param1))
         {
            this.end();
         }
      }
      
      private function §2<§(param1:§>,§) : void
      {
         this.§46§[this.§3$§] = this.§'!D§.content;
         this.§=1§ = this.§46§[this.§3$§];
         this.play();
      }
      
      private function §1!S§(param1:§>,§) : void
      {
         this.end();
      }
      
      private function § $§(param1:§>,§) : void
      {
         §2!J§.getItemByName("MovieClip_Loading").setVisibility(true);
      }
      
      private function §%y§() : String
      {
         this.§3$§ = §[!L§.§0h§;
         if(this.§3$§ == null)
         {
            this.§3$§ = §[!L§.§^!X§;
         }
         if(§&!R§)
         {
            this.§3$§ += "-INTRO";
         }
         else
         {
            this.§3$§ += "-OUTRO";
         }
         return §[!L§.§[8§().§9Z§(this.§3$§);
      }
   }
}
