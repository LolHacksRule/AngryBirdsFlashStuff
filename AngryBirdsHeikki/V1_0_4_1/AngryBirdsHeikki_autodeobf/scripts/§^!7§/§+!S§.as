package §^!7§
{
   public class §+!S§
   {
      
      public static const §71§:String = "damage";
      
      public static const §4l§:String = "removed";
      
      public static const §><§:String = "extraBird";
      
      private static var §%!_§:Array;
      
      private static var §;8§:Array;
      
      private static var §,!X§:Array;
       
      
      public function §+!S§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §%!_§ = [];
         §;8§ = [];
         §,!X§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §71§:
               §%!_§.push(param1);
               break;
            case §4l§:
               §;8§.push(param1);
               break;
            case §><§:
               §,!X§.push(param1);
         }
      }
      
      public static function §3A§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §%!_§.toString();
         if(§;8§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;8§.toString();
         }
         if(§,!X§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §,!X§.toString();
         }
         return _loc1_;
      }
   }
}
