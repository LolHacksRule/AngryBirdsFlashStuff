package §_-IV§
{
   import §_-hq§.§_-AD§;
   
   public class §_-nb§
   {
       
      
      public function §_-nb§()
      {
         super();
      }
      
      public static function §_-N§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §_-AD§.§_-Ae§(param1);
      }
   }
}
