package §9!'§
{
   public class §8j§
   {
      
      public static const §@4§:String = "damage";
      
      public static const §9z§:String = "removed";
      
      public static const §3a§:String = "extraBird";
      
      private static var §;!W§:Array;
      
      private static var §;b§:Array;
      
      private static var §,!6§:Array;
       
      
      public function §8j§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §;!W§ = [];
         §;b§ = [];
         §,!6§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §@4§:
               §;!W§.push(param1);
               break;
            case §9z§:
               §;b§.push(param1);
               break;
            case §3a§:
               §,!6§.push(param1);
         }
      }
      
      public static function §<@§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §;!W§.toString();
         if(§;b§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;b§.toString();
         }
         if(§,!6§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §,!6§.toString();
         }
         return _loc1_;
      }
   }
}
