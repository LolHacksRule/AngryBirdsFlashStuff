package §`!#§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §2!U§.§2!=§;
   import §2!U§.§8"!§;
   import §2!U§.§<&§;
   import §2!U§.StateCutScene;
   import §2y§.§54§;
   import §2y§.§<N§;
   import §2y§.§^! §;
   import §9j§.§6!G§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §[!b§.§-!Q§;
   import §[;§.§#!6§;
   import com.angrybirds.friendsbar.§-V§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §,D§ extends §2!=§
   {
      
      private static const §-!]§:int = 10;
      
      private static const §8!$§:int = 4;
      
      public static var §32§:int = -1;
       
      
      private var §"=§:Boolean = false;
      
      private var §&!!§:Number = 41.666666666666664;
      
      private var §@!U§:int = 0;
      
      private var §8U§:§6!G§;
      
      public function §,D§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_LevelSelection[0]);
         §>&§ = §'!Q§.getItemByName("Container_LevelRepeaters") as §^! §;
         §>!+§ = §'!Q§.getItemByName("Container_LevelSelection") as §^! §;
         this.§8U§ = new §6!G§(§'!Q§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§8K§ = LevelManager.§+!$§();
         if(_loc1_ == null)
         {
            return;
         }
         §'!Q§.visible = true;
         (§,!s§.§]!J§ as §<t§).§`X§.§!r§ = false;
         (§,!s§.§]!J§ as §<t§).§;!T§("");
         (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§,b§);
         if(§,!s§.§=!I§.background)
         {
            §,!s§.§=!I§.background.§4!=§();
         }
         var _loc2_:String = LevelManager.§+!$§().writtenName;
         §'!Q§.setText(_loc2_,"TextField_LevelName");
         §'!Q§.setText(AngryBirdsFP11.sUserProgress.§0q§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§>9§(_loc1_),"Textfield_CollectedStars");
         if(§32§ != -1)
         {
            §5!]§(§32§);
            §32§ = -1;
         }
         if(§%!i§ == §!!2§.§'!q§)
         {
            this.§"=§ = true;
            §%!i§ = "";
            §'!Q§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
            §'!Q§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         }
         else
         {
            this.§"=§ = false;
            §'!Q§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§'!Q§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
            §'!Q§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§'!Q§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
         }
         §'!Q§.getItemByName("MovieClip_RightCorner").mClip.mouseEnabled = false;
         this.§8U§.start();
      }
      
      override public function deActivate() : void
      {
         this.§8U§.stop();
         super.deActivate();
      }
      
      protected function §3!F§(param1:MovieClip) : void
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
         if(this.§"=§)
         {
            this.§@!U§ += param1;
            if(this.§@!U§ >= this.§&!!§)
            {
               this.§3!F§(§'!Q§.getItemByName("MovieClip_RightCorner").mClip);
               this.§3!F§(§'!Q§.getItemByName("MovieClip_LeftCorner").mClip);
               this.§@!U§ = 0;
            }
         }
         this.§8U§.run(param1);
         return super.run(param1);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc1_:Number = 0;
         §&!S§ = [];
         §8!d§ = [];
         §8C§ = LevelManager.§!!A§(LevelManager.§`^§).§9J§;
         §'!m§ = §8C§;
         §<#§ = §8C§;
         var _loc2_:§8K§ = LevelManager.§!!A§(LevelManager.§`^§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§#E§(_loc2_.pageIndexes[_loc3_]);
            §&!S§.push(_loc2_.§;y§(_loc3_));
            §8!d§.push(_loc2_.§,G§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         §2!A§();
         if(§%!i§ == StateCutScene.§'!q§)
         {
            §%!i§ = "";
            §5!]§(§<#§);
         }
         else
         {
            §5!]§(§8C§,true);
         }
      }
      
      private function §#l§(param1:String, param2:Boolean, param3:int, param4:int) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:MovieClip = null;
         var _loc5_:int = param3 - (§-!]§ - 1);
         var _loc6_:MovieClip = §'!Q§.getItemByName("ExtraLevel" + _loc5_).mClip;
         if(param2)
         {
            _loc6_.gotoAndStop("Open");
            _loc6_.TextField_LevelNum.text.text = param3 + 1 + param4 * LevelManager.§`r§(param1).levelsPerPage;
            if(_loc6_.MovieClip_Stars)
            {
               _loc6_.MovieClip_Stars.mouseEnabled = false;
            }
         }
         else
         {
            _loc6_.gotoAndStop("Locked");
         }
         _loc6_.isOpen = param2;
         if(param2)
         {
            _loc8_ = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
            _loc6_.MovieClip_Stars.gotoAndStop(_loc8_.toString() + "_stars");
         }
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §#!6§).§@z§(param1)) && _loc7_ <= 3)
         {
            (_loc9_ = new §,!j§.§!!N§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc9_.x = -78;
            _loc9_.y = -102;
            _loc6_.addChild(_loc9_);
         }
         _loc6_.TextField_LevelNum.text.mouseEnabled = false;
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§8K§) : Number
      {
         var _loc8_:XML = null;
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:MovieClip = null;
         var _loc14_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §,!j§.§!!N§(§8!d§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc11_ = param1[_loc7_];
            _loc12_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_);
            if(_loc7_ > §-!]§ - 1)
            {
               this.§#l§(_loc11_,_loc12_,_loc7_,param2);
            }
            else
            {
               _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
               (_loc14_ = <Button/>).@name = _loc11_;
               if(_loc12_ || AngryBirdsFP11.§?C§)
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
            }
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
         _loc8_.@button = §8!d§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:Number = param3;
         var _loc10_:§<N§;
         (_loc10_ = new §<N§(_loc8_,§>&§,null,null)).§+Y§ = 5;
         _loc10_.§-!Z§ = 0;
         _loc10_.§>k§(_loc5_);
         _loc10_.setVisibility(true);
         _loc10_.x = param3;
         _loc10_.y = 50;
         §>&§.addComponent(_loc10_);
         §?J§.push(_loc10_);
         return Number(_loc9_ + AngryBirdsFP11.§!Z§);
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §#!6§).§@z§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §,!j§.§!!N§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§`r§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §-!Q§.§#3§("Menu_Back");
               §!!2§.§%!i§ = §'!q§;
               mNextState = §8"!§.§'!q§;
               break;
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §!!K§.§%$§(_loc4_);
               §<t§.§`n§.§5!M§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "showCredits":
               mNextState = §<&§.§'!q§;
               break;
            case "EXTRALEVEL1":
               this.§ "#§("1-11");
               break;
            case "EXTRALEVEL2":
               this.§ "#§("1-12");
               break;
            case "EXTRALEVEL3":
               this.§ "#§("1-13");
               break;
            case "EXTRALEVEL4":
               this.§ "#§("1-14");
         }
      }
      
      private function § "#§(param1:String) : void
      {
         var _loc2_:Boolean = AngryBirdsFP11.sUserProgress.isLevelOpen(param1);
         if(_loc2_)
         {
            LevelManager.§`!O§(LevelManager.§5l§(param1));
            mNextState = StateCutScene.§'!q§;
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§'!Q§.getItemByName("TextField_LevelNumberSmall") as §54§).§5!B§.text = (param1 + 1).toString();
      }
   }
}
