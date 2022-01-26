package §!!V§
{
   public class §[Q§
   {
      
      public static const §3'§:String = "damage";
      
      public static const §catch§:String = "removed";
      
      public static const §1!E§:String = "extraBird";
      
      private static var §63§:Array;
      
      private static var §5N§:Array;
      
      private static var §%_§:Array;
       
      
      public function §[Q§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §63§ = [];
         §5N§ = [];
         §%_§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §3'§:
               §63§.push(param1);
               break;
            case §catch§:
               §5N§.push(param1);
               break;
            case §1!E§:
               §%_§.push(param1);
         }
      }
      
      public static function §%=§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §63§.toString();
         if(§5N§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §5N§.toString();
         }
         if(§%_§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §%_§.toString();
         }
         return _loc1_;
      }
   }
}
