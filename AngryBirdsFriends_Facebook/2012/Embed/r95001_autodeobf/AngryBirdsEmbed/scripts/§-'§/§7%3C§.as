package §-'§
{
   import §`t§.§>3§;
   
   public class §7<§
   {
       
      
      public function §7<§()
      {
         super();
      }
      
      public static function §=?§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §>3§.decode(param1);
      }
   }
}
