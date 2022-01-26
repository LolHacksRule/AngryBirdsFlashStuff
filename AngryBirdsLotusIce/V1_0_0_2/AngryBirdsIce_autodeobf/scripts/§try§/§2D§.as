package §try§
{
   import §@!+§.§9§;
   
   public class §2D§
   {
       
      
      public function §2D§()
      {
         super();
      }
      
      public static function §`!#§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §9§.decode(param1);
      }
   }
}
