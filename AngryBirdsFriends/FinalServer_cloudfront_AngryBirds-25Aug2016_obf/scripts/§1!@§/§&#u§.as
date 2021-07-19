package §1!@§
{
   public class §&#u§
   {
       
      
      public function §&#u§()
      {
         super();
      }
      
      public static function §^!q§(param1:String, param2:Number = 25) : String
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc3_:String = "";
         if(param1.length >= param2)
         {
            if((_loc4_ = param1.split(" ")).length - 1 >= 0)
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length - 1)
               {
                  _loc3_ += _loc4_[_loc5_] + " ";
                  _loc5_++;
               }
               _loc3_ += _loc4_[_loc4_.length - 1].toString().slice(0,1) + ".";
            }
         }
         else
         {
            _loc3_ = param1;
         }
         return _loc3_;
      }
      
      public static function trim(param1:String, param2:String) : String
      {
         return §;"'§(§8#C§(param1,param2),param2);
      }
      
      public static function §8#C§(param1:String, param2:String) : String
      {
         param2 = §2!L§(param2);
         if(param1.charAt(0) == param2)
         {
            param1 = §8#C§(param1.substring(1),param2);
         }
         return param1;
      }
      
      public static function §;"'§(param1:String, param2:String) : String
      {
         param2 = §2!L§(param2);
         if(param1.charAt(param1.length - 1) == param2)
         {
            param1 = §;"'§(param1.substring(0,param1.length - 1),param2);
         }
         return param1;
      }
      
      public static function §2!L§(param1:String) : String
      {
         if(param1.length == 1)
         {
            return param1;
         }
         return param1.slice(0,1);
      }
   }
}
