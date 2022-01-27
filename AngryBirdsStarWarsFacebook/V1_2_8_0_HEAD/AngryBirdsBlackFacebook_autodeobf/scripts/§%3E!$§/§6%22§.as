package §>!$§
{
   public final class §6"§
   {
       
      
      public function §6"§()
      {
         super();
      }
      
      public static function §^p§(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         switch(param1)
         {
            case "on":
            case "yes":
            case "true":
            case "1":
               return true;
            case "off":
            case "no":
            case "false":
            case "0":
         }
         return false;
      }
      
      public static function §6""§(param1:String) : String
      {
         while(param1.charAt(param1.length - 1) == " ")
         {
            param1 = param1.substr(0,param1.length - 1);
         }
         return param1;
      }
      
      public static function §@!+§(param1:String) : String
      {
         return §[!0§(§>!T§(param1));
      }
      
      public static function §[!0§(param1:String) : String
      {
         while(param1.charAt(param1.length - 1) == " ")
         {
            param1 = param1.substr(0,param1.length - 1);
         }
         return param1;
      }
      
      public static function §>!T§(param1:String) : String
      {
         while(param1.charAt(0) == " ")
         {
            param1 = param1.substr(1);
         }
         return param1;
      }
      
      public static function §2!7§(param1:String) : String
      {
         return §[!0§(param1.replace(/^([\s|\t|\n]+)?(.*)([\s|\t|\n]+)?$/gm,"$2"));
      }
      
      public static function §'A§(param1:String) : String
      {
         return param1.charAt(0).toUpperCase() + param1.toLowerCase().substr(1);
      }
      
      public static function §;d§(param1:String, param2:String, param3:String) : String
      {
         if(param3)
         {
            param3 = param3.split(param1).join(param2);
         }
         return param3;
      }
      
      public static function §="%§(param1:String, param2:String) : Boolean
      {
         return param1.toLowerCase() == param2.toLowerCase();
      }
      
      public static function §-!"§(param1:Object, param2:int = 2) : String
      {
         var _loc3_:String = String(param1);
         while(_loc3_.length < param2)
         {
            _loc3_ = "0" + _loc3_;
         }
         return _loc3_;
      }
   }
}
