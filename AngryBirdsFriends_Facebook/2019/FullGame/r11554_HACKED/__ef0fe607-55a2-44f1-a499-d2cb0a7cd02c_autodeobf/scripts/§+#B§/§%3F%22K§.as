package §+#B§
{
   public class §?"K§
   {
       
      
      public function §?"K§()
      {
         super();
      }
      
      public static function §7"P§(param1:int) : String
      {
         var _loc2_:String = null;
         var _loc3_:String = param1.toString();
         _loc3_ = _loc3_.charAt(_loc3_.length - 1);
         if(param1 < 11 || param1 > 19)
         {
            if(_loc3_ == "1")
            {
               _loc2_ = "st";
            }
            else if(_loc3_ == "2")
            {
               _loc2_ = "nd";
            }
            else if(_loc3_ == "3")
            {
               _loc2_ = "rd";
            }
            else
            {
               _loc2_ = "th";
            }
         }
         else
         {
            _loc2_ = "th";
         }
         return _loc2_;
      }
   }
}
