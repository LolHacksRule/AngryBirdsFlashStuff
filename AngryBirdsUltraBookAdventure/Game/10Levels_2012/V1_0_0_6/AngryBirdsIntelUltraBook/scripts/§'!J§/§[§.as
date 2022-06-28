package §'!J§
{
   import §,!§.§![§;
   import §1!E§.§#?§;
   import §1!E§.§31§;
   import §1!E§.§?!x§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §8!;§.§4I§;
   import §;H§.§!y§;
   import §;H§.§,!]§;
   import §;H§.§9!3§;
   import §;H§.StateCutScene;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §[§ extends §!y§
   {
      
      public static var §48§:int = -1;
       
      
      private var § O§:Boolean = false;
      
      private var §?!j§:Number = 41.666666666666664;
      
      private var §8"§:int = 0;
      
      private var §8Y§:§4I§;
      
      public function §[§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_LevelSelection[0]);
         §#O§ = §&!m§.getItemByName("Container_LevelRepeaters") as §#?§;
         §3!^§ = §&!m§.getItemByName("Container_LevelSelection") as §#?§;
         this.§8Y§ = new §4I§(§&!m§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§<!#§ = LevelManager.§];§();
         if(_loc1_ == null)
         {
            return;
         }
         §&!m§.visible = true;
         (§^!c§.§2!w§ as §[!P§).§99§.§&§ = false;
         (§^!c§.§2!w§ as §[!P§).§;! §("");
         (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§7!U§);
         if(§^!c§.§5!Y§.background)
         {
            §^!c§.§5!Y§.background.§5!e§();
         }
         var _loc2_:String = LevelManager.§];§().writtenName;
         §&!m§.setText(_loc2_,"TextField_LevelName");
         §&!m§.setText(AngryBirdsFP11.sUserProgress.§^P§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§&!^§(_loc1_),"Textfield_CollectedStars");
         if(§48§ != -1)
         {
            §=]§(§48§);
            §48§ = -1;
         }
         if(§9!c§ == §#!D§.§"!s§)
         {
            this.§ O§ = true;
            §9!c§ = "";
            §&!m§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
            §&!m§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         }
         else
         {
            this.§ O§ = false;
            §&!m§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§&!m§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
            §&!m§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§&!m§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
         }
         this.§8Y§.start();
      }
      
      override public function deActivate() : void
      {
         this.§8Y§.stop();
         super.deActivate();
      }
      
      protected function §2!#§(param1:MovieClip) : void
      {
         var _loc2_:int = param1.currentFrame + 1;
         if(_loc2_ >= param1.totalFrames)
         {
            _loc2_ = param1.totalFrames;
         }
         param1.gotoAndStop(_loc2_);
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§ O§)
         {
            this.§8"§ += param1;
            if(this.§8"§ >= this.§?!j§)
            {
               this.§2!#§(§&!m§.getItemByName("MovieClip_RightCorner").mClip);
               this.§2!#§(§&!m§.getItemByName("MovieClip_LeftCorner").mClip);
               this.§8"§ = 0;
            }
         }
         this.§8Y§.run(param1);
         return super.run(param1);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc1_:Number = 0;
         §^!u§ = [];
         §^!f§ = [];
         §^B§ = LevelManager.§'J§(LevelManager.§>!$§).§ each§;
         §9!4§ = §^B§;
         §2!D§ = §^B§;
         var _loc2_:§<!#§ = LevelManager.§'J§(LevelManager.§>!$§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§^!j§(_loc2_.pageIndexes[_loc3_]);
            §^!u§.push(_loc2_.§^J§(_loc3_));
            §^!f§.push(_loc2_.§+>§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         §&!k§();
         if(§9!c§ == StateCutScene.§"!s§)
         {
            §9!c§ = "";
            §=]§(§2!D§);
         }
         else
         {
            §=]§(§^B§,true);
         }
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§<!#§) : Number
      {
         var _loc8_:XML = null;
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:MovieClip = null;
         var _loc14_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §`!t§.§=J§(§^!f§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc11_ = param1[_loc7_];
            _loc12_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_);
            _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
            (_loc14_ = <Button/>).@name = _loc11_;
            if(_loc12_ || AngryBirdsFP11.§@a§)
            {
               _loc14_.@MouseUp = _loc11_;
            }
            _loc14_.@scaleOnMouseOver = "True";
            _loc5_[0].push(new Array(_loc14_,null,_loc13_));
            if(_loc12_)
            {
               _loc13_.MovieClip_Stars.mouseEnabled = false;
            }
            _loc13_.TextField_LevelNum.text.mouseEnabled = false;
            _loc7_++;
         }
         _loc8_ = <Repeater/>;
         if(param1.length == 15)
         {
            _loc8_.@name = "Repeater_LevelSelection15";
         }
         else
         {
            _loc8_.@name = "Repeater_LevelSelection";
         }
         _loc8_.@button = §^!f§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:Number = param3;
         var _loc10_:§31§;
         (_loc10_ = new §31§(_loc8_,§#O§,null,null)).§6D§ = 5;
         _loc10_.§<!X§ = 0;
         _loc10_.§@K§(_loc5_);
         _loc10_.setVisibility(true);
         _loc10_.x = param3;
         _loc10_.y = 50;
         §#O§.addComponent(_loc10_);
         §='§.push(_loc10_);
         return Number(_loc9_ + AngryBirdsFP11.§3!5§);
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §![§).§<y§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §`!t§.§=J§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§1H§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §9'§.playSound("Menu_Back");
               §#!D§.§9!c§ = §"!s§;
               mNextState = §,!]§.§"!s§;
               break;
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §@!J§.§!v§(_loc4_);
               §[!P§.§;!K§.§&2§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "showCredits":
               mNextState = §9!3§.§"!s§;
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§&!m§.getItemByName("TextField_LevelNumberSmall") as §?!x§).§,!F§.text = (param1 + 1).toString();
      }
   }
}
