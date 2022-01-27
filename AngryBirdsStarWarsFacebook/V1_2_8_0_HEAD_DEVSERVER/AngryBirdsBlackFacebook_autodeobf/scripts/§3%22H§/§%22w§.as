package §3"H§
{
   import §+!4§.§&!"§;
   
   public class §"w§
   {
       
      
      public function §"w§()
      {
         super();
      }
      
      public static function §3#9§(param1:String) : int
      {
         var _loc2_:String = param1.toUpperCase();
         if(§&!"§[_loc2_])
         {
            return §&!"§[_loc2_];
         }
         return §&!"§.DEBUG;
      }
      
      public static function §[!3§(param1:int) : String
      {
         switch(param1)
         {
            case 0:
               return "ALL";
            case 1:
               return "DEBUG";
            case 2:
               return "INFO";
            case 3:
               return "WARN";
            case 4:
               return "ERROR";
            case 5:
               return "FATAL";
            case 6:
         }
         return "NONE";
      }
   }
}
