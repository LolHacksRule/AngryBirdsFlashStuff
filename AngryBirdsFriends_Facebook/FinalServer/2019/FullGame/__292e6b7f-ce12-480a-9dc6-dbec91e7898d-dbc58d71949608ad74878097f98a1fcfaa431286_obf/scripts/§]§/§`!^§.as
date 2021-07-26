package §]§
{
   import § $0§.§5R§;
   import §!!L§.§ !8§;
   import §!L§.§`#u§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §#"4§.§2"M§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §+`§.§%"q§;
   import §2!Y§.§="z§;
   import §2G§.§`!K§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §7"X§.§6#A§;
   import §7#$§.§3!,§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.AvatarCreatorPopup;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §`!^§ extends §1$?§ implements §2"M§, §1k§, §+#?§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§@$-§ = null;
      
      private var mChapterTween1:§@$-§ = null;
      
      private var mChapterTween2:§@$-§ = null;
      
      private var mChapterTween3:§@$-§ = null;
      
      private var §1"o§:§@$-§ = null;
      
      private var §3"o§:§@$-§ = null;
      
      private var §+#$§:§@$-§ = null;
      
      private var §`!W§:§@$-§ = null;
      
      private var §8#`§:§`!K§;
      
      private var §"![§:§="z§;
      
      private var §"#W§:Wallet;
      
      public function §`!^§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_ChapterFacebookSelection[0]);
         for each(_loc1_ in ["Container_Chapter0","Container_Chapter1","Container_Chapter2","Container_Chapter3","Container_ChapterWonderland","Container_ChapterGoldenEggs"])
         {
            §;!w§.getItemByName(_loc1_).mClip.star.mouseEnabled = false;
            §;!w§.getItemByName(_loc1_).mClip.feather.mouseEnabled = false;
         }
         this.§"![§ = §@z§.§<"I§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3";§.§#"'§().§@"l§(§3";§.§[#D§);
         var _loc2_:§^"C§ = §;!w§.getItemByName("AvatarPlaceHolder");
         var _loc3_:§^"C§ = §;!w§.getItemByName("AvatarSilhouette");
         if(this.§8#`§ == null)
         {
            this.§8#`§ = new §`!K§((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).avatarString,_loc3_.mClip,false,"240");
            this.§8#`§.scaleX = 1;
            this.§8#`§.scaleY = 1;
            this.§8#`§.x = -80;
            this.§8#`§.y = -160;
            _loc2_.mClip.addChild(this.§8#`§);
         }
         else
         {
            _loc2_.mClip.addChild(this.§8#`§);
            this.§8#`§.§2!y§ = _loc3_.mClip;
            if(this.§8#`§.§6$D§)
            {
               this.§8#`§.§2!y§.visible = false;
            }
         }
         _loc2_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§>" §);
         if(param1 != §!=§.STATE_NAME && param1 != §4#§.STATE_NAME && param1 != §,x§.STATE_NAME)
         {
            (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§7!g§,null);
            this.§"![§.§!#S§().addEventListener(§6#A§.§4$&§,this.§]H§);
            this.§"![§.§!#S§().loadItems(0,0);
         }
         AngryBirdsBase.singleton.playThemeMusic();
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.§""I§(_loc4_);
            _loc4_++;
         }
         var _loc5_:§3!,§ = mLevelManager.getEpisode(3);
         §;!w§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§`!t§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§<!S§(_loc5_),"Textfield_CollectedStarsGE");
         §;!w§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§#!r§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§=#[§(_loc5_),"Textfield_ME_ScoreGE");
         var _loc6_:§3!,§ = mLevelManager.getEpisodeByName("12");
         §;!w§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§`!t§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§<!S§(_loc6_),"Textfield_CollectedStars3");
         §;!w§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§#!r§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§=#[§(_loc6_),"Textfield_ME_Score3");
         var _loc7_:§3!,§ = mLevelManager.getEpisodeByName("4000");
         §;!w§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§`!t§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§<!S§(_loc7_),"Textfield_CollectedStarsW");
         §;!w§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§#!r§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§=#[§(_loc7_),"Textfield_ME_ScoreW");
         this.§`!W§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_ChapterWonderland").mClip,{
            "scaleX":1,
            "scaleY":1
         },null,0,§6"W§.§>#B§);
         this.§`!W§.§0"D§();
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
         (§]$?§.§;u§ as §@z§).§&#P§();
         this.§6"h§(new Wallet(this,true,true,false));
      }
      
      protected function §>" §(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§@#D§.NORMAL,§5R§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&#y§();
         §;!w§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §;!w§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §;!w§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §;!w§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §;!w§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §;!w§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §;!w§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §;!w§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         this.§7=§(this.§"#W§);
      }
      
      private function §&#y§() : void
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
         if(this.§1"o§ != null)
         {
            this.§1"o§.stop();
            this.§1"o§ = null;
         }
      }
      
      private function §""I§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§3!,§ = null;
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
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§`!t§(_loc4_);
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.§<!S§(_loc4_);
         var _loc7_:int = AngryBirdsBase.singleton.dataModel.userProgress.§#!r§(_loc4_);
         var _loc8_:int = AngryBirdsBase.singleton.dataModel.userProgress.§=#[§(_loc4_);
         §;!w§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §;!w§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:AvatarCreatorPopup = null;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            mLevelManager.loadLevel("1000-" + _loc5_);
            §3#§(StateCutScene.STATE_NAME);
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               §3#§(§3"E§.STATE_NAME);
               break;
            case "AVATAREDITOR":
               _loc6_ = new AvatarCreatorPopup(§@#D§.NORMAL,§5R§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
               break;
            case "showCredits":
               §3#§(§[#t§.STATE_NAME);
               break;
            case "CHAPTER2":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               mLevelManager.selectEpisode(2);
               §3#§(§#!$§.STATE_NAME);
               break;
            case "CHAPTER3":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               mLevelManager.selectEpisode(5);
               §3#§(§#!$§.STATE_NAME);
               break;
            case "CHAPTER0":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               mLevelManager.selectEpisode(0);
               §3#§(§#!$§.STATE_NAME);
               break;
            case "CHAPTER1":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               mLevelManager.selectEpisode(1);
               §3#§(§#!$§.STATE_NAME);
               break;
            case "CHAPTERGE":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               mLevelManager.selectEpisode(3);
               §3#§(§4#§.STATE_NAME);
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween0 = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Chapter1").mClip,{
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
               this.mChapterTween1 = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween2 = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Chapter3").mClip,{
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
               this.mChapterTween3 = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§3"o§ != null)
               {
                  this.§3"o§.stop();
               }
               this.§3"o§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§3"o§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§3"o§ != null)
               {
                  this.§3"o§.stop();
               }
               this.§3"o§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.§3"o§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§1"o§ != null)
               {
                  this.§1"o§.stop();
               }
               this.§1"o§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§1"o§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§1"o§ != null)
               {
                  this.§1"o§.stop();
               }
               this.§1"o§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.§1"o§.play();
               break;
            case "SALEOVER":
               if(this.§+#$§ != null)
               {
                  this.§+#$§.stop();
               }
               this.§+#$§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§+#$§.play();
               break;
            case "SALEOUT":
               if(this.§+#$§ != null)
               {
                  this.§+#$§.stop();
               }
               this.§+#$§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.§+#$§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               mLevelManager.selectEpisode(4);
               §3#§(§ !8§.STATE_NAME);
               break;
            case "CHAPTERWONDERLAND":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               mLevelManager.selectEpisode(6);
               §3#§(§,x§.STATE_NAME);
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.§`!W§ != null)
               {
                  this.§`!W§.stop();
               }
               this.§`!W§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§`!W§.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.§`!W§ != null)
               {
                  this.§`!W§.stop();
               }
               this.§`!W§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"W§.§>#B§);
               this.§`!W§.play();
         }
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§[#J§;
      }
      
      public function §4!G§() : String
      {
         return null;
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      private function §]H§(param1:§6#A§) : void
      {
         this.§"![§.§!#S§().removeEventListener(§6#A§.§4$&§,this.§]H§);
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§7!g§,this.§"![§.§!#S§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§]$?§.§;u§ as §@z§).§ >§())
         {
            _loc1_ = §3"E§.§3$0§;
         }
         if(this.§"#W§)
         {
            this.§"#W§.§`#8§.scaleX = _loc1_;
            this.§"#W§.§`#8§.scaleY = _loc1_;
         }
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         if(this.§"#W§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;!w§.movieClip;
      }
   }
}
