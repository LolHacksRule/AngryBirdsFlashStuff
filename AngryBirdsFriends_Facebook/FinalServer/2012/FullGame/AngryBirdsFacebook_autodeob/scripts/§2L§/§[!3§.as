package §2L§
{
   public class §[!3§
   {
      
      private static var §3!1§:Array = [];
       
      
      public function §[!3§()
      {
         super();
      }
      
      public static function § !^§(param1:§^]§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §3!1§)
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
                  §3!1§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §3!1§.push(param1);
         }
      }
      
      public static function §5O§(param1:String) : String
      {
         var _loc2_:§^]§ = null;
         for each(_loc2_ in §3!1§)
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
