package §3=§
{
   import § "g§.§,#?§;
   import §!!t§.§'8§;
   import §!§.§="D§;
   import §"!>§.§8";§;
   import §"$=§.§'![§;
   import §"$=§.§[§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §3"G§.§16§;
   import §4!n§.§#$>§;
   import §4!n§.§'!,§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §=#§.§,O§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?!N§.AvatarCreatorPopup;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §1#Z§ extends §-"4§ implements §0"+§, §="D§, §["b§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§]%§ = null;
      
      private var mChapterTween1:§]%§ = null;
      
      private var mChapterTween2:§]%§ = null;
      
      private var mChapterTween3:§]%§ = null;
      
      private var §;!+§:§]%§ = null;
      
      private var §?!L§:§]%§ = null;
      
      private var §+"S§:§]%§ = null;
      
      private var §2!R§:§]%§ = null;
      
      private var §?#?§:§,O§;
      
      private var §7"[§:§,#?§;
      
      private var §?3§:Wallet;
      
      public function §1#Z§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_ChapterFacebookSelection[0]);
         for each(_loc1_ in ["Container_Chapter0","Container_Chapter1","Container_Chapter2","Container_Chapter3","Container_ChapterWonderland","Container_ChapterGoldenEggs"])
         {
            §<"`§.getItemByName(_loc1_).mClip.star.mouseEnabled = false;
            §<"`§.getItemByName(_loc1_).mClip.feather.mouseEnabled = false;
         }
         this.§7"[§ = §'"a§.§`!R§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+$A§.§@"i§().§="H§(§+$A§.§<"m§);
         var _loc2_:§#$>§ = §<"`§.getItemByName("AvatarPlaceHolder");
         var _loc3_:§#$>§ = §<"`§.getItemByName("AvatarSilhouette");
         if(this.§?#?§ == null)
         {
            this.§?#?§ = new §,O§((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).avatarString,_loc3_.mClip,false,"240");
            this.§?#?§.scaleX = 1;
            this.§?#?§.scaleY = 1;
            this.§?#?§.x = -80;
            this.§?#?§.y = -160;
            _loc2_.mClip.addChild(this.§?#?§);
         }
         else
         {
            _loc2_.mClip.addChild(this.§?#?§);
            this.§?#?§.§ "3§ = _loc3_.mClip;
            if(this.§?#?§.§>#Z§)
            {
               this.§?#?§.§ "3§.visible = false;
            }
         }
         _loc2_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§34§);
         if(param1 != §%"#§.STATE_NAME && param1 != §&P§.STATE_NAME && param1 != §!!V§.STATE_NAME)
         {
            (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§,y§,null);
            this.§7"[§.§"C§().addEventListener(§8";§.§]!T§,this.§3#u§);
            this.§7"[§.§"C§().loadItems(0,0);
         }
         AngryBirdsBase.singleton.playThemeMusic();
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.§ R§(_loc4_);
            _loc4_++;
         }
         var _loc5_:§[#5§ = mLevelManager.getEpisode(3);
         §<"`§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§=! §(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§8!`§(_loc5_),"Textfield_CollectedStarsGE");
         §<"`§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§8#C§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]-§(_loc5_),"Textfield_ME_ScoreGE");
         var _loc6_:§[#5§ = mLevelManager.getEpisodeByName("12");
         §<"`§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§=! §(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§8!`§(_loc6_),"Textfield_CollectedStars3");
         §<"`§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§8#C§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]-§(_loc6_),"Textfield_ME_Score3");
         var _loc7_:§[#5§ = mLevelManager.getEpisodeByName("4000");
         §<"`§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§=! §(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§8!`§(_loc7_),"Textfield_CollectedStarsW");
         §<"`§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§8#C§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]-§(_loc7_),"Textfield_ME_ScoreW");
         this.§2!R§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_ChapterWonderland").mClip,{
            "scaleX":1,
            "scaleY":1
         },null,0,§'#n§.§6"o§);
         this.§2!R§.§6X§();
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
         (§%"T§.§>$<§ as §'"a§).§^"P§();
         this.§[D§(new Wallet(this,true,true,false));
      }
      
      protected function §34§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§%#§.NORMAL,§9#5§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§2!]§();
         §<"`§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §<"`§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §<"`§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §<"`§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §<"`§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §<"`§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §<"`§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §<"`§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         this.§"[§(this.§?3§);
      }
      
      private function §2!]§() : void
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
         if(this.§;!+§ != null)
         {
            this.§;!+§.stop();
            this.§;!+§ = null;
         }
      }
      
      private function § R§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§[#5§ = null;
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
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§=! §(_loc4_);
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.§8!`§(_loc4_);
         var _loc7_:int = AngryBirdsBase.singleton.dataModel.userProgress.§8#C§(_loc4_);
         var _loc8_:int = AngryBirdsBase.singleton.dataModel.userProgress.§]-§(_loc4_);
         §<"`§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §<"`§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:AvatarCreatorPopup = null;
         if(int(param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            mLevelManager.loadLevel("1000-" + _loc5_);
            §%D§(StateCutScene.STATE_NAME);
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               §%D§(§6"H§.STATE_NAME);
               break;
            case "AVATAREDITOR":
               _loc6_ = new AvatarCreatorPopup(§%#§.NORMAL,§9#5§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
               break;
            case "showCredits":
               §%D§(§1U§.STATE_NAME);
               break;
            case "CHAPTER2":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               mLevelManager.selectEpisode(2);
               §%D§(§8$8§.STATE_NAME);
               break;
            case "CHAPTER3":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               mLevelManager.selectEpisode(5);
               §%D§(§8$8§.STATE_NAME);
               break;
            case "CHAPTER0":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               mLevelManager.selectEpisode(0);
               §%D§(§8$8§.STATE_NAME);
               break;
            case "CHAPTER1":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               mLevelManager.selectEpisode(1);
               §%D§(§8$8§.STATE_NAME);
               break;
            case "CHAPTERGE":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               mLevelManager.selectEpisode(3);
               §%D§(§&P§.STATE_NAME);
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween0 = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Chapter1").mClip,{
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
               this.mChapterTween1 = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween2 = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Chapter3").mClip,{
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
               this.mChapterTween3 = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§?!L§ != null)
               {
                  this.§?!L§.stop();
               }
               this.§?!L§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§?!L§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§?!L§ != null)
               {
                  this.§?!L§.stop();
               }
               this.§?!L§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.§?!L§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§;!+§ != null)
               {
                  this.§;!+§.stop();
               }
               this.§;!+§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§;!+§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§;!+§ != null)
               {
                  this.§;!+§.stop();
               }
               this.§;!+§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.§;!+§.play();
               break;
            case "SALEOVER":
               if(this.§+"S§ != null)
               {
                  this.§+"S§.stop();
               }
               this.§+"S§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§+"S§.play();
               break;
            case "SALEOUT":
               if(this.§+"S§ != null)
               {
                  this.§+"S§.stop();
               }
               this.§+"S§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.§+"S§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               mLevelManager.selectEpisode(4);
               §%D§(§'8§.STATE_NAME);
               break;
            case "CHAPTERWONDERLAND":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               mLevelManager.selectEpisode(6);
               §%D§(§!!V§.STATE_NAME);
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.§2!R§ != null)
               {
                  this.§2!R§.stop();
               }
               this.§2!R§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§2!R§.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.§2!R§ != null)
               {
                  this.§2!R§.stop();
               }
               this.§2!R§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§'#n§.§6"o§);
               this.§2!R§.play();
         }
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§0!y§;
      }
      
      public function §5!R§() : String
      {
         return null;
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      private function §3#u§(param1:§8";§) : void
      {
         this.§7"[§.§"C§().removeEventListener(§8";§.§]!T§,this.§3#u§);
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§,y§,this.§7"[§.§"C§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§%"T§.§>$<§ as §'"a§).§?$9§())
         {
            _loc1_ = §6"H§.§!d§;
         }
         if(this.§?3§)
         {
            this.§?3§.§5#k§.scaleX = _loc1_;
            this.§?3§.§5#k§.scaleY = _loc1_;
         }
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         if(this.§?3§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §<"`§.movieClip;
      }
   }
}
