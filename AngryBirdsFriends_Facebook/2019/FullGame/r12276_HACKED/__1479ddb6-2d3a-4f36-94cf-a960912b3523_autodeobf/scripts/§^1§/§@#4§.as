package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.AvatarCreatorPopup;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §+#X§.§?!+§;
   import §+#X§.FeatureRemovalWarningBirdomatic;
   import §-"S§.§>#G§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§]!P§;
   import §3#t§.§>!H§;
   import §4$A§.§=$5§;
   import §8#^§.§ !w§;
   import §9!6§.§## §;
   import §9x§.§6#h§;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §[#v§.§4e§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §@#4§ extends §';§ implements §'r§, §=$5§, §;"P§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§@#5§ = null;
      
      private var mChapterTween1:§@#5§ = null;
      
      private var mChapterTween2:§@#5§ = null;
      
      private var mChapterTween3:§@#5§ = null;
      
      private var §@#T§:§@#5§ = null;
      
      private var §[R§:§@#5§ = null;
      
      private var §!$D§:§@#5§ = null;
      
      private var §'#;§:§@#5§ = null;
      
      private var §##f§:§6#h§;
      
      private var §3"U§:§>!H§;
      
      private var §1"w§:Wallet;
      
      public function §@#4§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_ChapterFacebookSelection[0]);
         for each(_loc1_ in ["Container_Chapter0","Container_Chapter1","Container_Chapter2","Container_Chapter3","Container_ChapterWonderland","Container_ChapterGoldenEggs"])
         {
            §@!D§.getItemByName(_loc1_).mClip.star.mouseEnabled = false;
            §@!D§.getItemByName(_loc1_).mClip.feather.mouseEnabled = false;
         }
         this.§3"U§ = §^"a§.§'e§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]!P§.§1!7§().§4c§(§]!P§.§@c§);
         var _loc2_:§6!1§ = §@!D§.getItemByName("AvatarPlaceHolder");
         var _loc3_:§6!1§ = §@!D§.getItemByName("AvatarSilhouette");
         if(this.§##f§ == null)
         {
            this.§##f§ = new §6#h§((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).avatarString,_loc3_.mClip,false,"240");
            this.§##f§.scaleX = 1;
            this.§##f§.scaleY = 1;
            this.§##f§.x = -80;
            this.§##f§.y = -160;
            _loc2_.mClip.addChild(this.§##f§);
         }
         else
         {
            _loc2_.mClip.addChild(this.§##f§);
            this.§##f§.§=!n§ = _loc3_.mClip;
            if(this.§##f§.§]!J§)
            {
               this.§##f§.§=!n§.visible = false;
            }
         }
         _loc2_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§#!3§);
         if(param1 != § "g§.STATE_NAME && param1 != §[!=§.STATE_NAME && param1 != §`$D§.STATE_NAME)
         {
            (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§[Q§,null);
            this.§3"U§.§@"S§().addEventListener(§ !w§.§'#y§,this.§,!6§);
            this.§3"U§.§@"S§().loadItems(0,0);
         }
         AngryBirdsBase.singleton.playThemeMusic();
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.§2$D§(_loc4_);
            _loc4_++;
         }
         var _loc5_:§79§ = mLevelManager.getEpisode(3);
         §@!D§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§2#2§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§@r§(_loc5_),"Textfield_CollectedStarsGE");
         §@!D§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§72§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§2$4§(_loc5_),"Textfield_ME_ScoreGE");
         var _loc6_:§79§ = mLevelManager.getEpisodeByName("12");
         §@!D§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§2#2§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§@r§(_loc6_),"Textfield_CollectedStars3");
         §@!D§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§72§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§2$4§(_loc6_),"Textfield_ME_Score3");
         var _loc7_:§79§ = mLevelManager.getEpisodeByName("4000");
         §@!D§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§2#2§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§@r§(_loc7_),"Textfield_CollectedStarsW");
         §@!D§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§72§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§2$4§(_loc7_),"Textfield_ME_ScoreW");
         this.§'#;§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_ChapterWonderland").mClip,{
            "scaleX":1,
            "scaleY":1
         },null,0,§5"<§.§8"z§);
         this.§'#;§.§+!_§();
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
         (§+!p§.§;"-§ as §^"a§).§'$§();
         this.§ "@§(new Wallet(this,true,true,false));
         if(param1 == §[$2§.STATE_NAME)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new §?!+§(§-!S§.NORMAL,§## §.DEFAULT));
         }
      }
      
      protected function §#!3§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§-!S§.NORMAL,§## §.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         AngryBirdsBase.singleton.popupManager.openPopup(new FeatureRemovalWarningBirdomatic(§-!S§.§ !^§,§## §.DEFAULT));
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=#[§();
         §@!D§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §@!D§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §@!D§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §@!D§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §@!D§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §@!D§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §@!D§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §@!D§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         this.§+E§(this.§1"w§);
      }
      
      private function §=#[§() : void
      {
         if(this.mChapterTween0 != null)
         {
            this.mChapterTween0.stop();
            this.mChapterTween0 = null;
         }
         if(this.mChapterTween1 != null)
         {
            this.mChapterTween1.stop();
            this.mChapterTween1 = null;
         }
         if(this.mChapterTween2 != null)
         {
            this.mChapterTween2.stop();
            this.mChapterTween2 = null;
         }
         if(this.mChapterTween3 != null)
         {
            this.mChapterTween3.stop();
            this.mChapterTween3 = null;
         }
         if(this.§@#T§ != null)
         {
            this.§@#T§.stop();
            this.§@#T§ = null;
         }
      }
      
      private function §2$D§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§79§ = null;
         if(param3 == "")
         {
            _loc4_ = mLevelManager.getEpisode(param1);
         }
         else
         {
            _loc4_ = mLevelManager.getEpisodeByName(param3);
         }
         if(_loc4_ == null)
         {
            return;
         }
         if(param2 == "")
         {
            param2 = param1 + "";
         }
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§2#2§(_loc4_);
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.§@r§(_loc4_);
         var _loc7_:int = AngryBirdsBase.singleton.dataModel.userProgress.§72§(_loc4_);
         var _loc8_:int = AngryBirdsBase.singleton.dataModel.userProgress.§2$4§(_loc4_);
         §@!D§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §@!D§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:AvatarCreatorPopup = null;
         if(int(param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            mLevelManager.loadLevel("1000-" + _loc5_);
            §%!?§(StateCutScene.STATE_NAME);
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               §%!?§(§[$2§.STATE_NAME);
               break;
            case "AVATAREDITOR":
               _loc6_ = new AvatarCreatorPopup(§-!S§.NORMAL,§## §.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
               AngryBirdsBase.singleton.popupManager.openPopup(new FeatureRemovalWarningBirdomatic(§-!S§.§ !^§,§## §.DEFAULT));
               break;
            case "showCredits":
               §%!?§(§+!Y§.STATE_NAME);
               break;
            case "CHAPTER2":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               mLevelManager.selectEpisode(2);
               §%!?§(§;O§.STATE_NAME);
               break;
            case "CHAPTER3":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               mLevelManager.selectEpisode(5);
               §%!?§(§;O§.STATE_NAME);
               break;
            case "CHAPTER0":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               mLevelManager.selectEpisode(0);
               §%!?§(§;O§.STATE_NAME);
               break;
            case "CHAPTER1":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               mLevelManager.selectEpisode(1);
               §%!?§(§;O§.STATE_NAME);
               break;
            case "CHAPTERGE":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               mLevelManager.selectEpisode(3);
               §%!?§(§[!=§.STATE_NAME);
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTween0.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTween1.play();
               break;
            case "CHAPTER1OUT":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTween2.play();
               break;
            case "CHAPTER2OUT":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.mChapterTween3.play();
               break;
            case "CHAPTER3OUT":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§[R§ != null)
               {
                  this.§[R§.stop();
               }
               this.§[R§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§[R§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§[R§ != null)
               {
                  this.§[R§.stop();
               }
               this.§[R§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.§[R§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§@#T§ != null)
               {
                  this.§@#T§.stop();
               }
               this.§@#T§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§@#T§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§@#T§ != null)
               {
                  this.§@#T§.stop();
               }
               this.§@#T§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.§@#T§.play();
               break;
            case "SALEOVER":
               if(this.§!$D§ != null)
               {
                  this.§!$D§.stop();
               }
               this.§!$D§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§!$D§.play();
               break;
            case "SALEOUT":
               if(this.§!$D§ != null)
               {
                  this.§!$D§.stop();
               }
               this.§!$D§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.§!$D§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               mLevelManager.selectEpisode(4);
               §%!?§(§4e§.STATE_NAME);
               break;
            case "CHAPTERWONDERLAND":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               mLevelManager.selectEpisode(6);
               §%!?§(§`$D§.STATE_NAME);
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.§'#;§ != null)
               {
                  this.§'#;§.stop();
               }
               this.§'#;§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§'#;§.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.§'#;§ != null)
               {
                  this.§'#;§.stop();
               }
               this.§'#;§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§5"<§.§8"z§);
               this.§'#;§.play();
         }
      }
      
      public function §2!^§() : String
      {
         return §'@§.§0]§;
      }
      
      public function §6#U§() : String
      {
         return null;
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      private function §,!6§(param1:§ !w§) : void
      {
         this.§3"U§.§@"S§().removeEventListener(§ !w§.§'#y§,this.§,!6§);
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§[Q§,this.§3"U§.§@"S§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§+!p§.§;"-§ as §^"a§).§&m§())
         {
            _loc1_ = §[$2§.§ #H§;
         }
         if(this.§1"w§)
         {
            this.§1"w§.§6""§.scaleX = _loc1_;
            this.§1"w§.§6""§.scaleY = _loc1_;
         }
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         if(this.§1"w§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §@!D§.movieClip;
      }
   }
}
