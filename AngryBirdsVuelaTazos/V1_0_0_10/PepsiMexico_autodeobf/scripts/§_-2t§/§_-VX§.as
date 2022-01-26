package §_-2t§
{
   public class §_-VX§
   {
       
      
      public function §_-VX§()
      {
         super();
      }
      
      public static function §_-VP§(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:String = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = ((_loc4_ = param1.charCodeAt(_loc3_)) + 7937 * (_loc3_ + 2)) % 65536;
            if(_loc2_.length > 0)
            {
               _loc2_ += "-" + _loc4_.toString();
            }
            else
            {
               _loc2_ = _loc4_.toString();
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function §_-r2§(param1:String) : String
      {
         var _loc5_:int = 0;
         var _loc2_:String = "";
         var _loc3_:Array = param1.split("-");
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc5_ = parseInt(_loc3_[_loc4_]);
            _loc5_ = (65536 + _loc5_ - 7937 * (_loc4_ + 2) % 65536) % 65536;
            _loc2_ += String.fromCharCode(_loc5_);
            _loc4_++;
         }
         return _loc2_;
      }
   }
}
