package §<!X§
{
   public class §]d§
   {
      
      public static const §6!f§:String = "_";
      
      public static const §6s§:String = "start";
      
      public static const §1q§:String = "end";
      
      public static const §"!3§:String = "exit";
      
      public static const §&!n§:String = "run";
      
      public static const §-Q§:String = "transition_in";
      
      public static const §<"+§:String = "transition_out";
      
      public static const § K§:String = "default";
       
      
      public function §]d§()
      {
         super();
      }
      
      public static function §>"=§() : String
      {
         return §6s§ + §6!f§ + §&!n§;
      }
      
      public static function §%"<§() : String
      {
         return §6s§ + §6!f§ + §-Q§ + §6!f§ + § K§;
      }
      
      public static function §>!u§() : String
      {
         return §6s§ + §6!f§ + §<"+§ + §6!f§ + § K§;
      }
      
      public static function §7L§(param1:String = "") : String
      {
         var _loc2_:String = §6s§ + §6!f§ + §-Q§;
         return _loc2_ + (param1 != "" ? §6!f§ + param1.toLowerCase() : "");
      }
      
      public static function § P§(param1:String = "") : String
      {
         var _loc2_:String = §6s§ + §6!f§ + §<"+§;
         return _loc2_ + (param1 != "" ? §6!f§ + param1.toLowerCase() : "");
      }
   }
}
