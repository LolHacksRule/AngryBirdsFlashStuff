package §<w§
{
   public class §9"?§
   {
      
      private static var §<!u§:Array = [];
       
      
      public function §9"?§()
      {
         super();
      }
      
      public static function §"!V§(param1:§`h§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = §<!u§;
         for(; §§hasnext(_loc8_,_loc7_); _loc5_++)
         {
            _loc6_ = §§nextvalue(_loc7_,_loc8_);
            if(_loc6_.id == param1.id)
            {
               if(!param2)
               {
                  _loc4_ = true;
               }
               if(param1.avatarString != null && param1.avatarString != "" || param3)
               {
                  §<!u§[_loc5_] = param1;
               }
               continue;
               return;
            }
         }
         if(!_loc4_)
         {
            §<!u§.push(param1);
         }
      }
      
      public static function §%!h§(param1:String) : String
      {
         var _loc2_:§`h§ = null;
         for each(_loc2_ in §<!u§)
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
