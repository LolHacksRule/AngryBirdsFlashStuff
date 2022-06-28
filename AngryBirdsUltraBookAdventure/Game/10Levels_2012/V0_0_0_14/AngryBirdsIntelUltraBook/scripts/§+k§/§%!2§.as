package §+k§
{
   public class §%!2§
   {
      
      private static var §>2§:Array = [];
       
      
      public function §%!2§()
      {
         super();
      }
      
      public static function §1u§(param1:§=!A§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §>2§)
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
                  §>2§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §>2§.push(param1);
         }
      }
      
      public static function §&B§(param1:String) : String
      {
         var _loc2_:§=!A§ = null;
         for each(_loc2_ in §>2§)
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
