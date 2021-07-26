package §#g§
{
   public class §%!a§
   {
      
      public static const §<!u§:String = "damage";
      
      public static const §5#<§:String = "removed";
      
      public static const §+#k§:String = "extraBird";
      
      private static var §@9§:Array;
      
      private static var §%I§:Array;
      
      private static var §!$?§:Array;
       
      
      public function §%!a§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §@9§ = [];
         §%I§ = [];
         §!$?§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §<!u§:
               §@9§.push(param1);
               break;
            case §5#<§:
               §%I§.push(param1);
               break;
            case §+#k§:
               §!$?§.push(param1);
         }
      }
      
      public static function §+#Q§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §@9§.toString();
         if(§%I§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §%I§.toString();
         }
         if(§!$?§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §!$?§.toString();
         }
         return _loc1_;
      }
      
      public static function §0C§() : void
      {
         §!$?§ = [];
      }
   }
}
