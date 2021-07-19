package §&! §
{
   import §,!D§.§5E§;
   
   public class §]a§
   {
       
      
      public function §]a§()
      {
         super();
      }
      
      public static function §"y§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §5E§.§,§(param1);
      }
   }
}
