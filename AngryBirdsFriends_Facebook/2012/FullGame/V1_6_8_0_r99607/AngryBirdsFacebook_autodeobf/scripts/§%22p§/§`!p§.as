package §"p§
{
   import §,"-§.§2!P§;
   import §7N§.§43§;
   import §<!e§.§[!t§;
   import §<G§.§`"§;
   
   public class §`!p§ extends §`"§
   {
       
      
      public function §`!p§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         super(param1,param2);
      }
      
      override protected function setScoreData() : void
      {
         super.setScoreData();
         this.§=!3§();
      }
      
      private function §=!3§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§2!P§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc1_:Array = §[!t§.§8c§.levels;
         var _loc2_:Boolean = Boolean(§[!t§.§8c§.§ h§);
         if(_loc1_ != null && !_loc2_)
         {
            _loc3_ = true;
            _loc4_ = AngryBirdsFP11.sUserProgress as §2!P§;
            _loc5_ = 0;
            while(_loc5_ < _loc1_.length)
            {
               _loc6_ = _loc1_[_loc5_];
               _loc7_ = _loc4_.§8l§(_loc6_);
               if((_loc8_ = _loc4_.getStarsForLevel(_loc6_,_loc7_)) < 1)
               {
                  _loc3_ = false;
                  break;
               }
               _loc5_++;
            }
            if(_loc3_)
            {
               §43§.§24§();
            }
         }
      }
   }
}
