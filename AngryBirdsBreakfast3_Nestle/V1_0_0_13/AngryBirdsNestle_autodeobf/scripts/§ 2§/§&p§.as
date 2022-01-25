package § 2§
{
   public class §&p§
   {
      
      public static const §1p§:String = "damage";
      
      public static const §6!y§:String = "removed";
      
      public static const §?Y§:String = "extraBird";
      
      private static var §7K§:Array;
      
      private static var §,D§:Array;
      
      private static var §0b§:Array;
       
      
      public function §&p§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §7K§ = [];
         §,D§ = [];
         §0b§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §1p§:
               §7K§.push(param1);
               break;
            case §6!y§:
               §,D§.push(param1);
               break;
            case §?Y§:
               §0b§.push(param1);
         }
      }
      
      public static function §]!Y§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §7K§.toString();
         if(§,D§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §,D§.toString();
         }
         if(§0b§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §0b§.toString();
         }
         return _loc1_;
      }
   }
}
