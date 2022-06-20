package §]@§
{
   public class §+#Z§
   {
      
      public static const §2#o§:String = "_";
      
      public static const §@#4§:String = "start";
      
      public static const §0#s§:String = "end";
      
      public static const §>";§:String = "exit";
      
      public static const § !r§:String = "run";
      
      public static const §`!P§:String = "transition_in";
      
      public static const §?A§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
       
      
      public function §+#Z§()
      {
         super();
      }
      
      public static function §]#@§() : String
      {
         return §@#4§ + §2#o§ + § !r§;
      }
      
      public static function §="-§() : String
      {
         return §@#4§ + §2#o§ + §`!P§ + §2#o§ + DEFAULT;
      }
      
      public static function §8E§() : String
      {
         return §@#4§ + §2#o§ + §?A§ + §2#o§ + DEFAULT;
      }
      
      public static function §0$2§(param1:String = "") : String
      {
         var _loc2_:String = §@#4§ + §2#o§ + §`!P§;
         return _loc2_ + (param1 != "" ? §2#o§ + param1.toLowerCase() : "");
      }
      
      public static function §3#I§(param1:String = "") : String
      {
         var _loc2_:String = §@#4§ + §2#o§ + §?A§;
         return _loc2_ + (param1 != "" ? §2#o§ + param1.toLowerCase() : "");
      }
   }
}
