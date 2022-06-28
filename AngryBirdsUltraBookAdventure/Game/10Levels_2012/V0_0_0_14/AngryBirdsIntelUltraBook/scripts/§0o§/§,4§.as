package §0o§
{
   import § !k§.§6!5§;
   import § !k§.§6!U§;
   import § !k§.§?U§;
   import § !k§.StateCutScene;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §&!h§.§]V§;
   import §'H§.§9!f§;
   import §-2§.§[s§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §=R§.§7!"§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import §`M§.§[A§;
   import com.angrybirds.friendsbar.§&E§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §,4§ extends §6!U§
   {
      
      public static var §+!"§:int = -1;
       
      
      private var §%!t§:Boolean = false;
      
      private var §]U§:Number = 41.666666666666664;
      
      private var §2!e§:int = 0;
      
      private var §;5§:§[s§;
      
      public function §,4§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_LevelSelection[0]);
         §>!2§ = §`-§.getItemByName("Container_LevelRepeaters") as §9!#§;
         §;=§ = §`-§.getItemByName("Container_LevelSelection") as §9!#§;
         this.§;5§ = new §[s§(§`-§.getItemByName("MovieClip_BackGround").mClip,"spark_",13,4);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§@+§ = LevelManager.§5!K§();
         if(_loc1_ == null)
         {
            return;
         }
         §`-§.visible = true;
         (§4!]§.§7!G§ as §[!m§).§7!6§.§?0§ = false;
         (§4!]§.§7!G§ as §[!m§).§ _§("");
         (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§'g§);
         if(§4!]§.§8C§.background)
         {
            §4!]§.§8C§.background.§&[§();
         }
         var _loc2_:String = LevelManager.§5!K§().writtenName;
         §`-§.setText(_loc2_,"TextField_LevelName");
         §`-§.setText(AngryBirdsFP11.sUserProgress.§^!E§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§[y§(_loc1_),"Textfield_CollectedStars");
         if(§+!"§ != -1)
         {
            §try§(§+!"§);
            §+!"§ = -1;
         }
         if(§2s§ == §;%§.§3F§)
         {
            this.§%!t§ = true;
            §2s§ = "";
            §`-§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(1);
            §`-§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(1);
         }
         else
         {
            this.§%!t§ = false;
            §`-§.getItemByName("MovieClip_LeftCorner").mClip.gotoAndStop(MovieClip(§`-§.getItemByName("MovieClip_LeftCorner").mClip).totalFrames);
            §`-§.getItemByName("MovieClip_RightCorner").mClip.gotoAndStop(MovieClip(§`-§.getItemByName("MovieClip_RightCorner").mClip).totalFrames);
         }
         this.§;5§.start();
      }
      
      override public function deActivate() : void
      {
         this.§;5§.stop();
         super.deActivate();
      }
      
      protected function §=!S§(param1:MovieClip) : void
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
         if(this.§%!t§)
         {
            this.§2!e§ += param1;
            if(this.§2!e§ >= this.§]U§)
            {
               this.§=!S§(§`-§.getItemByName("MovieClip_RightCorner").mClip);
               this.§=!S§(§`-§.getItemByName("MovieClip_LeftCorner").mClip);
               this.§2!e§ = 0;
            }
         }
         this.§;5§.run(param1);
         return super.run(param1);
      }
      
      override public function initLevelsRepeater() : void
      {
         var _loc4_:Array = null;
         var _loc1_:Number = 0;
         §'!,§ = [];
         §;A§ = [];
         §>!F§ = LevelManager.§'v§(LevelManager.§;`§).§-+§;
         §9!;§ = §>!F§;
         §7O§ = §>!F§;
         var _loc2_:§@+§ = LevelManager.§'v§(LevelManager.§;`§);
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.pageIndexes.length)
         {
            _loc4_ = _loc2_.§=H§(_loc2_.pageIndexes[_loc3_]);
            §'!,§.push(_loc2_.§8=§(_loc3_));
            §;A§.push(_loc2_.§%c§(_loc3_));
            _loc1_ = this.addLevelPage(_loc4_,_loc3_,_loc1_,_loc2_);
            _loc3_++;
         }
         §!!!§();
         if(§2s§ == StateCutScene.§3F§)
         {
            §2s§ = "";
            §try§(§7O§);
         }
         else
         {
            §try§(§>!F§,true);
         }
      }
      
      override protected function addLevelPage(param1:Array, param2:int, param3:Number, param4:§@+§) : Number
      {
         var _loc8_:XML = null;
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:MovieClip = null;
         var _loc14_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §9!N§.§0!k§(§;A§[param2]);
         var _loc7_:Number = 0;
         while(_loc7_ < param1.length)
         {
            _loc11_ = param1[_loc7_];
            _loc12_ = AngryBirdsFP11.sUserProgress.isLevelOpen(_loc11_);
            _loc13_ = this.makeButtonForLevel(_loc11_,_loc12_,_loc6_,_loc7_,param2);
            (_loc14_ = <Button/>).@name = _loc11_;
            if(_loc12_ || AngryBirdsFP11.§2!y§)
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
         _loc8_.@button = §;A§[param2];
         _loc8_.@enabled = "True";
         _loc8_.@buttonSelectionType = "NO_SELECTION";
         _loc8_.@fromLibrary = "true";
         var _loc9_:Number = param3;
         var _loc10_:§[A§;
         (_loc10_ = new §[A§(_loc8_,§>!2§,null,null)).§+!n§ = 5;
         _loc10_.§""§ = 0;
         _loc10_.§@!+§(_loc5_);
         _loc10_.setVisibility(true);
         _loc10_.x = param3;
         _loc10_.y = 50;
         §>!2§.addComponent(_loc10_);
         §7z§.push(_loc10_);
         return Number(_loc9_ + AngryBirdsFP11.§;!Z§);
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §9!f§).§while§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §9!N§.§0!k§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§,m§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §6!H§.playSound("Menu_Back");
               §;%§.§2s§ = §3F§;
               mNextState = §?U§.§3F§;
               break;
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §]V§.§ 4§(_loc4_);
               §[!m§.§1H§.§2!3§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "showCredits":
               mNextState = §6!5§.§3F§;
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§`-§.getItemByName("TextField_LevelNumberSmall") as §3!@§).§!!2§.text = (param1 + 1).toString();
      }
   }
}
