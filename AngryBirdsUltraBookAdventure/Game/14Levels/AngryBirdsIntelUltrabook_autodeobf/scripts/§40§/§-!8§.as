package §40§
{
   public class §-!8§
   {
      
      public static const §6!K§:String = "damage";
      
      public static const §const§:String = "removed";
      
      public static const §'!b§:String = "extraBird";
      
      private static var §?#§:Array;
      
      private static var §+H§:Array;
      
      private static var §]!§:Array;
       
      
      public function §-!8§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §?#§ = [];
         §+H§ = [];
         §]!§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §6!K§:
               §?#§.push(param1);
               break;
            case §const§:
               §+H§.push(param1);
               break;
            case §'!b§:
               §]!§.push(param1);
         }
      }
      
      public static function §#$§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §?#§.toString();
         if(§+H§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §+H§.toString();
         }
         if(§]!§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §]!§.toString();
         }
         return _loc1_;
      }
   }
}
