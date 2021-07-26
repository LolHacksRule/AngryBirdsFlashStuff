package §""L§
{
   public class §'!X§
   {
      
      private static const §;y§:Boolean = true;
      
      private static var §1!#§:Object;
       
      
      public function §'!X§()
      {
         super();
      }
      
      public static function §0!b§(param1:String) : String
      {
         var _loc2_:Object = null;
         if(§1!#§)
         {
            for each(_loc2_ in §1!#§)
            {
               if(_loc2_[param1])
               {
                  return _loc2_[param1];
               }
            }
         }
         return "default";
      }
      
      public static function injectData(param1:Object) : void
      {
         if(param1 && !§;y§)
         {
            §1!#§ = param1;
         }
         else
         {
            §1!#§ = null;
         }
      }
   }
}
