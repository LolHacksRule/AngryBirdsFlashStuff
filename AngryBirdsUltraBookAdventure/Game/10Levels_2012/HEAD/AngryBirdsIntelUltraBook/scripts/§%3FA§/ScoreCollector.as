package §?A§
{
   public class ScoreCollector
   {
      
      public static const §"+§:String = "damage";
      
      public static const §'J§:String = "removed";
      
      public static const §+A§:String = "extraBird";
      
      private static var §0T§:Array;
      
      private static var §^+§:Array;
      
      private static var §var§:Array;
       
      
      public function ScoreCollector()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §0T§ = [];
         §^+§ = [];
         §var§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §"+§:
               §0T§.push(param1);
               break;
            case §'J§:
               §^+§.push(param1);
               break;
            case §+A§:
               §var§.push(param1);
         }
      }
      
      public static function §=!4§() : String
      {
         var _loc1_:String = "";
         _loc1_ = §0T§.toString();
         if(§^+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §^+§.toString();
         }
         if(§var§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §var§.toString();
         }
         return _loc1_;
      }
   }
}
