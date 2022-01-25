package §@V§
{
   public class §52§
   {
      
      public static const §^Y§:String = "damage";
      
      public static const §[!g§:String = "removed";
      
      public static const §[1§:String = "extraBird";
      
      private static var §6x§:Array;
      
      private static var §'A§:Array;
      
      private static var §3N§:Array;
       
      
      public function §52§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §6x§ = [];
         §'A§ = [];
         §3N§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §^Y§:
               §6x§.push(param1);
               break;
            case §[!g§:
               §'A§.push(param1);
               break;
            case §[1§:
               §3N§.push(param1);
         }
      }
      
      public static function §3^§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §6x§.toString();
         if(§'A§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §'A§.toString();
         }
         if(§3N§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §3N§.toString();
         }
         return _loc1_;
      }
   }
}
