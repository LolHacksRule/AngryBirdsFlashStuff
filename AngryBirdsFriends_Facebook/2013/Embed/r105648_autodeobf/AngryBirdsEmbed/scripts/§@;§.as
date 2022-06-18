package
{
   public class §@;§
   {
       
      
      public function §@;§()
      {
         super();
      }
      
      public static function §;[§(param1:String) : String
      {
         var _loc2_:Array = param1.split("-");
         var _loc3_:int = parseInt(_loc2_[1]);
         var _loc4_:int = parseInt(_loc2_[0]);
         var _loc5_:String = "";
         if(_loc4_ >= 1 && _loc4_ <= 3 && _loc3_ >= 1 && _loc3_ <= 21)
         {
            _loc3_ += (_loc4_ - 1) * 21;
            _loc5_ = "Poached Eggs";
         }
         else if(_loc4_ >= 4 && _loc4_ <= 5 && _loc3_ >= 1 && _loc3_ <= 21)
         {
            _loc3_ += (_loc4_ - 4) * 21;
            _loc5_ = "Mighty Hoax";
         }
         else if(_loc4_ >= 9 && _loc4_ <= 11 && _loc3_ >= 1 && _loc3_ <= 15)
         {
            _loc3_ += (_loc4_ - 9) * 15;
            _loc5_ = "Surf and Turf";
         }
         else
         {
            if(!(_loc4_ == 1000 && _loc3_ >= 1 && _loc3_ <= 10))
            {
               return "";
            }
            _loc5_ = "Golden Eggs";
         }
         return _loc5_ + " " + _loc3_;
      }
   }
}
