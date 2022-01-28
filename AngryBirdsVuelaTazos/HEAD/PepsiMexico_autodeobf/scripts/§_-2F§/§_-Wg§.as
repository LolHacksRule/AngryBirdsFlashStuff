package §_-2F§
{
   import §_-s-§.§_-hQ§;
   
   public class §_-Wg§
   {
       
      
      public function §_-Wg§()
      {
         super();
      }
      
      public static function §_-um§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §_-hQ§.§_-sx§(param1);
      }
   }
}
