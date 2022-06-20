package §[G§
{
   public class §8A§
   {
      
      private static var §6!b§:Array = [];
       
      
      public function §8A§()
      {
         super();
      }
      
      public static function §=#T§(param1:§!!g§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §6!b§)
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
                  §6!b§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §6!b§.push(param1);
         }
      }
      
      public static function §&i§(param1:String) : String
      {
         var _loc2_:§!!g§ = null;
         for each(_loc2_ in §6!b§)
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
