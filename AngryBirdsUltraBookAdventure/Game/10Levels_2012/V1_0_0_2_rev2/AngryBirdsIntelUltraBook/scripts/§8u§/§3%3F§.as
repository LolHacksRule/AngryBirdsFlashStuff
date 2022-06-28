package §8u§
{
   public class §3?§
   {
      
      private static var §1!8§:Array = [];
       
      
      public function §3?§()
      {
         super();
      }
      
      public static function §!`§(param1:§2!A§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §1!8§)
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
                  §1!8§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §1!8§.push(param1);
         }
      }
      
      public static function §"!r§(param1:String) : String
      {
         var _loc2_:§2!A§ = null;
         for each(_loc2_ in §1!8§)
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
