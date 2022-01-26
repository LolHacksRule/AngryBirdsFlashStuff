package §[x§
{
   public class §^;§
   {
      
      public static const §!2§:String = "damage";
      
      public static const §"!+§:String = "removed";
      
      public static const §'s§:String = "extraBird";
      
      private static var §#W§:Array;
      
      private static var §4u§:Array;
      
      private static var §?-§:Array;
       
      
      public function §^;§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §#W§ = [];
         §4u§ = [];
         §?-§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §!2§:
               §#W§.push(param1);
               break;
            case §"!+§:
               §4u§.push(param1);
               break;
            case §'s§:
               §?-§.push(param1);
         }
      }
      
      public static function §8!>§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §#W§.toString();
         if(§4u§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §4u§.toString();
         }
         if(§?-§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §?-§.toString();
         }
         return _loc1_;
      }
   }
}
