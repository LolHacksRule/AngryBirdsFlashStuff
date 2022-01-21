package §<L§
{
   public class §4S§
   {
      
      public static const §>!n§:String = "damage";
      
      public static const §;$§:String = "removed";
      
      public static const §2!W§:String = "extraBird";
      
      private static var §5T§:Array;
      
      private static var §7#§:Array;
      
      private static var §=N§:Array;
       
      
      public function §4S§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §5T§ = [];
         §7#§ = [];
         §=N§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §>!n§:
               §5T§.push(param1);
               break;
            case §;$§:
               §7#§.push(param1);
               break;
            case §2!W§:
               §=N§.push(param1);
         }
      }
      
      public static function §3c§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §5T§.toString();
         if(§7#§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §7#§.toString();
         }
         if(§=N§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §=N§.toString();
         }
         return _loc1_;
      }
   }
}
