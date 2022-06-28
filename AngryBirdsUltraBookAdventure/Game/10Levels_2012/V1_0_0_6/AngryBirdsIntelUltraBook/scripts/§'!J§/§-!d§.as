package §'!J§
{
   import §!!K§.§else§;
   import §!;§.§9p§;
   import §#!O§.§9-§;
   import §+0§.§,!E§;
   import §-%§.§+V§;
   import §1!E§.§1!=§;
   import §2!H§.§!q§;
   import §2_§.§'u§;
   import §3!G§.LevelManager;
   import §6!Y§.§0!x§;
   import §8!;§.§3;§;
   import §;H§.§#!G§;
   import §;H§.§%!D§;
   import §;H§.§;W§;
   import §;H§.StatePlay;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §?N§.§#!`§;
   import §?N§.§?1§;
   import §?N§.§]!e§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§%!M§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §-!d§ extends StatePlay
   {
      
      private static const § A§:Number = -5 * 1000;
      
      private static const §@r§:Number = 10 * 1000;
      
      public static const § ]§:int = 50;
      
      public static var §6![§:String;
       
      
      private var §"!8§:Number = -5000.0;
      
      private var §5<§:int = 0;
      
      private var §;!w§:Number = 0;
      
      private var §%C§:Number = 0;
      
      private var §'&§:Number;
      
      protected var §@e§:§0!x§;
      
      private var §2!f§:§3;§;
      
      private var §+Z§:Boolean = false;
      
      private var §^L§:Boolean = false;
      
      private var §&1§:§?1§;
      
      public function §-!d§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§'u§) : §+V§
      {
         return new §9p§(param1);
      }
      
      protected function §;v§() : void
      {
         this.§@e§ = §[!P§.§>#§.§]!q§(LevelManager.§1H§(LevelManager.§%n§).name,LevelManager.§%n§);
      }
      
      protected function §3!-§() : void
      {
         (§^!c§.§2!w§ as §[!P§).§;! §(LevelManager.§%n§,this.§@e§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §@!J§.§[!G§(§%!M§.§4U§,LevelManager.§%n§);
         this.§;v§();
         this.§3!-§();
         this.§2!f§.levelStarted(this.§@e§,LevelManager.§%n§);
         this.§+Z§ = false;
         this.§^L§ = false;
         §[!D§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2!f§.activate();
         if(this.§+Z§)
         {
            §[!D§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
         }
         §&!m§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§'&§ = 2500;
         (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§2a§);
         this.§'!T§();
         §#!`§.§+!q§(§&!m§);
      }
      
      override public function init() : void
      {
         §?C§ = true;
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_FacebookLevelPlay[0]);
         this.§2!f§ = new §3;§(§&!m§);
         §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
         §;!j§();
      }
      
      private function §5!P§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§@e§.data)
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
      
      private function §&!s§(param1:int) : String
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
         if(!AngryBirdsFP11.§@a§)
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
         if(§#!`§.isOpen || §]!e§.§`!V§())
         {
            return §,!E§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§2!f§.run(param1);
         this.§1!G§(param1);
         if(!§^!c§.§5!Y§.objects.mSardineCanAdded)
         {
            this.§+I§(param1);
         }
         if(mNextState == §%!D§.§"!s§)
         {
            if(!this.§+Z§)
            {
               §[!D§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
               this.§+Z§ = true;
            }
            if(_loc2_ || this.§^L§)
            {
               this.§'&§ -= param1;
               if(this.§'&§ < 0 || this.§^L§)
               {
                  return §,!E§.STATE_STATUS_COMPLETED;
               }
            }
         }
         else
         {
            if(mNextState == §#!G§.§"!s§)
            {
               return §,!E§.STATE_STATUS_COMPLETED;
            }
            if(mNextState)
            {
               return §,!E§.STATE_STATUS_COMPLETED;
            }
         }
         var _loc3_:int = super.run(param1);
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      private function §`!d§(param1:MouseEvent) : void
      {
         this.§^L§ = true;
         §[!D§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§%n§;
         var _loc2_:int = §[!D§.getScore();
         §@!J§.§[!G§(§%!M§.§]-§,_loc1_,_loc2_);
         var _loc3_:Array = (§^!c§.§5!Y§ as §9-§).§=!$§();
         §@!J§.§+k§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         switch(param2)
         {
            case "showTutorial":
               §#!`§.§]y§(§&!m§,"ALL",true);
               §#!`§.§+!q§(§&!m§,true);
               break;
            case "PAUSE":
               mNextState = §"1§();
               break;
            case "RESTART_LEVEL":
               §;W§.§&!5§();
               mNextState = §;W§.§"!s§;
               break;
            case "CLOSE_TUTORIAL":
               §#!`§.§<z§();
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §#!`§.§<z§();
               break;
            case "ZOOM_IN":
               §[!D§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §[!D§.doUserZoom(false);
         }
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§2!f§.§%O§ = false;
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
         var _loc2_:int = §[!D§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§%n§);
         var _loc4_:int;
         if((_loc4_ = §#!n§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§#!n§.getValue() + param1 * § ]§);
            §#!n§.assign(_loc4_);
         }
         this.§2!f§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      private function §+I§(param1:Number) : void
      {
         if((§&!m§.getItemByName("MovieClip_Boom") as §1!=§).§%U§() == "End")
         {
            §&!m§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§&!m§.getItemByName("MovieClip_Boom") as §1!=§).§&!3§("Start");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§2!f§.deActivate();
         §[!D§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!d§);
         §^!c§.§5!Y§.§"!d§();
         this.§4e§();
         this.§'!T§();
      }
      
      private function §4e§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§"!8§ > §@r§)
         {
            _loc1_ = Math.round(1000 / this.§"!8§ * this.§5<§);
            _loc2_ = LevelManager.§%n§;
            _loc3_ = (§^!c§.§2!w§ as §[!P§).§`m§();
            §@!J§.§8!z§(_loc1_,_loc2_,§else§.§@g§,_loc3_);
         }
      }
      
      private function §1!G§(param1:Number) : void
      {
         this.§"!8§ += param1;
         if(this.§"!8§ > 0)
         {
            ++this.§5<§;
         }
         if(this.§;!w§ != §^!c§.§`!F§() || this.§%C§ != §^!c§.§8&§())
         {
            this.§'!T§();
         }
      }
      
      private function §'!T§() : void
      {
         this.§"!8§ = § A§;
         this.§5<§ = 0;
         this.§;!w§ = §^!c§.§`!F§();
         this.§%C§ = §^!c§.§8&§();
      }
      
      private function §9!S§(param1:§!q§) : void
      {
         if(param1)
         {
            param1.§9!l§();
         }
      }
   }
}
