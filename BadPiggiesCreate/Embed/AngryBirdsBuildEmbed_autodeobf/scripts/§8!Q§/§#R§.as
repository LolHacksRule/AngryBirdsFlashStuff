package §8!Q§
{
   import §]!Z§.§@!j§;
   
   public class §#R§
   {
       
      
      public function §#R§()
      {
         super();
      }
      
      public static function §2J§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §@!j§.decode(param1);
      }
   }
}
