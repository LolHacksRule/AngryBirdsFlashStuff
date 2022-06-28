package §_-0EZ§
{
   public class §_-Dk§
   {
      
      private static var §_-fP§:Array = [];
       
      
      public function §_-Dk§()
      {
         super();
      }
      
      public static function §_-86§(param1:§_-HV§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §_-fP§)
         {
            if(_loc6_.id == param1.id)
            {
               if(!param2)
               {
                  _loc4_ = true;
                  return;
               }
               if(param1.avatarString != null && param1.avatarString != "" || param3)
               {
                  §_-fP§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §_-fP§.push(param1);
         }
      }
      
      public static function §_-03B§(param1:String) : String
      {
         var _loc2_:§_-HV§ = null;
         for each(_loc2_ in §_-fP§)
         {
            if(param1 == _loc2_.id)
            {
               return _loc2_.avatarString;
            }
         }
         return "";
      }
   }
}
