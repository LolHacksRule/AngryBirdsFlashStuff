package §4!-§
{
   public class §1F§
   {
      
      public static const §0S§:String = "damage";
      
      public static const §;[§:String = "removed";
      
      public static const §#L§:String = "extraBird";
      
      private static var §#+§:Array;
      
      private static var §8G§:Array;
      
      private static var §`0§:Array;
       
      
      public function §1F§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §#+§ = [];
         §8G§ = [];
         §`0§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §0S§:
               §#+§.push(param1);
               break;
            case §;[§:
               §8G§.push(param1);
               break;
            case §#L§:
               §`0§.push(param1);
         }
      }
      
      public static function §^!D§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §#+§.toString();
         if(§8G§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §8G§.toString();
         }
         if(§`0§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §`0§.toString();
         }
         return _loc1_;
      }
   }
}
