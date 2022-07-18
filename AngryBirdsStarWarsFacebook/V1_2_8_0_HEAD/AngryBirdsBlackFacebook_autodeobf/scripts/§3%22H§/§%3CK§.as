package §3"H§
{
   import flash.utils.describeType;
   
   public class §<K§
   {
       
      
      public function §<K§()
      {
         super();
      }
      
      public static function §^m§(param1:Object) : String
      {
         if(param1 is Class)
         {
            return describeType(param1).@name.split("::").pop();
         }
         return "" + param1;
      }
   }
}
