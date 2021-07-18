package §,!=§
{
   import §"!U§.TabbedShopPopup;
   import §#v§.§#!?§;
   import §#v§.§=!Z§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§>$$§;
   import §'U§.§]#[§;
   import §,n§.§^$"§;
   import §-"i§.§%!'§;
   import §0#d§.§<#u§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §8§.§ ;§;
   import §8§.§#$+§;
   import §8§.§,#`§;
   import §9!s§.§8!P§;
   import §;4§.§9X§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?"R§.AvatarCreatorPopup;
   import §?"R§.§[W§;
   import §?-§.§9n§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import flash.events.MouseEvent;
   
   public class §-!1§ extends §7"S§ implements § 1§, §@#@§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§+,§ = null;
      
      private var mChapterTween1:§+,§ = null;
      
      private var mChapterTween2:§+,§ = null;
      
      private var mChapterTween3:§+,§ = null;
      
      private var §]#O§:§+,§ = null;
      
      private var §<3§:§+,§ = null;
      
      private var §##o§:§+,§ = null;
      
      private var §[!A§:§+,§ = null;
      
      private var §1#l§:§^$"§;
      
      private var §;r§:§9X§;
      
      public function §-!1§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_ChapterFacebookSelection[0]);
         for each(_loc1_ in ["Container_Chapter0","Container_Chapter1","Container_Chapter2","Container_Chapter3","Container_ChapterWonderland","Container_ChapterGoldenEggs"])
         {
            §!$§.getItemByName(_loc1_).mClip.star.mouseEnabled = false;
            §!$§.getItemByName(_loc1_).mClip.feather.mouseEnabled = false;
         }
         this.§;r§ = §8G§.§6!r§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-#A§.§6$2§().§,!V§(§-#A§.§6#f§);
         (§>"$§.§<_§ as §8G§).§&#§.§`"n§(true);
         var _loc2_:§>$$§ = §!$§.getItemByName("AvatarPlaceHolder");
         var _loc3_:§>$$§ = §!$§.getItemByName("AvatarSilhouette");
         if(this.§1#l§ == null)
         {
            this.§1#l§ = new §^$"§((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).avatarString,_loc3_.mClip,false,"240");
            this.§1#l§.scaleX = 1;
            this.§1#l§.scaleY = 1;
            this.§1#l§.x = -80;
            this.§1#l§.y = -160;
            _loc2_.mClip.addChild(this.§1#l§);
         }
         else
         {
            _loc2_.mClip.addChild(this.§1#l§);
            this.§1#l§.§["v§ = _loc3_.mClip;
            if(this.§1#l§.§+!z§)
            {
               this.§1#l§.§["v§.visible = false;
            }
         }
         _loc2_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§9#T§);
         if(param1 != §=!-§.STATE_NAME && param1 != §!a§.STATE_NAME && param1 != §5#J§.STATE_NAME)
         {
            (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§'$7§,null);
            this.§;r§.§%!P§().addEventListener(§8!P§.§,"m§,this.§7!B§);
            this.§;r§.§%!P§().loadItems(0,0);
         }
         this.playThemeMusic();
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.§>!z§(_loc4_);
            _loc4_++;
         }
         var _loc5_:§=!Z§ = mLevelManager.getEpisode(3);
         §!$§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§1#N§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§5#A§(_loc5_),"Textfield_CollectedStarsGE");
         §!$§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§;]§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§ !m§(_loc5_),"Textfield_ME_ScoreGE");
         var _loc6_:§=!Z§ = mLevelManager.getEpisodeByName("12");
         §!$§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§1#N§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§5#A§(_loc6_),"Textfield_CollectedStars3");
         §!$§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§;]§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§ !m§(_loc6_),"Textfield_ME_Score3");
         var _loc7_:§=!Z§ = mLevelManager.getEpisodeByName("4000");
         §!$§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§1#N§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§5#A§(_loc7_),"Textfield_CollectedStarsW");
         §!$§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§;]§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§ !m§(_loc7_),"Textfield_ME_ScoreW");
         this.§[!A§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_ChapterWonderland").mClip,{
            "scaleX":1,
            "scaleY":1
         },null,0,§""Z§.§+!O§);
         this.§[!A§.§?#$§();
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§4$&§);
         (§>"$§.§<_§ as §8G§).§7!k§();
      }
      
      protected function §9#T§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§[W§.NORMAL,§<d§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§,#`§ = §8G§.§%#S§.§[A§();
         _loc1_.§6x§(§ ;§.§0e§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<!Q§();
         §!$§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §!$§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §!$§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §!$§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §!$§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §!$§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §!$§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §!$§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
      }
      
      private function §<!Q§() : void
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
         if(this.§]#O§ != null)
         {
            this.§]#O§.stop();
            this.§]#O§ = null;
         }
      }
      
      private function §>!z§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§=!Z§ = null;
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
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§1#N§(_loc4_);
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.§5#A§(_loc4_);
         var _loc7_:int = AngryBirdsBase.singleton.dataModel.userProgress.§;]§(_loc4_);
         var _loc8_:int = AngryBirdsBase.singleton.dataModel.userProgress.§ !m§(_loc4_);
         §!$§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §!$§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:AvatarCreatorPopup = null;
         if(int(param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            mLevelManager.loadLevel("1000-" + _loc5_);
            §7P§(StateCutScene.STATE_NAME);
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               §7P§(§[!'§.STATE_NAME);
               break;
            case "AVATAREDITOR":
               _loc6_ = new AvatarCreatorPopup(§[W§.NORMAL,§<d§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
               break;
            case "showCredits":
               §7P§(§"$6§.STATE_NAME);
               break;
            case "CHAPTER2":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               mLevelManager.selectEpisode(2);
               §7P§(§<!B§.STATE_NAME);
               break;
            case "CHAPTER3":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               mLevelManager.selectEpisode(5);
               §7P§(§<!B§.STATE_NAME);
               break;
            case "CHAPTER0":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               mLevelManager.selectEpisode(0);
               §7P§(§<!B§.STATE_NAME);
               break;
            case "CHAPTER1":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               mLevelManager.selectEpisode(1);
               §7P§(§<!B§.STATE_NAME);
               break;
            case "CHAPTERGE":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               mLevelManager.selectEpisode(3);
               §7P§(§!a§.STATE_NAME);
               break;
            case "SALE":
               if(§9n§.§""i§ != null)
               {
                  §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
                  AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§[W§.NORMAL,§<d§.DEFAULT));
               }
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween0 = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Chapter1").mClip,{
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
               this.mChapterTween1 = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween2 = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Chapter3").mClip,{
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
               this.mChapterTween3 = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§<3§ != null)
               {
                  this.§<3§.stop();
               }
               this.§<3§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§<3§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§<3§ != null)
               {
                  this.§<3§.stop();
               }
               this.§<3§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.§<3§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§]#O§ != null)
               {
                  this.§]#O§.stop();
               }
               this.§]#O§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§]#O§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§]#O§ != null)
               {
                  this.§]#O§.stop();
               }
               this.§]#O§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.§]#O§.play();
               break;
            case "SALEOVER":
               if(this.§##o§ != null)
               {
                  this.§##o§.stop();
               }
               this.§##o§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§##o§.play();
               break;
            case "SALEOUT":
               if(this.§##o§ != null)
               {
                  this.§##o§.stop();
               }
               this.§##o§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.§##o§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               mLevelManager.selectEpisode(4);
               §7P§(§%!'§.STATE_NAME);
               break;
            case "CHAPTERWONDERLAND":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               mLevelManager.selectEpisode(6);
               §7P§(§5#J§.STATE_NAME);
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.§[!A§ != null)
               {
                  this.§[!A§.stop();
               }
               this.§[!A§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§[!A§.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.§[!A§ != null)
               {
                  this.§[!A§.stop();
               }
               this.§[!A§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§""Z§.§+!O§);
               this.§[!A§.play();
         }
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§>#@§;
      }
      
      public function §7">§() : String
      {
         return null;
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
      
      private function §7!B§(param1:§8!P§) : void
      {
         this.§;r§.§%!P§().removeEventListener(§8!P§.§,"m§,this.§7!B§);
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§'$7§,this.§;r§.§%!P§().data);
      }
   }
}
