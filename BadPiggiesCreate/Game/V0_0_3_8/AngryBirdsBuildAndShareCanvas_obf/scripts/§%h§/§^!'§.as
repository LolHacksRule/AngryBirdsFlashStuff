package §%h§
{
   public class §^!'§
   {
      
      public static const §?!w§:String = "damage";
      
      public static const §6_§:String = "removed";
      
      public static const §+!§:String = "extraBird";
      
      private static var §'C§:Array;
      
      private static var §+!,§:Array;
      
      private static var §'+§:Array;
       
      
      public function §^!'§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §'C§ = [];
         §+!,§ = [];
         §'+§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §?!w§:
               §'C§.push(param1);
               break;
            case §6_§:
               §+!,§.push(param1);
               break;
            case §+!§:
               §'+§.push(param1);
         }
      }
      
      public static function §9!M§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §'C§.toString();
         if(§+!,§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §+!,§.toString();
         }
         if(§'+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §'+§.toString();
         }
         return _loc1_;
      }
   }
}
