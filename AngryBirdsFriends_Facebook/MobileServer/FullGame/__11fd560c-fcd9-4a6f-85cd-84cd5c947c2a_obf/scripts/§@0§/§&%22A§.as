package §@0§
{
   public class §&"A§
   {
      
      public static const §!e§:String = "damage";
      
      public static const §9$,§:String = "removed";
      
      public static const §9"G§:String = "extraBird";
      
      private static var §=#§:Array;
      
      private static var §=!0§:Array;
      
      private static var §3v§:Array;
       
      
      public function §&"A§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §=#§ = [];
         §=!0§ = [];
         §3v§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §!e§:
               §=#§.push(param1);
               break;
            case §9$,§:
               §=!0§.push(param1);
               break;
            case §9"G§:
               §3v§.push(param1);
         }
      }
      
      public static function §0l§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §=#§.toString();
         if(§=!0§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §=!0§.toString();
         }
         if(§3v§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §3v§.toString();
         }
         return _loc1_;
      }
      
      public static function §]!T§() : void
      {
         §3v§ = [];
      }
   }
}
