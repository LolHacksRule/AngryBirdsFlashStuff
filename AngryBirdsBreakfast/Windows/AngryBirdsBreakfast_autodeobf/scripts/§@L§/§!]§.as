package §@L§
{
   public class §!]§
   {
      
      public static const §%!&§:String = "damage";
      
      public static const §#"$§:String = "removed";
      
      public static const §5!Q§:String = "extraBird";
      
      private static var §4i§:Array;
      
      private static var §"3§:Array;
      
      private static var § "'§:Array;
       
      
      public function §!]§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §4i§ = [];
         §"3§ = [];
         § "'§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §%!&§:
               §4i§.push(param1);
               break;
            case §#"$§:
               §"3§.push(param1);
               break;
            case §5!Q§:
               § "'§.push(param1);
         }
      }
      
      public static function §5"-§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §4i§.toString();
         if(§"3§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"3§.toString();
         }
         if(§ "'§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += § "'§.toString();
         }
         return _loc1_;
      }
   }
}
