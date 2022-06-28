package §_-0A-§
{
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   
   public class §_-08e§ extends LevelManager
   {
       
      
      public function §_-08e§()
      {
         super();
      }
      
      public static function §_-i8§(param1:String) : String
      {
         var _loc2_:§_-0C5§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         try
         {
            _loc2_ = §_-N9§(param1);
            _loc3_ = param1.split("-");
            _loc4_ = parseInt(_loc3_[1]);
            _loc5_ = _loc3_[0];
            _loc6_ = _loc2_.pageIndexes.indexOf(_loc5_);
            return (_loc4_ += _loc6_ * _loc2_.levelsPerPage).toString();
         }
         catch(e:Error)
         {
            return param1;
         }
      }
   }
}
