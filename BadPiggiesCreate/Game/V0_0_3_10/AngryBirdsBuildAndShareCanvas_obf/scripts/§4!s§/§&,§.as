package §4!s§
{
   public class §&,§
   {
      
      public static const §]"-§:String = "damage";
      
      public static const §5i§:String = "removed";
      
      public static const §'?§:String = "extraBird";
      
      private static var §9!%§:Array;
      
      private static var §+0§:Array;
      
      private static var §-§:Array;
       
      
      public function §&,§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §9!%§ = [];
         §+0§ = [];
         §-§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §]"-§:
               §9!%§.push(param1);
               break;
            case §5i§:
               §+0§.push(param1);
               break;
            case §'?§:
               §-§.push(param1);
         }
      }
      
      public static function §!!5§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §9!%§.toString();
         if(§+0§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §+0§.toString();
         }
         if(§-§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §-§.toString();
         }
         return _loc1_;
      }
   }
}
