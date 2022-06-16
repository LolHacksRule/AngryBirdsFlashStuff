package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §"!!§.§!"&§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §+$?§.§8V§;
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §3#T§.§'§;
   import §3#T§.§@"!§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §9#B§.§=!L§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §?P§.AvatarCreatorPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §`!e§.§#"L§;
   import §`7§.§ try§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §>$<§ extends §@"S§ implements §7E§, §8#§, §9#a§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§4[§ = null;
      
      private var mChapterTween1:§4[§ = null;
      
      private var mChapterTween2:§4[§ = null;
      
      private var mChapterTween3:§4[§ = null;
      
      private var §"o§:§4[§ = null;
      
      private var §`!j§:§4[§ = null;
      
      private var §="^§:§4[§ = null;
      
      private var §7#4§:§4[§ = null;
      
      private var §&!M§:§8V§;
      
      private var §5"§:§!"&§;
      
      private var §&"K§:Wallet;
      
      public function §>$<§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_ChapterFacebookSelection[0]);
         for each(_loc1_ in ["Container_Chapter0","Container_Chapter1","Container_Chapter2","Container_Chapter3","Container_ChapterWonderland","Container_ChapterGoldenEggs"])
         {
            §`!H§.getItemByName(_loc1_).mClip.star.mouseEnabled = false;
            §`!H§.getItemByName(_loc1_).mClip.feather.mouseEnabled = false;
         }
         this.§5"§ = §,A§.§""`§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § try§.§!!t§().§'2§(§ try§.§,"g§);
         var _loc2_:§@"!§ = §`!H§.getItemByName("AvatarPlaceHolder");
         var _loc3_:§@"!§ = §`!H§.getItemByName("AvatarSilhouette");
         if(this.§&!M§ == null)
         {
            this.§&!M§ = new §8V§((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).avatarString,_loc3_.mClip,false,"240");
            this.§&!M§.scaleX = 1;
            this.§&!M§.scaleY = 1;
            this.§&!M§.x = -80;
            this.§&!M§.y = -160;
            _loc2_.mClip.addChild(this.§&!M§);
         }
         else
         {
            _loc2_.mClip.addChild(this.§&!M§);
            this.§&!M§.§-$#§ = _loc3_.mClip;
            if(this.§&!M§.§"$4§)
            {
               this.§&!M§.§-$#§.visible = false;
            }
         }
         _loc2_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§^$3§);
         if(param1 != §false§.STATE_NAME && param1 != § !v§.STATE_NAME && param1 != §>N§.STATE_NAME)
         {
            (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§5#a§,null);
            this.§5"§.§3!-§().addEventListener(§#"L§.§-#0§,this.§92§);
            this.§5"§.§3!-§().loadItems(0,0);
         }
         AngryBirdsBase.singleton.playThemeMusic();
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.§#!J§(_loc4_);
            _loc4_++;
         }
         var _loc5_:§"m§ = mLevelManager.getEpisode(3);
         §`!H§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§1n§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]!u§(_loc5_),"Textfield_CollectedStarsGE");
         §`!H§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§2!1§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§&#c§(_loc5_),"Textfield_ME_ScoreGE");
         var _loc6_:§"m§ = mLevelManager.getEpisodeByName("12");
         §`!H§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§1n§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]!u§(_loc6_),"Textfield_CollectedStars3");
         §`!H§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§2!1§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§&#c§(_loc6_),"Textfield_ME_Score3");
         var _loc7_:§"m§ = mLevelManager.getEpisodeByName("4000");
         §`!H§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§1n§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]!u§(_loc7_),"Textfield_CollectedStarsW");
         §`!H§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§2!1§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§&#c§(_loc7_),"Textfield_ME_ScoreW");
         this.§7#4§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_ChapterWonderland").mClip,{
            "scaleX":1,
            "scaleY":1
         },null,0,§&"H§.§9"Y§);
         this.§7#4§.§@g§();
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§6"'§);
         (§3#U§.§9#^§ as §,A§).§?!,§();
         this.§[?§(new Wallet(this,true,true,false));
      }
      
      protected function §^$3§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§]"$§.NORMAL,§^"U§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;$;§();
         §`!H§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §`!H§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §`!H§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §`!H§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §`!H§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §`!H§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §`!H§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §`!H§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         this.§8!3§(this.§&"K§);
      }
      
      private function §;$;§() : void
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
         if(this.§"o§ != null)
         {
            this.§"o§.stop();
            this.§"o§ = null;
         }
      }
      
      private function §#!J§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§"m§ = null;
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
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§1n§(_loc4_);
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.§]!u§(_loc4_);
         var _loc7_:int = AngryBirdsBase.singleton.dataModel.userProgress.§2!1§(_loc4_);
         var _loc8_:int = AngryBirdsBase.singleton.dataModel.userProgress.§&#c§(_loc4_);
         §`!H§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §`!H§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:AvatarCreatorPopup = null;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            mLevelManager.loadLevel("1000-" + _loc5_);
            §1"h§(StateCutScene.STATE_NAME);
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               §1"h§(§>"c§.STATE_NAME);
               break;
            case "AVATAREDITOR":
               _loc6_ = new AvatarCreatorPopup(§]"$§.NORMAL,§^"U§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
               break;
            case "showCredits":
               §1"h§(§ !K§.STATE_NAME);
               break;
            case "CHAPTER2":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               mLevelManager.selectEpisode(2);
               §1"h§(§1S§.STATE_NAME);
               break;
            case "CHAPTER3":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               mLevelManager.selectEpisode(5);
               §1"h§(§1S§.STATE_NAME);
               break;
            case "CHAPTER0":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               mLevelManager.selectEpisode(0);
               §1"h§(§1S§.STATE_NAME);
               break;
            case "CHAPTER1":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               mLevelManager.selectEpisode(1);
               §1"h§(§1S§.STATE_NAME);
               break;
            case "CHAPTERGE":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               mLevelManager.selectEpisode(3);
               §1"h§(§ !v§.STATE_NAME);
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween0 = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Chapter1").mClip,{
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
               this.mChapterTween1 = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween2 = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Chapter3").mClip,{
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
               this.mChapterTween3 = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§`!j§ != null)
               {
                  this.§`!j§.stop();
               }
               this.§`!j§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§`!j§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§`!j§ != null)
               {
                  this.§`!j§.stop();
               }
               this.§`!j§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.§`!j§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§"o§ != null)
               {
                  this.§"o§.stop();
               }
               this.§"o§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§"o§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§"o§ != null)
               {
                  this.§"o§.stop();
               }
               this.§"o§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.§"o§.play();
               break;
            case "SALEOVER":
               if(this.§="^§ != null)
               {
                  this.§="^§.stop();
               }
               this.§="^§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§="^§.play();
               break;
            case "SALEOUT":
               if(this.§="^§ != null)
               {
                  this.§="^§.stop();
               }
               this.§="^§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.§="^§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               mLevelManager.selectEpisode(4);
               §1"h§(§=!L§.STATE_NAME);
               break;
            case "CHAPTERWONDERLAND":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               mLevelManager.selectEpisode(6);
               §1"h§(§>N§.STATE_NAME);
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.§7#4§ != null)
               {
                  this.§7#4§.stop();
               }
               this.§7#4§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§7#4§.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.§7#4§ != null)
               {
                  this.§7#4§.stop();
               }
               this.§7#4§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§&"H§.§9"Y§);
               this.§7#4§.play();
         }
      }
      
      public function §!3§() : String
      {
         return §`"x§.§%z§;
      }
      
      public function §0'§() : String
      {
         return null;
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      private function §92§(param1:§#"L§) : void
      {
         this.§5"§.§3!-§().removeEventListener(§#"L§.§-#0§,this.§92§);
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§5#a§,this.§5"§.§3!-§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§3#U§.§9#^§ as §,A§).§`$<§())
         {
            _loc1_ = §>"c§.§ "'§;
         }
         if(this.§&"K§)
         {
            this.§&"K§.§=#-§.scaleX = _loc1_;
            this.§&"K§.§=#-§.scaleY = _loc1_;
         }
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         if(this.§&"K§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §`!H§.movieClip;
      }
   }
}
