package §_-9X§
{
   import flash.utils.Dictionary;
   
   public class §_-qS§
   {
      
      private static var §_-fP§:Dictionary;
       
      
      public function §_-qS§()
      {
         super();
      }
      
      public static function §_-067§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §_-fP§ = new Dictionary();
         for each(_loc2_ in param1.items)
         {
            §_-fP§[_loc2_.u] = §_-s1§.§_-Ej§(_loc2_);
         }
      }
      
      public static function §_-gf§(param1:String) : §_-s1§
      {
         return §_-fP§[param1];
      }
   }
}
