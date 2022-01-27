package §3"#§
{
   public class § 7§
   {
      
      public static const §#U§:String = "damage";
      
      public static const §?A§:String = "removed";
      
      public static const §>"G§:String = "extraBird";
      
      private static var §^C§:Array;
      
      private static var §8!Z§:Array;
      
      private static var §'"8§:Array;
       
      
      public function § 7§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §^C§ = [];
         §8!Z§ = [];
         §'"8§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §#U§:
               §^C§.push(param1);
               break;
            case §?A§:
               §8!Z§.push(param1);
               break;
            case §>"G§:
               §'"8§.push(param1);
         }
      }
      
      public static function §2K§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §^C§.toString();
         if(§8!Z§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §8!Z§.toString();
         }
         if(§'"8§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §'"8§.toString();
         }
         return _loc1_;
      }
   }
}
