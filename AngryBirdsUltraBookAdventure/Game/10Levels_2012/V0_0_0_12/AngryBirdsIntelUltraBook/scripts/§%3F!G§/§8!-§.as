package §?!G§
{
   public class §8!-§
   {
       
      
      public function §8!-§()
      {
         super();
      }
      
      public static function encode(param1:Object) : String
      {
         return new JSONEncoder(param1).getString();
      }
      
      public static function §9N§(param1:String, param2:Boolean = true) : *
      {
         return new JSONDecoder(param1,param2).getValue();
      }
   }
}
