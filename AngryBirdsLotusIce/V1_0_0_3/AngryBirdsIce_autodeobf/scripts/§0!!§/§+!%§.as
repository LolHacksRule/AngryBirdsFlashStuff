package §0!!§
{
   import §"!"§.§&z§;
   
   public class §+!%§
   {
       
      
      public function §+!%§()
      {
         super();
      }
      
      public static function §>7§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §&z§.decode(param1);
      }
   }
}
