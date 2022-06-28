package §0o§
{
   import § !k§.§0!e§;
   import §!!§.LevelManager;
   import §&!h§.§]V§;
   import §&9§.§1?§;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §9!Q§.§7o§;
   import §=R§.§7!"§;
   import §`M§.§,c§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §5!S§ extends §0!e§
   {
       
      
      private var §#A§:Array;
      
      public function §5!S§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§#A§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§#A§.push((§`-§.getItemByName("Button_Menu") as §,c§).x);
         this.§#A§.push((§`-§.getItemByName("Button_Replay") as §,c§).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§"!0§);
         §4!]§.§8C§.background.§&[§();
         if(LevelManager.§5!K§().name == "1000")
         {
            §`-§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_NextLevel") as §,c§).setComponentVisualState(param1);
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = LevelManager.§=L§();
         if(_loc1_ && !AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_) || !AngryBirdsFP11.sUserProgress.§+G§(LevelManager.§^!F§))
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
         }
         else if(LevelManager.§-!q§())
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
         }
         else
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(true);
         }
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "FRIENDS_BUTTON":
               _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
               §]V§.§ 4§(_loc4_);
               §[!m§.§1H§.§2!3§();
               _loc5_ = new URLRequest(_loc4_);
               navigateToURL(_loc5_,"_blank");
               break;
            case "SHARE_DEFAULT":
               §1?§.§>!X§("shareDefault",LevelManager.§^!F§,LevelManager.§5!K§().writtenName + "-" + §+!g§.§,!X§(LevelManager.§^!F§),0,false);
               break;
            case "EMBED":
               §7o§.§`J§(LevelManager.§^!F§,LevelManager.§5!K§().writtenName + "-" + §+!g§.§,!X§(LevelManager.§^!F§),§4!]§.§=`§.getScore(),"");
         }
      }
   }
}
