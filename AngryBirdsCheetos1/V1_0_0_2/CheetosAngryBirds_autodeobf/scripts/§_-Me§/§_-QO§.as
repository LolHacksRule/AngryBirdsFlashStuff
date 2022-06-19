package §_-Me§
{
   import §_-rt§.§_-nm§;
   
   public class §_-QO§
   {
       
      
      public function §_-QO§()
      {
         super();
      }
      
      public static function §_-2m§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §_-nm§.§_-UM§(param1);
      }
   }
}
