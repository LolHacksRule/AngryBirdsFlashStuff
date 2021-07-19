package §;4§
{
   public class §-#a§
   {
      
      private static var §3"W§:Array = [];
       
      
      public function §-#a§()
      {
         super();
      }
      
      public static function §4T§(param1:§8"`§, param2:Boolean = true, param3:Boolean = false) : void
      {
         null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = §3"W§;
         for(; §§hasnext(_loc8_,_loc7_); _loc5_++)
         {
            if((§§nextvalue(_loc7_,_loc8_)).id == param1.id)
            {
               if(!param2)
               {
                  _loc4_ = true;
                  return;
               }
               if(param1.avatarString != null && param1.avatarString != "" || param3)
               {
                  §3"W§[_loc5_] = param1;
               }
               continue;
            }
         }
         if(!_loc4_)
         {
            §3"W§.push(param1);
         }
      }
      
      public static function §;"h§(param1:String) : String
      {
         var _loc2_:§8"`§ = null;
         for each(_loc2_ in §3"W§)
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
