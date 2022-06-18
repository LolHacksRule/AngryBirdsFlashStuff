package §-A§
{
   public class §?s§
   {
      
      public static const § E§:String = "damage";
      
      public static const §`8§:String = "removed";
      
      public static const §9!2§:String = "extraBird";
      
      private static var §!!W§:Array;
      
      private static var §[&§:Array;
      
      private static var §7!%§:Array;
       
      
      public function §?s§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §!!W§ = [];
         §[&§ = [];
         §7!%§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case § E§:
               §!!W§.push(param1);
               break;
            case §`8§:
               §[&§.push(param1);
               break;
            case §9!2§:
               §7!%§.push(param1);
         }
      }
      
      public static function §,M§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §!!W§.toString();
         if(§[&§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §[&§.toString();
         }
         if(§7!%§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §7!%§.toString();
         }
         return _loc1_;
      }
   }
}
