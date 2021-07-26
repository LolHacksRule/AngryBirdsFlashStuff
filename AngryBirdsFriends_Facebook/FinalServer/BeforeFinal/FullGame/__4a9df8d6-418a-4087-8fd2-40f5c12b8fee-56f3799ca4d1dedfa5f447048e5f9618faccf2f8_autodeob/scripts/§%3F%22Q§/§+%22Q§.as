package §?"Q§
{
   public class §+"Q§
   {
      
      public static const §<#-§:String = "_";
      
      public static const §[!S§:String = "start";
      
      public static const §!!9§:String = "end";
      
      public static const §5i§:String = "exit";
      
      public static const § #-§:String = "run";
      
      public static const §@!+§:String = "transition_in";
      
      public static const §6$8§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §+"Q§()
      {
         super();
      }
      
      public static function §+#[§() : String
      {
         return §[!S§ + §<#-§ + § #-§;
      }
      
      public static function §+!h§() : String
      {
         return §[!S§ + §<#-§ + §@!+§ + §<#-§ + DEFAULT;
      }
      
      public static function §,"z§() : String
      {
         return §[!S§ + §<#-§ + §6$8§ + §<#-§ + DEFAULT;
      }
      
      public static function §,H§(param1:String = "") : String
      {
         var _loc2_:String = §[!S§ + §<#-§ + §@!+§;
         return _loc2_ + (param1 != "" ? §<#-§ + param1.toLowerCase() : "");
      }
      
      public static function §8>§(param1:String = "") : String
      {
         var _loc2_:String = §[!S§ + §<#-§ + §6$8§;
         return _loc2_ + (param1 != "" ? §<#-§ + param1.toLowerCase() : "");
      }
   }
}
