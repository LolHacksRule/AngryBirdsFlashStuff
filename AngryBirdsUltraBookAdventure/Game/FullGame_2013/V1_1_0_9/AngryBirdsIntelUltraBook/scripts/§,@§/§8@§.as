package §,@§
{
   public class §8@§
   {
      
      private static var §3R§:Array = [];
       
      
      public function §8@§()
      {
         super();
      }
      
      public static function § #§(param1:§`D§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §3R§)
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
                  §3R§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §3R§.push(param1);
         }
      }
      
      public static function §<!u§(param1:String) : String
      {
         var _loc2_:§`D§ = null;
         for each(_loc2_ in §3R§)
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
