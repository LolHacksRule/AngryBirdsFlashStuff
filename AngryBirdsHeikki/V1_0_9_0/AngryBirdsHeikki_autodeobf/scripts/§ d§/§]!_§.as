package § d§
{
   public class §]!_§
   {
      
      public static const §&I§:String = "damage";
      
      public static const §6@§:String = "removed";
      
      public static const §+!#§:String = "extraBird";
      
      private static var §82§:Array;
      
      private static var §7H§:Array;
      
      private static var §0! §:Array;
       
      
      public function §]!_§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §82§ = [];
         §7H§ = [];
         §0! § = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §&I§:
               §82§.push(param1);
               break;
            case §6@§:
               §7H§.push(param1);
               break;
            case §+!#§:
               §0! §.push(param1);
         }
      }
      
      public static function §7!]§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §82§.toString();
         if(§7H§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §7H§.toString();
         }
         if(§0! §.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §0! §.toString();
         }
         return _loc1_;
      }
   }
}
