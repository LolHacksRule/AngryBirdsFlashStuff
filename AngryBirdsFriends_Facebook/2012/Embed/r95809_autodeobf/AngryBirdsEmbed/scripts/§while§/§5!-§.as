package §while§
{
   import §1!6§.§const§;
   
   public class §5!-§
   {
       
      
      public function §5!-§()
      {
         super();
      }
      
      public static function §<R§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §const§.decode(param1);
      }
   }
}
