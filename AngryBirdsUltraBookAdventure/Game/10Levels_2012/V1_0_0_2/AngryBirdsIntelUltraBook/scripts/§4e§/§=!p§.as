package §4e§
{
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   
   public class §=!p§ extends LevelManager
   {
       
      
      public function §=!p§()
      {
         super();
      }
      
      public static function §1!j§(param1:String) : String
      {
         var _loc2_:§4n§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         try
         {
            _loc2_ = §2!9§(param1);
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
