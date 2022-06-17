package §&G§
{
   import flash.utils.Dictionary;
   
   public class §1z§
   {
      
      private static var §,!2§:Dictionary;
       
      
      public function §1z§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Object = null;
         §,!2§ = new Dictionary();
         for each(_loc2_ in param1.items)
         {
            if(_loc2_.i == false || _loc2_.i == null)
            {
               §,!2§[_loc2_.u] = §@!5§.§!!t§(_loc2_);
            }
         }
      }
      
      public static function §^"4§() : Dictionary
      {
         return §,!2§;
      }
      
      public static function §@Z§(param1:String) : §@!5§
      {
         if(§,!2§[param1])
         {
            return §,!2§[param1];
         }
         return null;
      }
   }
}
