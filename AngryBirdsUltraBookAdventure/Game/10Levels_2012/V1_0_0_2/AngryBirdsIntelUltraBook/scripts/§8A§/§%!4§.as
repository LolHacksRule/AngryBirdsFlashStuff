package §8A§
{
   import flash.utils.Dictionary;
   
   public class §%!4§
   {
      
      private static var §1!8§:Dictionary;
       
      
      public function §%!4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §5!J§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(!(_loc6_ && §%!4§))
         {
            §1!8§ = new Dictionary();
         }
         for each(_loc2_ in param1.items)
         {
            if(!(_loc6_ && _loc2_))
            {
               §1!8§[_loc2_.u] = §0O§.§3!x§(_loc2_);
            }
         }
      }
      
      public static function §1!X§(param1:String) : §0O§
      {
         return §1!8§[param1];
      }
   }
}
