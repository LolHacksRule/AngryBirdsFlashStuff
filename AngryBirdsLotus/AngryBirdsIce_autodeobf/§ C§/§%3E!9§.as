package § C§
{
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §]4§.§-§;
   import §`W§.§-[§;
   
   public class §>!9§ extends §-§
   {
      
      public static const §?B§:String = "LevelSelectionState";
       
      
      private var mChapterTween0:§?A§ = null;
      
      private var mChapterTween1:§?A§ = null;
      
      private var mChapterTween2:§?A§ = null;
      
      public function §>!9§(param1:Boolean, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_LevelSelection[0]);
      }
      
      override public function activate() : void
      {
         var _loc4_:§8+§ = null;
         super.activate();
         if(§?h§.§ n§)
         {
            §?h§.§ n§.start();
         }
         §[o§.§='§.§"3§(false);
         §[o§.§='§.clearLevel();
         var _loc1_:Array = ["1-1","1-2","1-3"];
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < 3)
         {
            _loc5_ = AngryBirdsFP11.§64§.§5!4§(_loc1_[_loc6_]);
            if(_loc4_ = §0$§.§2Q§(_loc1_[_loc6_]))
            {
               _loc2_ = _loc4_.§1U§;
               _loc3_ = _loc4_.§#o§;
            }
            §,R§.getItemByName("BestStar_" + _loc6_).mClip.gotoAndStop(this.§+!E§(_loc5_,_loc2_,_loc3_));
            _loc6_++;
         }
      }
      
      private function §+!E§(param1:int, param2:int, param3:int) : int
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
         this.§]W§();
         §,R§.getItemByName("Container_Level0").mClip.scaleX = 1;
         §,R§.getItemByName("Container_Level0").mClip.scaleY = 1;
         §,R§.getItemByName("Container_Level1").mClip.scaleX = 1;
         §,R§.getItemByName("Container_Level1").mClip.scaleY = 1;
         §,R§.getItemByName("Container_Level2").mClip.scaleX = 1;
         §,R§.getItemByName("Container_Level2").mClip.scaleY = 1;
      }
      
      private function §]W§() : void
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
      
      private function §#x§(param1:int) : void
      {
         var _loc2_:§&9§ = §0$§.§]>§(param1);
         if(_loc2_ == null)
         {
            return;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "ONFACEBOOKUP":
               §^y§.get.§!!=§("ABLotus");
               break;
            case "ONCREDITSUP":
               mNextState = §%H§.§?B§;
               break;
            case "LEVEL0":
               §@6§.playSound("Menu_Confirm");
               §0$§.§;4§(§0$§.§5D§("1-1"));
               mNextState = §7!6§.§?B§;
               break;
            case "LEVEL1":
               §@6§.playSound("Menu_Confirm");
               §0$§.§;4§(§0$§.§5D§("1-2"));
               mNextState = §7!6§.§?B§;
               break;
            case "LEVEL2":
               §@6§.playSound("Menu_Confirm");
               §0$§.§;4§(§0$§.§5D§("1-3"));
               mNextState = §7!6§.§?B§;
               break;
            case "LEVEL0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_Level0").mClip,{
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
               this.mChapterTween0 = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_Level0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§";§.§`!>§);
               this.mChapterTween0.play();
               break;
            case "LEVEL1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_Level1").mClip,{
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
               this.mChapterTween1 = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_Level1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§";§.§`!>§);
               this.mChapterTween1.play();
               break;
            case "LEVEL2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_Level2").mClip,{
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
               this.mChapterTween2 = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_Level2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§";§.§`!>§);
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
