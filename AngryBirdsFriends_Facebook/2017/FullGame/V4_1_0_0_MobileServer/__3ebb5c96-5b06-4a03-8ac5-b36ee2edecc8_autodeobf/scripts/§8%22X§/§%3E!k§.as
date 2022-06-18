package §8"X§
{
   import §%#A§.§,#w§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §94§.§'!8§;
   import §<"1§.§'"S§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §];§.§&'§;
   import §];§.§-!t§;
   
   public class §>!k§ extends §'!8§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      private var §'#W§:§&'§;
      
      public function §>!k§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'#W§ = new §&'§(this,§,#w§(§?Q§.getItemByName("Button_NextLevel")),§-!t§.§ "D§,§`]§(AngryBirdsBase.singleton.dataModel).§#"r§,§`]§(AngryBirdsBase.singleton.dataModel).§>p§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = §-!t§.§ "D§.§4!y§(mLevelManager.currentLevel);
         if(_loc2_)
         {
            this.§'#W§.activate(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§'#W§.deactivate();
      }
      
      protected function §'!1§() : void
      {
      }
      
      override protected function getCutSceneState() : String
      {
         return §1!a§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §`$>§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §^!E§.STATE_NAME;
      }
      
      override public function prepareToLoadNextClassicLevel() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §`!Q§).previousLevel = mLevelManager.currentLevel;
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(!_loc1_)
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_MightyEagle") as §,#w§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(true);
         }
         else
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).mClip.unlocksIn.visible = !§-!t§.§ "D§.isLevelOpen(_loc1_);
         }
         (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(false);
         _loc1_ = §-!t§.§ "D§.§%#p§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_Menu") as §,#w§).x = §49§[0];
            (§?Q§.getItemByName("Button_Replay") as §,#w§).x = §49§[1];
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).x = §49§[2];
         }
         else
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_Menu") as §,#w§).x = §49§[0];
            (§?Q§.getItemByName("Button_Replay") as §,#w§).x = §49§[1];
            (§?Q§.getItemByName("Button_MightyEagle") as §,#w§).x = §49§[2];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(mLevelManager.isCutSceneNext())
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§'#W§.§`K§)
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§'#W§.§<"+§)
               {
                  this.§'#W§.§0"r§();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§'#W§.update();
      }
      
      override public function getNextIdentifier() : String
      {
         return §-!t§.§ "D§.§%#p§(mLevelManager.currentLevel);
      }
   }
}
