package §4!<§
{
   public class §;P§
   {
      
      public static const §#"I§:String = "damage";
      
      public static const §6=§:String = "removed";
      
      public static const §0n§:String = "extraBird";
      
      private static var §;!p§:Array;
      
      private static var §&!P§:Array;
      
      private static var §&!W§:Array;
       
      
      public function §;P§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §;!p§ = [];
         §&!P§ = [];
         §&!W§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §#"I§:
               §;!p§.push(param1);
               break;
            case §6=§:
               §&!P§.push(param1);
               break;
            case §0n§:
               §&!W§.push(param1);
         }
      }
      
      public static function §84§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §;!p§.toString();
         if(§&!P§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&!P§.toString();
         }
         if(§&!W§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&!W§.toString();
         }
         return _loc1_;
      }
   }
}
