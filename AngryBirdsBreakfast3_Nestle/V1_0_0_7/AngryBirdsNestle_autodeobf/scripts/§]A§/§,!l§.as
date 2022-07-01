package §]A§
{
   public class §,!l§
   {
      
      public static const §5"1§:String = "damage";
      
      public static const §"J§:String = "removed";
      
      public static const §9"%§:String = "extraBird";
      
      private static var §0!%§:Array;
      
      private static var §+A§:Array;
      
      private static var §!!Q§:Array;
       
      
      public function §,!l§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §0!%§ = [];
         §+A§ = [];
         §!!Q§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §5"1§:
               §0!%§.push(param1);
               break;
            case §"J§:
               §+A§.push(param1);
               break;
            case §9"%§:
               §!!Q§.push(param1);
         }
      }
      
      public static function §[n§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §0!%§.toString();
         if(§+A§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §+A§.toString();
         }
         if(§!!Q§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §!!Q§.toString();
         }
         return _loc1_;
      }
   }
}
