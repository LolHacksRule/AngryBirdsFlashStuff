package flex.lang.reflect.cache
{
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   
   public class ClassDataCache
   {
      
      private static var classCache:Dictionary = new Dictionary();
       
      
      public function ClassDataCache()
      {
         super();
      }
      
      public static function describeType(clazz:Class, refresh:Boolean = false) : XML
      {
         if(refresh || classCache[clazz] == null)
         {
            classCache[clazz] = describeType(clazz);
         }
         return classCache[clazz];
      }
   }
}
