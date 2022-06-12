package §2";§
{
   import § !j§.§4#c§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §0!s§.§]"Y§;
   import §0"B§.§6$5§;
   import §1"l§.§`""§;
   import §3+§.§;!H§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §>z§.§#"l§;
   import §>z§.AvatarCreatorPopup;
   import §?!]§.§2#_§;
   import §?!a§.§>#,§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §3,§ extends §7!z§ implements §,!n§, §%!#§, §&>§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§7$C§ = null;
      
      private var mChapterTween1:§7$C§ = null;
      
      private var mChapterTween2:§7$C§ = null;
      
      private var mChapterTween3:§7$C§ = null;
      
      private var § i§:§7$C§ = null;
      
      private var §[!y§:§7$C§ = null;
      
      private var §1"I§:§7$C§ = null;
      
      private var §+"^§:§7$C§ = null;
      
      private var §1#0§:§>#,§;
      
      private var §?"v§:§6$5§;
      
      private var §1!B§:Wallet;
      
      public function §3,§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_ChapterFacebookSelection[0]);
         for each(_loc1_ in ["Container_Chapter0","Container_Chapter1","Container_Chapter2","Container_Chapter3","Container_ChapterWonderland","Container_ChapterGoldenEggs"])
         {
            §[$5§.getItemByName(_loc1_).mClip.star.mouseEnabled = false;
            §[$5§.getItemByName(_loc1_).mClip.feather.mouseEnabled = false;
         }
         this.§?"v§ = § #v§.§,"§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §!!K§.§%#S§().§4"8§(§!!K§.§ !r§);
         var _loc2_:§8#=§ = §[$5§.getItemByName("AvatarPlaceHolder");
         var _loc3_:§8#=§ = §[$5§.getItemByName("AvatarSilhouette");
         if(this.§1#0§ == null)
         {
            this.§1#0§ = new §>#,§((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).avatarString,_loc3_.mClip,false,"240");
            this.§1#0§.scaleX = 1;
            this.§1#0§.scaleY = 1;
            this.§1#0§.x = -80;
            this.§1#0§.y = -160;
            _loc2_.mClip.addChild(this.§1#0§);
         }
         else
         {
            _loc2_.mClip.addChild(this.§1#0§);
            this.§1#0§.§9[§ = _loc3_.mClip;
            if(this.§1#0§.§+!S§)
            {
               this.§1#0§.§9[§.visible = false;
            }
         }
         _loc2_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§!"W§);
         if(param1 != §`"A§.STATE_NAME && param1 != §8!N§.STATE_NAME && param1 != §+!I§.STATE_NAME)
         {
            (§7n§.§-$<§ as § #v§).§<z§(§`""§.§&!&§,null);
            this.§?"v§.§"X§().addEventListener(§2#_§.§]"I§,this.§9$"§);
            this.§?"v§.§"X§().loadItems(0,0);
         }
         AngryBirdsBase.singleton.playThemeMusic();
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.§5"Y§(_loc4_);
            _loc4_++;
         }
         var _loc5_:§ T§ = mLevelManager.getEpisode(3);
         §[$5§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§ $3§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§["B§(_loc5_),"Textfield_CollectedStarsGE");
         §[$5§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§`c§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]""§(_loc5_),"Textfield_ME_ScoreGE");
         var _loc6_:§ T§ = mLevelManager.getEpisodeByName("12");
         §[$5§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§ $3§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§["B§(_loc6_),"Textfield_CollectedStars3");
         §[$5§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§`c§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]""§(_loc6_),"Textfield_ME_Score3");
         var _loc7_:§ T§ = mLevelManager.getEpisodeByName("4000");
         §[$5§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§ $3§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§["B§(_loc7_),"Textfield_CollectedStarsW");
         §[$5§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§`c§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]""§(_loc7_),"Textfield_ME_ScoreW");
         this.§+"^§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_ChapterWonderland").mClip,{
            "scaleX":1,
            "scaleY":1
         },null,0,§"!&§.§1!6§);
         this.§+"^§.§%"#§();
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
         (§7n§.§-$<§ as § #v§).§!$9§();
         this.§0!A§(new Wallet(this,true,true,false));
      }
      
      protected function §!"W§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§#"l§.NORMAL,§]"Y§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+"7§();
         §[$5§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §[$5§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §[$5§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §[$5§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §[$5§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §[$5§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §[$5§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §[$5§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         this.§&!U§(this.§1!B§);
      }
      
      private function §+"7§() : void
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
         if(this.§ i§ != null)
         {
            this.§ i§.stop();
            this.§ i§ = null;
         }
      }
      
      private function §5"Y§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§ T§ = null;
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
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§ $3§(_loc4_);
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.§["B§(_loc4_);
         var _loc7_:int = AngryBirdsBase.singleton.dataModel.userProgress.§`c§(_loc4_);
         var _loc8_:int = AngryBirdsBase.singleton.dataModel.userProgress.§]""§(_loc4_);
         §[$5§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §[$5§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:AvatarCreatorPopup = null;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            mLevelManager.loadLevel("1000-" + _loc5_);
            §1!L§(StateCutScene.STATE_NAME);
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               §1!L§(§95§.STATE_NAME);
               break;
            case "AVATAREDITOR":
               _loc6_ = new AvatarCreatorPopup(§#"l§.NORMAL,§]"Y§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
               break;
            case "showCredits":
               §1!L§(§'#J§.STATE_NAME);
               break;
            case "CHAPTER2":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               mLevelManager.selectEpisode(2);
               §1!L§(§9#7§.STATE_NAME);
               break;
            case "CHAPTER3":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               mLevelManager.selectEpisode(5);
               §1!L§(§9#7§.STATE_NAME);
               break;
            case "CHAPTER0":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               mLevelManager.selectEpisode(0);
               §1!L§(§9#7§.STATE_NAME);
               break;
            case "CHAPTER1":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               mLevelManager.selectEpisode(1);
               §1!L§(§9#7§.STATE_NAME);
               break;
            case "CHAPTERGE":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               mLevelManager.selectEpisode(3);
               §1!L§(§8!N§.STATE_NAME);
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween0 = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Chapter1").mClip,{
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
               this.mChapterTween1 = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween2 = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Chapter3").mClip,{
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
               this.mChapterTween3 = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§[!y§ != null)
               {
                  this.§[!y§.stop();
               }
               this.§[!y§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§[!y§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§[!y§ != null)
               {
                  this.§[!y§.stop();
               }
               this.§[!y§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.§[!y§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§ i§ != null)
               {
                  this.§ i§.stop();
               }
               this.§ i§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§ i§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§ i§ != null)
               {
                  this.§ i§.stop();
               }
               this.§ i§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.§ i§.play();
               break;
            case "SALEOVER":
               if(this.§1"I§ != null)
               {
                  this.§1"I§.stop();
               }
               this.§1"I§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§1"I§.play();
               break;
            case "SALEOUT":
               if(this.§1"I§ != null)
               {
                  this.§1"I§.stop();
               }
               this.§1"I§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.§1"I§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               mLevelManager.selectEpisode(4);
               §1!L§(§;!H§.STATE_NAME);
               break;
            case "CHAPTERWONDERLAND":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               mLevelManager.selectEpisode(6);
               §1!L§(§+!I§.STATE_NAME);
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.§+"^§ != null)
               {
                  this.§+"^§.stop();
               }
               this.§+"^§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§+"^§.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.§+"^§ != null)
               {
                  this.§+"^§.stop();
               }
               this.§+"^§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§"!&§.§1!6§);
               this.§+"^§.play();
         }
      }
      
      public function §;!=§() : String
      {
         return §0I§.§9#§;
      }
      
      public function §#"!§() : String
      {
         return null;
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      private function §9$"§(param1:§2#_§) : void
      {
         this.§?"v§.§"X§().removeEventListener(§2#_§.§]"I§,this.§9$"§);
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§&!&§,this.§?"v§.§"X§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§7n§.§-$<§ as § #v§).§]#p§())
         {
            _loc1_ = §95§.§^"_§;
         }
         if(this.§1!B§)
         {
            this.§1!B§.§+F§.scaleX = _loc1_;
            this.§1!B§.§+F§.scaleY = _loc1_;
         }
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         if(this.§1!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §[$5§.movieClip;
      }
   }
}
