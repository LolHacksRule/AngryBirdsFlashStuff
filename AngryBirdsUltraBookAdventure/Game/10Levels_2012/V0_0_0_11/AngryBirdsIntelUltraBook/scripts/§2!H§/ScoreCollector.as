package §2!H§
{
   public class ScoreCollector
   {
      
      public static const §!!T§:String = "damage";
      
      public static const §&o§:String = "removed";
      
      public static const §0C§:String = "extraBird";
      
      private static var §^z§:Array;
      
      private static var §]+§:Array;
      
      private static var §4>§:Array;
       
      
      public function ScoreCollector()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §^z§ = [];
         §]+§ = [];
         §4>§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §!!T§:
               §^z§.push(param1);
               break;
            case §&o§:
               §]+§.push(param1);
               break;
            case §0C§:
               §4>§.push(param1);
         }
      }
      
      public static function §@!^§() : String
      {
         var _loc1_:String = "";
         _loc1_ = §^z§.toString();
         if(§]+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §]+§.toString();
         }
         if(§4>§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §4>§.toString();
         }
         return _loc1_;
      }
   }
}
