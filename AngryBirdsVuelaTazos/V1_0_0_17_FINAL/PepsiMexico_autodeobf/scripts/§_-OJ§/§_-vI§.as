package §_-OJ§
{
   public class §_-vI§
   {
      
      public static const §_-PL§:String = "damage";
      
      public static const §_-T7§:String = "removed";
      
      public static const §_-Tc§:String = "extraBird";
      
      private static var §_-jc§:Array;
      
      private static var §_-jA§:Array;
      
      private static var §_-8h§:Array;
       
      
      public function §_-vI§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §_-jc§ = [];
         §_-jA§ = [];
         §_-8h§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §_-PL§:
               §_-jc§.push(param1);
               break;
            case §_-T7§:
               §_-jA§.push(param1);
               break;
            case §_-Tc§:
               §_-8h§.push(param1);
         }
      }
      
      public static function §_-iC§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §_-jc§.toString();
         if(§_-jA§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-jA§.toString();
         }
         if(§_-8h§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §_-8h§.toString();
         }
         return _loc1_;
      }
   }
}
