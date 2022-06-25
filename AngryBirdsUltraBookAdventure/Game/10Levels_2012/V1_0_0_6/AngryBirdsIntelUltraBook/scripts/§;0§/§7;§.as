package §;0§
{
   import flash.utils.Dictionary;
   
   public class §7;§
   {
      
      private static var §#C§:Dictionary;
       
      
      public function §7;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §??§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(_loc6_)
         {
            §#C§ = new Dictionary();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.items)
         {
            if(!(_loc5_ && _loc3_))
            {
               §#C§[_loc2_.u] = §'W§.§2!L§(_loc2_);
            }
         }
      }
      
      public static function §@!D§(param1:String) : §'W§
      {
         return §#C§[param1];
      }
   }
}
