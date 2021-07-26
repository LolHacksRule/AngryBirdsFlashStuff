package §+!u§
{
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §-"i§.§^"A§;
   import §5"$§.§]!m§;
   import §8§.§#$+§;
   import §>!#§.§&",§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   
   public class §;M§ extends §^"A§
   {
       
      
      private var §-E§:Vector.<§&",§>;
      
      public function §;M§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         super.init();
         var _loc1_:String = "LEVEL_FAIL_ICON_" + §]!m§.§3!]§.§,"K§.§+G§;
         var _loc2_:Class = §@`§.§4!i§(_loc1_,false);
         if(_loc2_)
         {
            _loc3_ = §!$§.getItemByName("pigHolder").mClip;
            _loc3_.removeChildren();
            _loc4_ = new _loc2_();
            _loc3_.addChild(_loc4_);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override protected function playFailSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = "LEVEL_FAIL_SFX_" + §]!m§.§3!]§.§,"K§.§+G§;
         if(§@`§.§38§(_loc2_))
         {
            §#$+§.§#$-§();
            §#$+§.playSound(_loc2_,§#$+§.§#"k§);
            _loc1_ = true;
         }
         if(!_loc1_)
         {
            super.playFailSound();
         }
      }
   }
}
