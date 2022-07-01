package §1!v§
{
   public class §7!=§
   {
      
      public static const §]!%§:String = "damage";
      
      public static const § !2§:String = "removed";
      
      public static const §0K§:String = "extraBird";
      
      private static var §+`§:Array;
      
      private static var §"!o§:Array;
      
      private static var §&$§:Array;
       
      
      public function §7!=§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §+`§ = [];
         §"!o§ = [];
         §&$§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §]!%§:
               §+`§.push(param1);
               break;
            case § !2§:
               §"!o§.push(param1);
               break;
            case §0K§:
               §&$§.push(param1);
         }
      }
      
      public static function §@"3§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §+`§.toString();
         if(§"!o§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"!o§.toString();
         }
         if(§&$§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&$§.toString();
         }
         return _loc1_;
      }
   }
}
