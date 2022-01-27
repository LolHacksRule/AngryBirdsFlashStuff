package §^V§
{
   import §+!4§.§&!"§;
   import §+!4§.§&"p§;
   import §,"G§.§,!&§;
   import §,"G§.§-A§;
   import §3"H§.§<K§;
   import §^!r§.§[#,§;
   import flash.utils.Dictionary;
   
   public class Logging
   {
      
      public static const §="9§:String = "Log";
      
      private static var §?!w§:§8F§;
      
      private static var §4"4§:§,!&§ = new §-A§();
      
      private static var §1B§:int = §&"p§.§"#&§;
      
      private static var §!"o§:String = "Log";
      
      private static var §4"C§:int = §&!"§.ALL;
      
      private static var §&k§:Dictionary;
      
      private static var §=!J§:Boolean = true;
      
      private static var §7!3§:Boolean = false;
      
      private static var §'!=§:int = 0;
       
      
      public function Logging()
      {
         super();
      }
      
      public static function get root() : §8F§
      {
         if(!§?!w§)
         {
            §?!w§ = new §[#,§(Logging);
         }
         return §?!w§;
      }
      
      public static function get §<#$§() : §,!&§
      {
         return §4"4§;
      }
      
      public static function set §<#$§(param1:§,!&§) : void
      {
         §4"4§ = param1;
      }
      
      public static function get §>#A§() : Boolean
      {
         return §7!3§;
      }
      
      public static function set §>#A§(param1:Boolean) : void
      {
         §7!3§ = param1;
      }
      
      public static function §""W§(param1:Object, param2:String, param3:String) : void
      {
         if(§4"4§)
         {
            if(§=!J§)
            {
               §4"4§.§""W§(param1,param2,param3);
            }
            else if(§&k§[param1] != null)
            {
               §4"4§.§""W§(param1,param2,param3);
            }
         }
         if(§7!3§)
         {
            trace(param1 + "\t[" + param2 + "]\t" + param3);
         }
      }
      
      public static function §@#<§(param1:int) : void
      {
         §1B§ = param1;
      }
      
      public static function §3o§() : int
      {
         return §1B§;
      }
      
      public static function §0"O§() : String
      {
         return §!"o§;
      }
      
      public static function §,$§(param1:String) : void
      {
         §!"o§ = param1.split(" ").join("_");
      }
      
      public static function §,S§(param1:*) : §8F§
      {
         return new §[#,§(param1);
      }
      
      public static function §>!C§(param1:int) : void
      {
         §4"C§ = param1;
      }
      
      public static function §8N§() : int
      {
         return §4"C§;
      }
      
      public static function §"" §(... rest) : void
      {
         §&k§ = new Dictionary();
         var _loc2_:int = rest.length;
         while(_loc2_--)
         {
            if(rest[_loc2_] is Class)
            {
               rest[_loc2_] = §<K§.§^m§(rest[_loc2_]);
            }
            §&k§[rest[_loc2_]] = true;
         }
         §=!J§ = rest.length == 0;
      }
      
      public static function §%"t§(param1:String) : Boolean
      {
         return §&k§[param1] != null;
      }
   }
}
