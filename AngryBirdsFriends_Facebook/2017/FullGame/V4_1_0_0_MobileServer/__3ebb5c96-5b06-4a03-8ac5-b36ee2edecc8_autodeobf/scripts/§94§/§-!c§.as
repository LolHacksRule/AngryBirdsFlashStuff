package §94§
{
   import § o§.§%"!§;
   import § o§.AvatarCreatorPopup;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&$!§.§+#!§;
   import §+#t§.§+-§;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6"r§.§!#A§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8"X§.§^!E§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<"1§.§'"S§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §@!n§.§0!L§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §[§.§]"w§;
   import §[G§.§9#R§;
   import §`!R§.§&"8§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-!c§ extends §`"z§ implements §7#M§, §]"w§, §8[§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§-#C§ = null;
      
      private var mChapterTween1:§-#C§ = null;
      
      private var mChapterTween2:§-#C§ = null;
      
      private var mChapterTween3:§-#C§ = null;
      
      private var §8"F§:§-#C§ = null;
      
      private var §!"B§:§-#C§ = null;
      
      private var §#n§:§-#C§ = null;
      
      private var §-!G§:§-#C§ = null;
      
      private var §,!,§:§+-§;
      
      private var §4#3§:§9#R§;
      
      private var §3!B§:Wallet;
      
      public function §-!c§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_ChapterFacebookSelection[0]);
         for each(_loc1_ in ["Container_Chapter0","Container_Chapter1","Container_Chapter2","Container_Chapter3","Container_ChapterWonderland","Container_ChapterGoldenEggs"])
         {
            §?Q§.getItemByName(_loc1_).mClip.star.mouseEnabled = false;
            §?Q§.getItemByName(_loc1_).mClip.feather.mouseEnabled = false;
         }
         this.§4#3§ = §-#+§.§03§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §?!=§.§3!q§().§'"7§(§?!=§.§2"R§);
         var _loc2_:§[!K§ = §?Q§.getItemByName("AvatarPlaceHolder");
         var _loc3_:§[!K§ = §?Q§.getItemByName("AvatarSilhouette");
         if(this.§,!,§ == null)
         {
            this.§,!,§ = new §+-§((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).avatarString,_loc3_.mClip,false,"240");
            this.§,!,§.scaleX = 1;
            this.§,!,§.scaleY = 1;
            this.§,!,§.x = -80;
            this.§,!,§.y = -160;
            _loc2_.mClip.addChild(this.§,!,§);
         }
         else
         {
            _loc2_.mClip.addChild(this.§,!,§);
            this.§,!,§.§%$§ = _loc3_.mClip;
            if(this.§,!,§.§0"p§)
            {
               this.§,!,§.§%$§.visible = false;
            }
         }
         _loc2_.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§>!t§);
         if(param1 != §'!!§.STATE_NAME && param1 != §<![§.STATE_NAME && param1 != §,#E§.STATE_NAME)
         {
            (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§[#[§,null);
            this.§4#3§.§&#_§().addEventListener(§0!L§.§@>§,this.§,h§);
            this.§4#3§.§&#_§().loadItems(0,0);
         }
         AngryBirdsBase.singleton.playThemeMusic();
         var _loc4_:int = 0;
         while(_loc4_ < 4)
         {
            this.§@5§(_loc4_);
            _loc4_++;
         }
         var _loc5_:§9##§ = mLevelManager.getEpisode(3);
         §?Q§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§@"V§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§%n§(_loc5_),"Textfield_CollectedStarsGE");
         §?Q§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§8M§(_loc5_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§26§(_loc5_),"Textfield_ME_ScoreGE");
         var _loc6_:§9##§ = mLevelManager.getEpisodeByName("12");
         §?Q§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§@"V§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§%n§(_loc6_),"Textfield_CollectedStars3");
         §?Q§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§8M§(_loc6_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§26§(_loc6_),"Textfield_ME_Score3");
         var _loc7_:§9##§ = mLevelManager.getEpisodeByName("4000");
         §?Q§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§@"V§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§%n§(_loc7_),"Textfield_CollectedStarsW");
         §?Q§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§8M§(_loc7_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§26§(_loc7_),"Textfield_ME_ScoreW");
         this.§-!G§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_ChapterWonderland").mClip,{
            "scaleX":1,
            "scaleY":1
         },null,0,§6"w§.§@"!§);
         this.§-!G§.§=`§();
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§ #Y§);
         (§!#A§.§>q§ as §-#+§).§7"E§();
         this.§##Y§(new Wallet(this,true,true,false));
      }
      
      protected function §>!t§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         var _loc2_:AvatarCreatorPopup = new AvatarCreatorPopup(§%"!§.NORMAL,§^#o§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§!!m§();
         §?Q§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §?Q§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §?Q§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §?Q§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §?Q§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §?Q§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §?Q§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §?Q§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         this.§"#H§(this.§3!B§);
      }
      
      private function §!!m§() : void
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
         if(this.§8"F§ != null)
         {
            this.§8"F§.stop();
            this.§8"F§ = null;
         }
      }
      
      private function §@5§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§9##§ = null;
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
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§@"V§(_loc4_);
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.§%n§(_loc4_);
         var _loc7_:int = AngryBirdsBase.singleton.dataModel.userProgress.§8M§(_loc4_);
         var _loc8_:int = AngryBirdsBase.singleton.dataModel.userProgress.§26§(_loc4_);
         §?Q§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §?Q§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc5_:int = 0;
         var _loc6_:AvatarCreatorPopup = null;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            mLevelManager.loadLevel("1000-" + _loc5_);
            §5"p§(StateCutScene.STATE_NAME);
         }
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
               §5"p§(§>!&§.STATE_NAME);
               break;
            case "AVATAREDITOR":
               _loc6_ = new AvatarCreatorPopup(§%"!§.NORMAL,§^#o§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
               break;
            case "showCredits":
               §5"p§(§@"X§.STATE_NAME);
               break;
            case "CHAPTER2":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               mLevelManager.selectEpisode(2);
               §5"p§(§7!c§.STATE_NAME);
               break;
            case "CHAPTER3":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               mLevelManager.selectEpisode(5);
               §5"p§(§7!c§.STATE_NAME);
               break;
            case "CHAPTER0":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               mLevelManager.selectEpisode(0);
               §5"p§(§7!c§.STATE_NAME);
               break;
            case "CHAPTER1":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               mLevelManager.selectEpisode(1);
               §5"p§(§7!c§.STATE_NAME);
               break;
            case "CHAPTERGE":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               mLevelManager.selectEpisode(3);
               §5"p§(§<![§.STATE_NAME);
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween0 = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Chapter1").mClip,{
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
               this.mChapterTween1 = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween2 = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Chapter3").mClip,{
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
               this.mChapterTween3 = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§!"B§ != null)
               {
                  this.§!"B§.stop();
               }
               this.§!"B§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§!"B§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§!"B§ != null)
               {
                  this.§!"B§.stop();
               }
               this.§!"B§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.§!"B§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§8"F§ != null)
               {
                  this.§8"F§.stop();
               }
               this.§8"F§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§8"F§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§8"F§ != null)
               {
                  this.§8"F§.stop();
               }
               this.§8"F§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.§8"F§.play();
               break;
            case "SALEOVER":
               if(this.§#n§ != null)
               {
                  this.§#n§.stop();
               }
               this.§#n§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§#n§.play();
               break;
            case "SALEOUT":
               if(this.§#n§ != null)
               {
                  this.§#n§.stop();
               }
               this.§#n§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.§#n§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               mLevelManager.selectEpisode(4);
               §5"p§(§^!E§.STATE_NAME);
               break;
            case "CHAPTERWONDERLAND":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               mLevelManager.selectEpisode(6);
               §5"p§(§,#E§.STATE_NAME);
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.§-!G§ != null)
               {
                  this.§-!G§.stop();
               }
               this.§-!G§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.2);
               this.§-!G§.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.§-!G§ != null)
               {
                  this.§-!G§.stop();
               }
               this.§-!G§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§6"w§.§@"!§);
               this.§-!G§.play();
         }
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§9!%§;
      }
      
      public function §>"-§() : String
      {
         return null;
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
      
      private function §,h§(param1:§0!L§) : void
      {
         this.§4#3§.§&#_§().removeEventListener(§0!L§.§@>§,this.§,h§);
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§[#[§,this.§4#3§.§&#_§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§!#A§.§>q§ as §-#+§).§3#3§())
         {
            _loc1_ = §>!&§.§<!3§;
         }
         if(this.§3!B§)
         {
            this.§3!B§.§[!R§.scaleX = _loc1_;
            this.§3!B§.§[!R§.scaleY = _loc1_;
         }
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         if(this.§3!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §?Q§.movieClip;
      }
   }
}
