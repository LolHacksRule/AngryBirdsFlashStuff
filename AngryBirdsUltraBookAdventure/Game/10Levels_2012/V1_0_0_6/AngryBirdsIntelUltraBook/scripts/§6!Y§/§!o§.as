package §6!Y§
{
   public class §!o§
   {
      
      private static var §#C§:Array = [];
       
      
      public function §!o§()
      {
         super();
      }
      
      public static function §[b§(param1:§8;§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §#C§)
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
                  §#C§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §#C§.push(param1);
         }
      }
      
      public static function §#7§(param1:String) : String
      {
         var _loc2_:§8;§ = null;
         for each(_loc2_ in §#C§)
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
