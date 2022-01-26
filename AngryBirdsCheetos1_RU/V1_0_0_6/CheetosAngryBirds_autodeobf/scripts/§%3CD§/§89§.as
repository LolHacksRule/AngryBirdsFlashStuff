package §<D§
{
   import flash.utils.ByteArray;
   
   public class §89§
   {
      
      private static var §<9§:Array = §>H§();
       
      
      public function §89§()
      {
         super();
      }
      
      private static function §>H§() : Array
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         _loc2_ = 0;
         while(_loc2_ < 256)
         {
            _loc4_ = _loc2_;
            _loc3_ = 0;
            while(_loc3_ < 8)
            {
               if(_loc4_ & 1)
               {
                  _loc4_ = 3988292384 ^ _loc4_ >>> 1;
               }
               else
               {
                  _loc4_ >>>= 1;
               }
               _loc3_++;
            }
            _loc1_.push(_loc4_);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function §#G§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc4_:uint = 0;
         if(param2 >= param1.length)
         {
            param2 = param1.length;
         }
         if(param3 == 0)
         {
            param3 = param1.length - param2;
         }
         if(param3 + param2 > param1.length)
         {
            param3 = param1.length - param2;
         }
         var _loc5_:uint = 4294967295;
         _loc4_ = param2;
         while(_loc4_ < param3)
         {
            _loc5_ = uint(§<9§[(_loc5_ ^ param1[_loc4_]) & 255]) ^ _loc5_ >>> 8;
            _loc4_++;
         }
         return _loc5_ ^ 4294967295;
      }
      
      public static function §@!§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         if(param2 >= param1.length)
         {
            param2 = param1.length;
         }
         if(param3 == 0)
         {
            param3 = param1.length - param2;
         }
         if(param3 + param2 > param1.length)
         {
            param3 = param1.length - param2;
         }
         var _loc4_:uint = param2;
         var _loc5_:uint = 1;
         var _loc6_:uint = 0;
         while(_loc4_ < param2 + param3)
         {
            _loc6_ = ((_loc5_ = (_loc5_ + param1[_loc4_]) % 65521) + _loc6_) % 65521;
            _loc4_++;
         }
         return _loc6_ << 16 | _loc5_;
      }
   }
}
