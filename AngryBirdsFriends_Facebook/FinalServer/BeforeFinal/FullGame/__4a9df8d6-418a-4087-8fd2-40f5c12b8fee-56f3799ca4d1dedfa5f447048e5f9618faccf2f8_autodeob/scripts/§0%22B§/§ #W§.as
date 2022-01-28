package §0"B§
{
   public class § #W§
   {
      
      private static var §%"0§:Array = [];
       
      
      public function § #W§()
      {
         super();
      }
      
      public static function §]8§(param1:§try§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §%"0§)
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
                  §%"0§[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §%"0§.push(param1);
         }
      }
      
      public static function §[#e§(param1:String) : String
      {
         var _loc2_:§try§ = null;
         for each(_loc2_ in §%"0§)
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
