package §3#t§
{
   public class §-#b§
   {
      
      private static var §use §:Array = [];
       
      
      public function §-#b§()
      {
         super();
      }
      
      public static function §>">§(param1:§'#2§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = §use §;
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
                  §use §[_loc5_] = param1;
               }
               continue;
            }
         }
         if(!_loc4_)
         {
            §use §.push(param1);
         }
      }
      
      public static function §5!K§(param1:String) : String
      {
         var _loc2_:§'#2§ = null;
         for each(_loc2_ in §use §)
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
