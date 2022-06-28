package §40§
{
   import §"R§.§ !Q§;
   import §+!Q§.§<[§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §7=§.§&,§;
   import §9!5§.§ B§;
   import §9!5§.§!1§;
   import §9!5§.§0!`§;
   import §9!5§.StateCutScene;
   import §9Y§.§6!8§;
   import §?!7§.§"j§;
   import §?!7§.§8;§;
   import §?!7§.§?!x§;
   import com.angrybirds.friendsbar.§`Y§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true§.§ _§;
   
   public class §>!J§ extends § B§
   {
      
      public static var §;a§:int = -1;
       
      
      private var §=D§:Boolean = false;
      
      private var §@!I§:Number = 41.666666666666664;
      
      private var §,<§:int = 0;
      
      private var §,R§:§&,§;
      
      public function §>!J§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_LevelSelection[0]);
         §+A§ = §5!P§.getItemByName("Container_LevelRepeaters") as §8;§;
         §=!4§ = §5!P§.getItemByName("Container_LevelSelection") as §8;§;
         this.§,R§ = new §&,§(§5!P§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§4n§ = LevelManager.§0v§();
         if(_loc1_ == null)
         {
            return;
         }
         §5!P§.visible = true;
         (§ _§.§1s§ as §@!9§).§6!H§.§default§ = false;
         (§ _§.§1s§ as §@!9§).§>!+§("");
         (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§`j§);
         if(§ _§.§!6§.background)
         {
            § _§.§!6§.background.§>G§();
         }
         var _loc2_:String = LevelManager.§0v§().writtenName;
         §5!P§.setText(_loc2_,"TextField_LevelName");
         §5!P§.setText(AngryBirdsFP11.sUserProgress.§&!N§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§#O§(_loc1_),"Textfield_CollectedStars");
         if(§;a§ != -1)
         {
            §8!T§(§;a§);
            §;a§ = -1;
         }
         if(§`]§ == §'!j§.§?h§)
         {
            this.§=D§ = true;
            §`]§ = "";
            §5!P§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
            §5!P§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         }
         else
         {
            this.§=D§ = false;
            §5!P§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§5!P§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
            §5!P§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§5!P§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
         }
         this.§,R§.start();
      }
      
      override public function deActivate() : void
      {
         this.§,R§.stop();
         super.deActivate();
      }
      
      protected function §?!@§(param1:MovieClip) : void
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
         if(this.§=D§)
         {
            this.§,<§ += param1;
            if(this.§,<§ >= this.§@!I§)
            {
               this.§?!@§(§5!P§.getItemByName("MovieClip_RightCorner").mClip);
               this.§?!@§(§5!P§.getItemByName("MovieClip_LeftCorner").mClip);
               this.§,<§ = 0;
            }
         }
         this.§,R§.run(param1);
         return super.run(param1);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc1_:Number = 0;
         §^G§ = [];
         § !<§ = [];
         §^!h§ = LevelManager.§`!-§(LevelManager.§>!§).§-!F§;
         §4]§ = §^!h§;
         §;!q§ = §^!h§;
         var _loc2_:§4n§ = LevelManager.§`!-§(LevelManager.§>!§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§]!"§(_loc2_.pageIndexes[_loc3_]);
            §^G§.push(_loc2_.§9!R§(_loc3_));
            § !<§.push(_loc2_.§]!C§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         §?`§();
         if(§`]§ == StateCutScene.§?h§)
         {
            §`]§ = "";
            §8!T§(§;!q§);
         }
         else
         {
            §8!T§(§^!h§,true);
         }
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§4n§) : Number
      {
         var _loc8_:XML = null;
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:MovieClip = null;
         var _loc14_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §%!G§.§^!B§(§ !<§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc11_ = param1[_loc7_];
            _loc12_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_);
            _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
            (_loc14_ = <Button/>).@name = _loc11_;
            if(_loc12_ || AngryBirdsFP11.§[!d§)
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
         _loc8_.@button = § !<§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:Number = param3;
         var _loc10_:§?!x§;
         (_loc10_ = new §?!x§(_loc8_,§+A§,null,null)).§%!_§ = 5;
         _loc10_.§0!m§ = 0;
         _loc10_.§8!2§(_loc5_);
         _loc10_.setVisibility(true);
         _loc10_.x = param3;
         _loc10_.y = 50;
         §+A§.addComponent(_loc10_);
         §#!o§.push(_loc10_);
         return Number(_loc9_ + AngryBirdsFP11.§>!2§);
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §<[§).§,!l§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §%!G§.§^!B§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§2!9§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               § !Q§.playSound("Menu_Back");
               §'!j§.§`]§ = §?h§;
               mNextState = §0!`§.§?h§;
               break;
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §'N§.§`I§(_loc4_);
               §@!9§.§6!f§.§5C§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "showCredits":
               mNextState = §!1§.§?h§;
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§5!P§.getItemByName("TextField_LevelNumberSmall") as §"j§).§"E§.text = (param1 + 1).toString();
      }
   }
}
