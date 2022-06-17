package § "g§
{
   public class §%!2§
   {
      
      private static var §!7§:Array = [];
       
      
      public function §%!2§()
      {
         super();
      }
      
      public static function §@"1§(param1:§ H§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = §!7§;
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
                  §!7§[_loc5_] = param1;
               }
               continue;
            }
         }
         if(!_loc4_)
         {
            §!7§.push(param1);
         }
      }
      
      public static function §;"A§(param1:String) : String
      {
         var _loc2_:§ H§ = null;
         for each(_loc2_ in §!7§)
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
