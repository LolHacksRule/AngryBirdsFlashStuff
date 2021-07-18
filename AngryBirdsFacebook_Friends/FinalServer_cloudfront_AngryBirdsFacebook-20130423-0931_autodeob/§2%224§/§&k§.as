package §2"4§
{
   import flash.utils.Dictionary;
   
   public class §&k§
   {
      
      private static var §<!u§:Dictionary;
       
      
      public function §&k§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Object = null;
         §<!u§ = new Dictionary();
         for each(_loc2_ in param1.items)
         {
            if(_loc2_.i == false || _loc2_.i == null)
            {
               §<!u§[_loc2_.u] = §@"E§.§?$§(_loc2_);
            }
         }
      }
      
      public static function §]v§() : Dictionary
      {
         return §<!u§;
      }
      
      public static function §`!]§(param1:String) : §@"E§
      {
         if(§<!u§[param1])
         {
            return §<!u§[param1];
         }
         return null;
      }
   }
}
