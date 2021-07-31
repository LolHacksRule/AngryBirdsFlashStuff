package §6A§
{
   public class §0!'§
   {
      
      public static const §36§:String = "damage";
      
      public static const §=!E§:String = "removed";
      
      public static const §[]§:String = "extraBird";
      
      private static var §%6§:Array;
      
      private static var §;J§:Array;
      
      private static var § !#§:Array;
       
      
      public function §0!'§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §%6§ = [];
         §;J§ = [];
         § !#§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §36§:
               §%6§.push(param1);
               break;
            case §=!E§:
               §;J§.push(param1);
               break;
            case §[]§:
               § !#§.push(param1);
         }
      }
      
      public static function §^;§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §%6§.toString();
         if(§;J§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;J§.toString();
         }
         if(§ !#§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += § !#§.toString();
         }
         return _loc1_;
      }
   }
}
