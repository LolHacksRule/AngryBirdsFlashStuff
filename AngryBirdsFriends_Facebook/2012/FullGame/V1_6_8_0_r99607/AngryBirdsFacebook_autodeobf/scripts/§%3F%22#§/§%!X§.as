package §?"#§
{
   import flash.utils.Dictionary;
   
   public class §%!X§
   {
      
      private static var §<! §:Dictionary;
       
      
      public function §%!X§()
      {
         super();
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc2_:Object = null;
         §<! § = new Dictionary();
         for each(_loc2_ in param1.items)
         {
            if(_loc2_.i == false || _loc2_.i == null)
            {
               §<! §[_loc2_.u] = §'@§.§ N§(_loc2_);
            }
         }
      }
      
      public static function §+X§() : Dictionary
      {
         return §<! §;
      }
      
      public static function §'E§(param1:String) : §'@§
      {
         if(§<! §[param1])
         {
            return §<! §[param1];
         }
         return null;
      }
   }
}
