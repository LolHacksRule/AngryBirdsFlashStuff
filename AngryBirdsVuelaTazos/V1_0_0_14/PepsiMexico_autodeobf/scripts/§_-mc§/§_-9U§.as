package §_-mc§
{
   import §_-2z§.§_-rz§;
   
   public class §_-9U§
   {
       
      
      public function §_-9U§()
      {
         super();
      }
      
      public static function §_-OJ§(param1:String) : Object
      {
         param1 = param1.replace(/^\}$/mg,"},");
         param1 = param1.replace(/,[ \t\n\r]+\}/gm,"}");
         param1 = param1.replace(/( *)([^\=\n ]*) \=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         return §_-rz§.§_-EM§(param1);
      }
   }
}
