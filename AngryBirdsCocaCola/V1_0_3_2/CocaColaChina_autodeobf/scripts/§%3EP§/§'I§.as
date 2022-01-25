package §>P§
{
   import §5!"§.§+!2§;
   
   public class §'I§
   {
       
      
      public function §'I§()
      {
         super();
      }
      
      public static function §]E§(param1:String) : Object
      {
         param1 = param1.replace(/\[\"(.*)\"\]/g,"$1");
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/^(.*\=[^,\{]+)$/mg,"$&,");
         param1 = param1.replace(/([ \t]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         param1 = param1.replace(/,(\s*[\]\}$])/mg,"$1");
         return §+!2§.§<!,§(param1);
      }
   }
}
