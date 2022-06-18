package §>"c§
{
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §6V§.§""E§;
   import §8"X§.§>!k§;
   import §@#§.§^#Q§;
   import §];§.§-!t§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   
   public class §;$"§ extends §>!k§
   {
       
      
      private var §;#N§:Vector.<§""E§>;
      
      public function §;$"§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:MovieClip = null;
         super.init();
         var _loc1_:String = "LEVEL_FAIL_ICON_" + §-!t§.§ "D§.tournamentRules.§@!l§;
         var _loc2_:Class = §+$#§.§["`§(_loc1_,false);
         if(_loc2_)
         {
            _loc3_ = §?Q§.getItemByName("pigHolder").mClip;
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
         var _loc2_:String = "LEVEL_FAIL_SFX_" + §-!t§.§ "D§.tournamentRules.§@!l§;
         if(§+$#§.§1!X§(_loc2_))
         {
            §!#&§.§^!2§();
            §!#&§.playSound(_loc2_,§!#&§.§>#c§);
            _loc1_ = true;
         }
         if(!_loc1_)
         {
            super.playFailSound();
         }
      }
   }
}
