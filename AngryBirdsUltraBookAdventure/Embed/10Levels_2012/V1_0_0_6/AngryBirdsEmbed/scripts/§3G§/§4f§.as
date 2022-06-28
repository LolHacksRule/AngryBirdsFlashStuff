package §3G§
{
   public class §4f§
   {
      
      public static const §!l§:String = "damage";
      
      public static const §7!#§:String = "removed";
      
      public static const §7!"§:String = "extraBird";
      
      private static var §=%§:Array;
      
      private static var §=C§:Array;
      
      private static var §0!7§:Array;
       
      
      public function §4f§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §=%§ = [];
         §=C§ = [];
         §0!7§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §!l§:
               §=%§.push(param1);
               break;
            case §7!#§:
               §=C§.push(param1);
               break;
            case §7!"§:
               §0!7§.push(param1);
         }
      }
      
      public static function §?;§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §=%§.toString();
         if(§=C§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §=C§.toString();
         }
         if(§0!7§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §0!7§.toString();
         }
         return _loc1_;
      }
   }
}
