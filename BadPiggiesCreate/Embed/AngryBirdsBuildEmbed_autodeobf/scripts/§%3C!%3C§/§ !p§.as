package §<!<§
{
   public class § !p§
   {
      
      public static const §>F§:String = "damage";
      
      public static const §8A§:String = "removed";
      
      public static const §+!c§:String = "extraBird";
      
      private static var §06§:Array;
      
      private static var §,K§:Array;
      
      private static var §1!#§:Array;
       
      
      public function § !p§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §06§ = [];
         §,K§ = [];
         §1!#§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §>F§:
               §06§.push(param1);
               break;
            case §8A§:
               §,K§.push(param1);
               break;
            case §+!c§:
               §1!#§.push(param1);
         }
      }
      
      public static function §1$§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §06§.toString();
         if(§,K§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §,K§.toString();
         }
         if(§1!#§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §1!#§.toString();
         }
         return _loc1_;
      }
   }
}
