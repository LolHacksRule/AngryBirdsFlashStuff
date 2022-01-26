package §_-wO§
{
   import §_-zE§.§_-XJ§;
   
   public class §_-8i§
   {
       
      
      public function §_-8i§()
      {
         super();
      }
      
      public static function §_-xx§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §_-XJ§.§_-NV§(param1);
      }
   }
}
