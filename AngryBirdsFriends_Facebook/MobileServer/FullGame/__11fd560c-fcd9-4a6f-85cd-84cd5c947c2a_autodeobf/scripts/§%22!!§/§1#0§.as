package §"!!§
{
   public class §1#0§
   {
      
      private static var §^!R§:Array = [];
       
      
      public function §1#0§()
      {
         super();
      }
      
      public static function § #i§(param1:§'#4§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = §^!R§;
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
                  §^!R§[_loc5_] = param1;
               }
               continue;
               return;
            }
         }
         if(!_loc4_)
         {
            §^!R§.push(param1);
         }
      }
      
      public static function §^y§(param1:String) : String
      {
         var _loc2_:§'#4§ = null;
         for each(_loc2_ in §^!R§)
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
