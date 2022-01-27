package §^#>§
{
   public class §&'§
   {
      
      public static const §'#?§:String = "damage";
      
      public static const §8#'§:String = "removed";
      
      public static const §1!W§:String = "extraBird";
      
      private static var §%!o§:Array;
      
      private static var §?"<§:Array;
      
      private static var §>"L§:Array;
       
      
      public function §&'§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §%!o§ = [];
         §?"<§ = [];
         §>"L§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §'#?§:
               §%!o§.push(param1);
               break;
            case §8#'§:
               §?"<§.push(param1);
               break;
            case §1!W§:
               §>"L§.push(param1);
         }
      }
      
      public static function §2w§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §%!o§.toString();
         if(§?"<§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §?"<§.toString();
         }
         if(§>"L§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §>"L§.toString();
         }
         return _loc1_;
      }
   }
}
