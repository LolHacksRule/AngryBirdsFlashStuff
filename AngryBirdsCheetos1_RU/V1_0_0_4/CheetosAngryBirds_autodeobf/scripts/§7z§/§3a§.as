package §7z§
{
   public class §3a§
   {
      
      public static const §'Z§:String = "damage";
      
      public static const §?y§:String = "removed";
      
      public static const §+7§:String = "extraBird";
      
      private static var §`@§:Array;
      
      private static var §90§:Array;
      
      private static var § !V§:Array;
       
      
      public function §3a§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §`@§ = [];
         §90§ = [];
         § !V§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §'Z§:
               §`@§.push(param1);
               break;
            case §?y§:
               §90§.push(param1);
               break;
            case §+7§:
               § !V§.push(param1);
         }
      }
      
      public static function §,&§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §`@§.toString();
         if(§90§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §90§.toString();
         }
         if(§ !V§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += § !V§.toString();
         }
         return _loc1_;
      }
   }
}
