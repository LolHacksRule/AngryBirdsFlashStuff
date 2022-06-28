package §40§
{
   import §"m§.§`!=§;
   import §,!5§.§^g§;
   import §,m§.§'=§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §0X§.§'W§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §57§.§4!Z§;
   import §7=§.§ null§;
   import §8u§.§9=§;
   import §9!5§.§#!c§;
   import §9!5§.§'!>§;
   import §9!5§.§17§;
   import §9!5§.StatePlay;
   import §9!y§.§%g§;
   import §9!y§.§5V§;
   import §9!y§.§@M§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §<&§.§^b§;
   import §?!7§.§[I§;
   import §@N§.§2w§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import §true§.§ _§;
   
   public class §-!,§ extends StatePlay
   {
      
      private static const §#d§:Number = -5 * 1000;
      
      private static const §2!=§:Number = 10 * 1000;
      
      public static const §%B§:int = 50;
      
      public static var §[l§:String;
       
      
      private var §;!$§:Number = -5000.0;
      
      private var §"!a§:int = 0;
      
      private var §`!`§:Number = 0;
      
      private var §;?§:Number = 0;
      
      private var §8S§:Number;
      
      protected var §<!3§:§9=§;
      
      private var §@!N§:§ null§;
      
      private var §]e§:Boolean = false;
      
      private var §'y§:Boolean = false;
      
      private var §#!3§:§%g§;
      
      public function §-!,§(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override protected function getGameLogicController(param1:§^g§) : §`!=§
      {
         return new §'=§(param1);
      }
      
      protected function §4!8§() : void
      {
         this.§<!3§ = §@!9§.§;0§.§8!6§(LevelManager.§2!9§(LevelManager.§4Y§).name,LevelManager.§4Y§);
      }
      
      protected function §[R§() : void
      {
         (§ _§.§1s§ as §@!9§).§>!+§(LevelManager.§4Y§,this.§<!3§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §'N§.§var §(§'W§.§9!e§,LevelManager.§4Y§);
         this.§4!8§();
         this.§[R§();
         this.§@!N§.levelStarted(this.§<!3§,LevelManager.§4Y§);
         this.§]e§ = false;
         this.§'y§ = false;
         §%!q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@!N§.activate();
         if(this.§]e§)
         {
            §%!q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
         }
         §5!P§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§8S§ = 2500;
         (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§^!_§);
         this.§0^§();
         §5V§.§>!4§(§5!P§);
      }
      
      override public function init() : void
      {
         §<"§ = true;
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_FacebookLevelPlay[0]);
         this.§@!N§ = new § null§(§5!P§);
         §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
         §1!n§();
      }
      
      private function §,!%§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§<!3§.data)
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
      
      private function §1!5§(param1:int) : String
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
         if(!AngryBirdsFP11.§[!d§)
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
         if(§5V§.isOpen || §@M§.§6w§())
         {
            return §?Y§.STATE_STATUS_RUNNING;
         }
         var _loc2_:Boolean = this.§@!N§.run(param1);
         this.§<!u§(param1);
         if(!§ _§.§!6§.objects.mSardineCanAdded)
         {
            this.§2@§(param1);
         }
         if(mNextState == §'!>§.§?h§)
         {
            if(!this.§]e§)
            {
               §%!q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
               this.§]e§ = true;
            }
            if(_loc2_ || this.§'y§)
            {
               this.§8S§ -= param1;
               if(this.§8S§ < 0 || this.§'y§)
               {
                  return §?Y§.STATE_STATUS_COMPLETED;
               }
            }
         }
         else
         {
            if(mNextState == §17§.§?h§)
            {
               return §?Y§.STATE_STATUS_COMPLETED;
            }
            if(mNextState)
            {
               return §?Y§.STATE_STATUS_COMPLETED;
            }
         }
         var _loc3_:int = super.run(param1);
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      private function §4§(param1:MouseEvent) : void
      {
         this.§'y§ = true;
         §%!q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = LevelManager.§4Y§;
         var _loc2_:int = §%!q§.getScore();
         §'N§.§var §(§'W§.§`q§,_loc1_,_loc2_);
         var _loc3_:Array = (§ _§.§!6§ as §2w§).§&!y§();
         §'N§.§,!y§(_loc3_,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         switch(param2)
         {
            case "showTutorial":
               §5V§.§%!w§(§5!P§,"ALL",true);
               §5V§.§>!4§(§5!P§,true);
               break;
            case "PAUSE":
               mNextState = §"!U§();
               break;
            case "RESTART_LEVEL":
               §#!c§.§6d§();
               mNextState = §#!c§.§?h§;
               break;
            case "CLOSE_TUTORIAL":
               §5V§.§=M§();
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §5V§.§=M§();
               break;
            case "ZOOM_IN":
               §%!q§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §%!q§.doUserZoom(false);
         }
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§@!N§.§5!j§ = false;
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
         var _loc2_:int = §%!q§.getScore();
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§4Y§);
         var _loc4_:int;
         if((_loc4_ = §+e§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,§+e§.getValue() + param1 * §%B§);
            §+e§.assign(_loc4_);
         }
         this.§@!N§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
      }
      
      private function §2@§(param1:Number) : void
      {
         if((§5!P§.getItemByName("MovieClip_Boom") as §[I§).§!!#§() == "End")
         {
            §5!P§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§5!P§.getItemByName("MovieClip_Boom") as §[I§).§2!?§("Start");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@!N§.deActivate();
         §%!q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4§);
         § _§.§!6§.§,2§();
         this.§2!G§();
         this.§0^§();
      }
      
      private function §2!G§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§;!$§ > §2!=§)
         {
            _loc1_ = Math.round(1000 / this.§;!$§ * this.§"!a§);
            _loc2_ = LevelManager.§4Y§;
            _loc3_ = (§ _§.§1s§ as §@!9§).§6<§();
            §'N§.§1%§(_loc1_,_loc2_,§^b§.§7h§,_loc3_);
         }
      }
      
      private function §<!u§(param1:Number) : void
      {
         this.§;!$§ += param1;
         if(this.§;!$§ > 0)
         {
            ++this.§"!a§;
         }
         if(this.§`!`§ != § _§.§#!t§() || this.§;?§ != § _§.§?!6§())
         {
            this.§0^§();
         }
      }
      
      private function §0^§() : void
      {
         this.§;!$§ = §#d§;
         this.§"!a§ = 0;
         this.§`!`§ = § _§.§#!t§();
         this.§;?§ = § _§.§?!6§();
      }
      
      private function §4;§(param1:§4!Z§) : void
      {
         if(param1)
         {
            param1.§-!T§();
         }
      }
   }
}
