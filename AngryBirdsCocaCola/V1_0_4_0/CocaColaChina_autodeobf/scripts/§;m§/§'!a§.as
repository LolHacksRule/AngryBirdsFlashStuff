package §;m§
{
   import §#-§.§4!K§;
   
   public class §'!a§
   {
       
      
      public function §'!a§()
      {
         super();
      }
      
      public static function §%D§(param1:String) : Object
      {
         param1 = param1.replace(/\[\"(.*)\"\]/g,"$1");
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/^(.*\=\s*[^\s,\{\[]$)/mg,"$1,");
         param1 = param1.replace(/([ \t]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         param1 = param1.replace(/,(\s*[\]\}$])/mg,"$1");
         return §4!K§.§ !R§(param1);
      }
   }
}
