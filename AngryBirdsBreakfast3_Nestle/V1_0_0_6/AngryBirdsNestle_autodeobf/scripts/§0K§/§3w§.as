package §0K§
{
   public class §3w§
   {
      
      public static const §1"&§:String = "_";
      
      public static const §@f§:String = "start";
      
      public static const §;"0§:String = "end";
      
      public static const §]L§:String = "exit";
      
      public static const §@!B§:String = "run";
      
      public static const § "5§:String = "transition_in";
      
      public static const §,^§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §3w§()
      {
         super();
      }
      
      public static function § if§() : String
      {
         return §@f§ + §1"&§ + §@!B§;
      }
      
      public static function §!1§() : String
      {
         return §@f§ + §1"&§ + § "5§ + §1"&§ + DEFAULT;
      }
      
      public static function §@!n§() : String
      {
         return §@f§ + §1"&§ + §,^§ + §1"&§ + DEFAULT;
      }
      
      public static function §&!`§(param1:String = "") : String
      {
         var _loc2_:String = §@f§ + §1"&§ + § "5§;
         return _loc2_ + (param1 != "" ? §1"&§ + param1.toLowerCase() : "");
      }
      
      public static function §2r§(param1:String = "") : String
      {
         var _loc2_:String = §@f§ + §1"&§ + §,^§;
         return _loc2_ + (param1 != "" ? §1"&§ + param1.toLowerCase() : "");
      }
   }
}
