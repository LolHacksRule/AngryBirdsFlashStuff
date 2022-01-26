package §?'§
{
   import §+N§.§!j§;
   import §+N§.§]G§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;f§.§9y§;
   import §;f§.§^o§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §@!%§.§+8§;
   import §`<§.§,!6§;
   import §in§.§%K§;
   
   public class §0k§ extends §,!6§
   {
      
      public static const §`%§:String = "LevelSelectionState";
       
      
      private var mChapterTween0:§]G§ = null;
      
      private var mChapterTween1:§]G§ = null;
      
      private var mChapterTween2:§]G§ = null;
      
      public function §0k§(param1:Boolean, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_LevelSelection[0]);
      }
      
      override public function activate() : void
      {
         var _loc4_:§^o§ = null;
         super.activate();
         if(§+8§.§-2§)
         {
            §+8§.§-2§.start();
         }
         §8[§.§import§.§5q§(false);
         §8[§.§import§.clearLevel();
         var _loc1_:Array = ["1-1","1-2","1-3"];
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < 3)
         {
            _loc5_ = AngryBirdsFP11.§[l§.§?p§(_loc1_[_loc6_]);
            if(_loc4_ = §&#§.§@y§(_loc1_[_loc6_]))
            {
               _loc2_ = _loc4_.§>V§;
               _loc3_ = _loc4_.§7!B§;
            }
            §<o§.getItemByName("BestStar_" + _loc6_).mClip.gotoAndStop(this.§5!!§(_loc5_,_loc2_,_loc3_));
            _loc6_++;
         }
      }
      
      private function §5!!§(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = 4;
         if(param2 == 0 || param3 == 0)
         {
            return _loc4_;
         }
         if(param1 >= param2)
         {
            _loc4_ = 1;
         }
         else if(param1 >= param3)
         {
            _loc4_ = 2;
         }
         else if(param1 > 0)
         {
            _loc4_ = 3;
         }
         return _loc4_;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@t§();
         §<o§.getItemByName("Container_Level0").mClip.scaleX = 1;
         §<o§.getItemByName("Container_Level0").mClip.scaleY = 1;
         §<o§.getItemByName("Container_Level1").mClip.scaleX = 1;
         §<o§.getItemByName("Container_Level1").mClip.scaleY = 1;
         §<o§.getItemByName("Container_Level2").mClip.scaleX = 1;
         §<o§.getItemByName("Container_Level2").mClip.scaleY = 1;
      }
      
      private function §@t§() : void
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
      }
      
      private function §"!2§(param1:int) : void
      {
         var _loc2_:§9y§ = §&#§.§0+§(param1);
         if(_loc2_ == null)
         {
            return;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "ONFACEBOOKUP":
               §@A§.§^z§.§&k§("ABLotus");
               break;
            case "ONCREDITSUP":
               mNextState = §2!!§.§`%§;
               break;
            case "LEVEL0":
               §2;§.playSound("Menu_Confirm");
               §&#§.§9,§(§&#§.§9j§("1-1"));
               mNextState = §`0§.§`%§;
               break;
            case "LEVEL1":
               §2;§.playSound("Menu_Confirm");
               §&#§.§9,§(§&#§.§9j§("1-2"));
               mNextState = §`0§.§`%§;
               break;
            case "LEVEL2":
               §2;§.playSound("Menu_Confirm");
               §&#§.§9,§(§&#§.§9j§("1-3"));
               mNextState = §`0§.§`%§;
               break;
            case "LEVEL0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §!j§.§5!B§.§+I§(§<o§.getItemByName("Container_Level0").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween0.play();
               break;
            case "LEVEL0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §!j§.§5!B§.§+I§(§<o§.getItemByName("Container_Level0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§!j§.§5!?§);
               this.mChapterTween0.play();
               break;
            case "LEVEL1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §!j§.§5!B§.§+I§(§<o§.getItemByName("Container_Level1").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween1.play();
               break;
            case "LEVEL1OUT":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §!j§.§5!B§.§+I§(§<o§.getItemByName("Container_Level1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§!j§.§5!?§);
               this.mChapterTween1.play();
               break;
            case "LEVEL2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §!j§.§5!B§.§+I§(§<o§.getItemByName("Container_Level2").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween2.play();
               break;
            case "LEVEL2OUT":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §!j§.§5!B§.§+I§(§<o§.getItemByName("Container_Level2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§!j§.§5!?§);
               this.mChapterTween2.play();
               break;
            case "ONCREDITSOVER":
               break;
            case "ONCREDITSOUT":
               break;
            case "ONFACEBOOKOVER":
               break;
            case "ONFACEBOOKOVER":
         }
      }
   }
}
