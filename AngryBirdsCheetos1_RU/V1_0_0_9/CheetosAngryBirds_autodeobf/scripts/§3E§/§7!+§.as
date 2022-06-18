package §3E§
{
   public class §7!+§
   {
      
      public static const §!!C§:String = "damage";
      
      public static const §]P§:String = "removed";
      
      public static const §[!0§:String = "extraBird";
      
      private static var §?!_§:Array;
      
      private static var §6?§:Array;
      
      private static var §^@§:Array;
       
      
      public function §7!+§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §?!_§ = [];
         §6?§ = [];
         §^@§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §!!C§:
               §?!_§.push(param1);
               break;
            case §]P§:
               §6?§.push(param1);
               break;
            case §[!0§:
               §^@§.push(param1);
         }
      }
      
      public static function §<h§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §?!_§.toString();
         if(§6?§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §6?§.toString();
         }
         if(§^@§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §^@§.toString();
         }
         return _loc1_;
      }
   }
}
