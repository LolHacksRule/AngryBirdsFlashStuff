package §;0§
{
   import flash.utils.Dictionary;
   
   public class §7;§
   {
      
      private static var §#C§:Dictionary;
       
      
      public function §7;§()
      {
         super();
      }
      
      public static function §??§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §#C§ = new Dictionary();
         for each(_loc2_ in param1.items)
         {
            §#C§[_loc2_.u] = §'W§.§2!L§(_loc2_);
         }
      }
      
      public static function §@!D§(param1:String) : §'W§
      {
         return §#C§[param1];
      }
   }
}
