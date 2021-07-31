package §%x§
{
   public class §0]§
   {
      
      public static const §-h§:String = "damage";
      
      public static const §@Z§:String = "removed";
      
      public static const §,!-§:String = "extraBird";
      
      private static var §!!A§:Array;
      
      private static var §&u§:Array;
      
      private static var §&6§:Array;
       
      
      public function §0]§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §!!A§ = [];
         §&u§ = [];
         §&6§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §-h§:
               §!!A§.push(param1);
               break;
            case §@Z§:
               §&u§.push(param1);
               break;
            case §,!-§:
               §&6§.push(param1);
         }
      }
      
      public static function §!5§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §!!A§.toString();
         if(§&u§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&u§.toString();
         }
         if(§&6§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&6§.toString();
         }
         return _loc1_;
      }
   }
}
