package §5!?§
{
   public class §&%§
   {
      
      public static const §-S§:String = "damage";
      
      public static const §8w§:String = "removed";
      
      public static const §[!8§:String = "extraBird";
      
      private static var §]w§:Array;
      
      private static var §4!5§:Array;
      
      private static var §<4§:Array;
       
      
      public function §&%§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §]w§ = [];
         §4!5§ = [];
         §<4§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §-S§:
               §]w§.push(param1);
               break;
            case §8w§:
               §4!5§.push(param1);
               break;
            case §[!8§:
               §<4§.push(param1);
         }
      }
      
      public static function §!!'§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §]w§.toString();
         if(§4!5§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §4!5§.toString();
         }
         if(§<4§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §<4§.toString();
         }
         return _loc1_;
      }
   }
}
