package §_-lq§
{
   public class §_-JL§
   {
      
      private static var §_-xY§:String = "0123456789abcdef";
       
      
      public function §_-JL§()
      {
         super();
      }
      
      public static function §_-b4§(param1:int, param2:int) : int
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      public static function §_-8H§(param1:int, param2:int) : uint
      {
         var _loc3_:int = 32 - param2;
         return param1 << _loc3_ | param1 >>> 32 - _loc3_;
      }
      
      public static function §_-BJ§(param1:int, param2:Boolean = false) : String
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:String = "";
         if(param2)
         {
            _loc4_ = 0;
            while(_loc4_ < 4)
            {
               _loc3_ += §_-xY§.charAt(param1 >> (3 - _loc4_) * 8 + 4 & 15) + §_-xY§.charAt(param1 >> (3 - _loc4_) * 8 & 15);
               _loc4_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < 4)
            {
               _loc3_ += §_-xY§.charAt(param1 >> _loc5_ * 8 + 4 & 15) + §_-xY§.charAt(param1 >> _loc5_ * 8 & 15);
               _loc5_++;
            }
         }
         return _loc3_;
      }
   }
}
