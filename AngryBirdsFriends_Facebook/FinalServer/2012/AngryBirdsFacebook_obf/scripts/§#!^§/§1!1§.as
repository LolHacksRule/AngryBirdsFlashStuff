package §#!^§
{
   import flash.utils.Dictionary;
   
   public class §1!1§
   {
      
      private static var §3!1§:Dictionary;
       
      
      public function §1!1§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Object = null;
         §3!1§ = new Dictionary();
         for each(_loc2_ in param1.items)
         {
            if(_loc2_.i == false || _loc2_.i == null)
            {
               §3!1§[_loc2_.u] = §2t§.§@6§(_loc2_);
            }
         }
      }
      
      public static function §27§() : Dictionary
      {
         return §3!1§;
      }
      
      public static function §7"8§(param1:String) : §2t§
      {
         if(§3!1§[param1])
         {
            return §3!1§[param1];
         }
         return null;
      }
   }
}
