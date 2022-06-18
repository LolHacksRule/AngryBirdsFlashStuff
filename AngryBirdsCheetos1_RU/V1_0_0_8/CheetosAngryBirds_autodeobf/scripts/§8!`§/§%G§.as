package §8!`§
{
   public class §%G§
   {
      
      public static const §4!G§:String = "damage";
      
      public static const §,`§:String = "removed";
      
      public static const §<O§:String = "extraBird";
      
      private static var §3!1§:Array;
      
      private static var §#v§:Array;
      
      private static var §2!§:Array;
       
      
      public function §%G§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §3!1§ = [];
         §#v§ = [];
         §2!§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §4!G§:
               §3!1§.push(param1);
               break;
            case §,`§:
               §#v§.push(param1);
               break;
            case §<O§:
               §2!§.push(param1);
         }
      }
      
      public static function §4g§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §3!1§.toString();
         if(§#v§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §#v§.toString();
         }
         if(§2!§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §2!§.toString();
         }
         return _loc1_;
      }
   }
}
