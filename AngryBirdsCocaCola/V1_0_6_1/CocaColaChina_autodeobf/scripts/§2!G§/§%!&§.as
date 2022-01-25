package §2!G§
{
   public class §%!&§
   {
      
      public static const §2c§:String = "damage";
      
      public static const §]!'§:String = "removed";
      
      public static const §[!,§:String = "extraBird";
      
      private static var §0!R§:Array;
      
      private static var §"E§:Array;
      
      private static var §#h§:Array;
       
      
      public function §%!&§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §0!R§ = [];
         §"E§ = [];
         §#h§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §2c§:
               §0!R§.push(param1);
               break;
            case §]!'§:
               §"E§.push(param1);
               break;
            case §[!,§:
               §#h§.push(param1);
         }
      }
      
      public static function §[?§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §0!R§.toString();
         if(§"E§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"E§.toString();
         }
         if(§#h§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §#h§.toString();
         }
         return _loc1_;
      }
   }
}
