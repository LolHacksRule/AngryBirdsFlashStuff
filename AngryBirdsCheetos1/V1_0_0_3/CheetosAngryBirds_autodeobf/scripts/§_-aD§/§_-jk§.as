package §_-aD§
{
   import §_-DH§.§_-KR§;
   
   public class §_-jk§
   {
       
      
      public function §_-jk§()
      {
         super();
      }
      
      public static function §_-KZ§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §_-KR§.§_-8B§(param1);
      }
   }
}
