package §_-XI§
{
   public class §_-Nj§
   {
       
      
      public function §_-Nj§()
      {
         super();
      }
      
      public static function §_-f3§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return JSON.parse(param1);
      }
   }
}
