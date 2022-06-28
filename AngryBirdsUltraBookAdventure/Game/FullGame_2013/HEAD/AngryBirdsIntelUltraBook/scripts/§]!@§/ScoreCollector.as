package §]!@§
{
   public class ScoreCollector
   {
      
      public static const §"!R§:String = "damage";
      
      public static const § !K§:String = "removed";
      
      public static const §&![§:String = "extraBird";
      
      private static var §^N§:Array;
      
      private static var §,7§:Array;
      
      private static var §<P§:Array;
       
      
      public function ScoreCollector()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §^N§ = [];
         §,7§ = [];
         §<P§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §"!R§:
               §^N§.push(param1);
               break;
            case § !K§:
               §,7§.push(param1);
               break;
            case §&![§:
               §<P§.push(param1);
         }
      }
      
      public static function §>t§() : String
      {
         var _loc1_:String = "";
         _loc1_ = §^N§.toString();
         if(§,7§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §,7§.toString();
         }
         if(§<P§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §<P§.toString();
         }
         return _loc1_;
      }
   }
}
