package §=b§
{
   public class §'=§
   {
      
      public static const §>!c§:String = "damage";
      
      public static const §>L§:String = "removed";
      
      public static const §4"4§:String = "extraBird";
      
      private static var §^"1§:Array;
      
      private static var §"e§:Array;
      
      private static var §^K§:Array;
       
      
      public function §'=§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §^"1§ = [];
         §"e§ = [];
         §^K§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §>!c§:
               §^"1§.push(param1);
               break;
            case §>L§:
               §"e§.push(param1);
               break;
            case §4"4§:
               §^K§.push(param1);
         }
      }
      
      public static function §'!W§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §^"1§.toString();
         if(§"e§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"e§.toString();
         }
         if(§^K§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §^K§.toString();
         }
         return _loc1_;
      }
   }
}
