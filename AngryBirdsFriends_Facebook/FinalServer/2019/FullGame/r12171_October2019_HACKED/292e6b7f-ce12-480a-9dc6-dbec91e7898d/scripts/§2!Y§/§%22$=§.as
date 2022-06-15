package §2!Y§
{
   public class §"$=§
   {
      
      private static var §5!_§:Array = [];
       
      
      public function §"$=§()
      {
         super();
      }
      
      public static function §1" §(param1:§5S§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §5!_§)
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
                  §5!_§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §5!_§.push(param1);
         }
      }
      
      public static function § $8§(param1:String) : String
      {
         var _loc2_:§5S§ = null;
         for each(_loc2_ in §5!_§)
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
