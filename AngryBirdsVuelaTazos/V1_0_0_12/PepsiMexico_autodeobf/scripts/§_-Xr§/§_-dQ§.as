package §_-Xr§
{
   public class §_-dQ§
   {
       
      
      public function §_-dQ§()
      {
         super();
      }
      
      public static function §_-Um§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return JSON.parse(param1);
      }
   }
}
