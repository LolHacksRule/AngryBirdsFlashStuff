package §"§#0
{
   public class §0!0§
   {
      
      public static const §&#-§:String = "damage";
      
      public static const §[!Y§:String = "removed";
      
      public static const §[[§:String = "extraBird";
      
      private static var §[s§:Array;
      
      private static var §9"&§:Array;
      
      private static var §^!B§:Array;
       
      
      public function §0!0§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §[s§ = [];
         §9"&§ = [];
         §^!B§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §&#-§:
               §[s§.push(param1);
               break;
            case §[!Y§:
               §9"&§.push(param1);
               break;
            case §[[§:
               §^!B§.push(param1);
         }
      }
      
      public static function §>p§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §[s§.toString();
         if(§9"&§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §9"&§.toString();
         }
         if(§^!B§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §^!B§.toString();
         }
         return _loc1_;
      }
   }
}
