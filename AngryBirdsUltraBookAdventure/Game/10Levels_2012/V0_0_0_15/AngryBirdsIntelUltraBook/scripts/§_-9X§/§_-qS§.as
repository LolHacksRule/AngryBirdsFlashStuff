package §_-9X§
{
   import flash.utils.Dictionary;
   
   public class §_-qS§
   {
      
      private static var §_-fP§:Dictionary;
       
      
      public function §_-qS§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §_-067§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(!_loc5_)
         {
            §_-fP§ = new Dictionary();
         }
         for each(_loc2_ in param1.items)
         {
            if(!_loc5_)
            {
               §_-fP§[_loc2_.u] = §_-s1§.§_-Ej§(_loc2_);
            }
         }
      }
      
      public static function §_-gf§(param1:String) : §_-s1§
      {
         return §_-fP§[param1];
      }
   }
}
