package §,§
{
   public class §'-§
   {
      
      public static const §"o§:String = "damage";
      
      public static const §@!4§:String = "removed";
      
      public static const §+j§:String = "extraBird";
      
      private static var §[v§:Array;
      
      private static var §"!K§:Array;
      
      private static var §@!c§:Array;
       
      
      public function §'-§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §[v§ = [];
         §"!K§ = [];
         §@!c§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §"o§:
               §[v§.push(param1);
               break;
            case §@!4§:
               §"!K§.push(param1);
               break;
            case §+j§:
               §@!c§.push(param1);
         }
      }
      
      public static function §1-§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §[v§.toString();
         if(§"!K§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"!K§.toString();
         }
         if(§@!c§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §@!c§.toString();
         }
         return _loc1_;
      }
   }
}
