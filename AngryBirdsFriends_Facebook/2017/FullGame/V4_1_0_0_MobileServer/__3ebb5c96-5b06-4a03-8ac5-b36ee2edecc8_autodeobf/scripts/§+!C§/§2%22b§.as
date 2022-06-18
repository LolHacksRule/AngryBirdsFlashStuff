package §+!C§
{
   public class §2"b§
   {
      
      public static const §%$-§:String = "damage";
      
      public static const §8"n§:String = "removed";
      
      public static const §5#Y§:String = "extraBird";
      
      private static var §@$;§:Array;
      
      private static var §]+§:Array;
      
      private static var §3$!§:Array;
       
      
      public function §2"b§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §@$;§ = [];
         §]+§ = [];
         §3$!§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §%$-§:
               §@$;§.push(param1);
               break;
            case §8"n§:
               §]+§.push(param1);
               break;
            case §5#Y§:
               §3$!§.push(param1);
         }
      }
      
      public static function §[!,§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §@$;§.toString();
         if(§]+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §]+§.toString();
         }
         if(§3$!§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §3$!§.toString();
         }
         return _loc1_;
      }
      
      public static function §7S§() : void
      {
         §3$!§ = [];
      }
   }
}
