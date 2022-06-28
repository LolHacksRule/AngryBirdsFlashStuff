package §0o§
{
   import § !k§.§%N§;
   import § !k§.§%]§;
   import § !k§.§'!4§;
   import § !k§.StatePlay;
   import § !x§.§4F§;
   import §!!§.LevelManager;
   import §&!h§.§"[§;
   import §&!h§.§]V§;
   import §+&§.§-!7§;
   import §+k§.§>t§;
   import §,!<§.§3Q§;
   import §-2§.§=!Q§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §2!!§.§@!G§;
   import §5i§.§4!]§;
   import §8!G§.§"D§;
   import §8,§.§+_§;
   import §9!Q§.§&!a§;
   import §9!Q§.§7o§;
   import §9!Q§.§each §;
   import §=R§.§7!"§;
   import §@4§.§,!]§;
   import §`M§.§&!G§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §>Z§ extends StatePlay
   {
      
      private static const §&!n§:Number = -5 * 1000;
      
      private static const §+!v§:Number = 10 * 1000;
      
      public static const §"1§:int = 50;
      
      public static var §[!1§:String;
       
      
      private var §],§:Number = -5000.0;
      
      private var §"3§:int = 0;
      
      private var §,$§:Number = 0;
      
      private var §@!J§:Number = 0;
      
      private var §>H§:Number;
      
      protected var §<§:§>t§;
      
      private var §6O§:§=!Q§;
      
      private var §&!9§:Boolean = false;
      
      private var §;!R§:Boolean = false;
      
      private var §<!4§:§&!a§;
      
      public function §>Z§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§-!7§) : §@!G§
      {
         return new §3Q§(param1);
      }
      
      protected function §,%§() : void
      {
         this.§<§ = §[!m§.§8!C§.§"I§(LevelManager.§,m§(LevelManager.§^!F§).name,LevelManager.§^!F§);
      }
      
      protected function §8!<§() : void
      {
         (§4!]§.§7!G§ as §[!m§).§ _§(LevelManager.§^!F§,this.§<§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §]V§.§8![§(§"[§.§%b§,LevelManager.§^!F§);
         this.§,%§();
         this.§8!<§();
         this.§6O§.levelStarted(this.§<§,LevelManager.§^!F§);
         this.§&!9§ = false;
         this.§;!R§ = false;
         § !a§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§6O§.activate();
         if(this.§&!9§)
         {
            § !a§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
         }
         §`-§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§>H§ = 2500;
         (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§4!3§);
         this.§1`§();
         §each §.§5!b§(§`-§);
      }
      
      override public function init() : void
      {
         §[!?§ = true;
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_FacebookLevelPlay[0]);
         this.§6O§ = new §=!Q§(§`-§);
         §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
         §&e§();
      }
      
      private function §`O§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§<§.data)
         {
            if(_loc2_.u == param1)
            {
               if(_loc2_.a)
               {
                  return _loc2_.a;
               }
            }
         }
         return null;
      }
      
      private function §[-§(param1:int) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.toString();
         var _loc3_:Array = [];
         if(_loc2_.length % 3 > 0)
         {
            _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
            _loc2_ = _loc2_.slice(_loc2_.length % 3);
         }
         while(_loc2_.length > 0)
         {
            _loc3_.push(_loc2_.substr(0,3));
            _loc2_ = _loc2_.substr(3);
         }
         for each(_loc4_ in _loc3_)
         {
            _loc2_ += _loc4_ + ",";
         }
         return _loc2_.substr(0,_loc2_.length - 1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(!AngryBirdsFP11.§2!y§)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.M:
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§each §.isOpen || §7o§.§`!h§())
         {
            return §+_§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§6O§.run(param1);
         this.§-!U§(param1);
         if(!§4!]§.§8C§.objects.mSardineCanAdded)
         {
            this.§2%§(param1);
         }
         if(mNextState == §%N§.§3F§)
         {
            if(!this.§&!9§)
            {
               § !a§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
               this.§&!9§ = true;
            }
            if(_loc2_ || this.§;!R§)
            {
               this.§>H§ -= param1;
               if(this.§>H§ < 0 || this.§;!R§)
               {
                  return §+_§.STATE_STATUS_COMPLETED;
               }
            }
         }
         else
         {
            if(mNextState == §'!4§.§3F§)
            {
               return §+_§.STATE_STATUS_COMPLETED;
            }
            if(mNextState)
            {
               return §+_§.STATE_STATUS_COMPLETED;
            }
         }
         var _loc3_:int = super.run(param1);
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      private function §3!w§(param1:MouseEvent) : void
      {
         this.§;!R§ = true;
         § !a§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§^!F§;
         var _loc2_:int = § !a§.getScore();
         §]V§.§8![§(§"[§.§,!q§,_loc1_,_loc2_);
         var _loc3_:Array = (§4!]§.§8C§ as §"D§).§>!;§();
         §]V§.§9!$§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         switch(param2)
         {
            case "showTutorial":
               §each §.§%!S§(§`-§,"ALL",true);
               §each §.§5!b§(§`-§,true);
               break;
            case "PAUSE":
               mNextState = §2!u§();
               break;
            case "RESTART_LEVEL":
               §%]§.§=>§();
               mNextState = §%]§.§3F§;
               break;
            case "CLOSE_TUTORIAL":
               §each §.§]!U§();
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §each §.§]!U§();
               break;
            case "ZOOM_IN":
               § !a§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               § !a§.doUserZoom(false);
         }
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§6O§.§;§ = false;
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function prepareHideMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override protected function onHideMightyEagle() : void
      {
      }
      
      override protected function useMightyEagle() : void
      {
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         super.updateCurrentScore(param1);
         var _loc2_:int = § !a§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§^!F§);
         var _loc4_:int;
         if((_loc4_ = §<+§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§<+§.getValue() + param1 * §"1§);
            §<+§.assign(_loc4_);
         }
         this.§6O§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      private function §2%§(param1:Number) : void
      {
         if((§`-§.getItemByName("MovieClip_Boom") as §&!G§).§5v§() == "End")
         {
            §`-§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§`-§.getItemByName("MovieClip_Boom") as §&!G§).§#!q§("Start");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§6O§.deActivate();
         § !a§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!w§);
         §4!]§.§8C§.§[1§();
         this.§&Y§();
         this.§1`§();
      }
      
      private function §&Y§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§],§ > §+!v§)
         {
            _loc1_ = Math.round(1000 / this.§],§ * this.§"3§);
            _loc2_ = LevelManager.§^!F§;
            _loc3_ = (§4!]§.§7!G§ as §[!m§).§[k§();
            §]V§.§6!Y§(_loc1_,_loc2_,§,!]§.§,?§,_loc3_);
         }
      }
      
      private function §-!U§(param1:Number) : void
      {
         this.§],§ += param1;
         if(this.§],§ > 0)
         {
            ++this.§"3§;
         }
         if(this.§,$§ != §4!]§.§-m§() || this.§@!J§ != §4!]§.§@!6§())
         {
            this.§1`§();
         }
      }
      
      private function §1`§() : void
      {
         this.§],§ = §&!n§;
         this.§"3§ = 0;
         this.§,$§ = §4!]§.§-m§();
         this.§@!J§ = §4!]§.§@!6§();
      }
      
      private function §!!F§(param1:§4F§) : void
      {
         if(param1)
         {
            param1.§;h§();
         }
      }
   }
}
