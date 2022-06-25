package §5!3§
{
   import flash.utils.Dictionary;
   
   public class §#!B§
   {
      
      private static var §>2§:Dictionary;
       
      
      public function §#!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §&?§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(_loc6_)
         {
            §>2§ = new Dictionary();
         }
         for each(_loc2_ in param1.items)
         {
            if(!(_loc5_ && §#!B§))
            {
               §>2§[_loc2_.u] = §8!k§.§+q§(_loc2_);
            }
         }
      }
      
      public static function §?f§(param1:String) : §8!k§
      {
         return §>2§[param1];
      }
   }
}
