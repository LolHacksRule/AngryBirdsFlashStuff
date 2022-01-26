package §3"§
{
   public class §?!?§ extends §0$§
   {
       
      
      public function §?!?§()
      {
         super();
      }
      
      public static function §<P§(param1:String) : String
      {
         var _loc2_:§&9§ = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         try
         {
            _loc2_ = §,o§(param1);
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
