package §!!n§
{
   import §+!4§.§&!"§;
   import §,"G§.§,!&§;
   import §3"H§.§"w§;
   import §6=§.§+!,§;
   import §^V§.Logging;
   import com.furusystems.dconsole2.DConsole;
   
   public class §8y§ implements §,!&§
   {
       
      
      public function §8y§()
      {
         super();
         DConsole.§0#Q§("setLoggingLevel",this.setLoggingLevel,"Logging","Set the current logging level (ERROR,FATAL,INFO,WARN,DEBUG)");
         DConsole.§0#Q§("getLoggingLevel",this.getLoggingLevel,"Logging","Print the current logging level");
      }
      
      private function getLoggingLevel() : void
      {
         DConsole.§"#L§("Current logging level is \'" + §"w§.§[!3§(Logging.§8N§()) + "\'");
      }
      
      private function setLoggingLevel(param1:String = "ALL") : void
      {
         Logging.§>!C§(§"w§.§3#9§(param1));
         this.getLoggingLevel();
      }
      
      public function §""W§(param1:Object, param2:String, param3:String) : void
      {
         if(String(param1) == "Logging")
         {
            param1 = DConsole.§["w§;
         }
         var _loc4_:String = §+!,§.DEBUG;
         switch(§"w§.§3#9§(param2))
         {
            case §&!"§.ERROR:
               _loc4_ = §+!,§.ERROR;
               break;
            case §&!"§.FATAL:
               _loc4_ = §+!,§.FATAL;
               break;
            case §&!"§.INFO:
               _loc4_ = §+!,§.INFO;
               break;
            case §&!"§.WARN:
               _loc4_ = §+!,§.§',§;
               break;
            case §&!"§.DEBUG:
            default:
               _loc4_ = §+!,§.DEBUG;
         }
         DConsole.§""W§(param3,_loc4_,String(param1));
      }
   }
}
