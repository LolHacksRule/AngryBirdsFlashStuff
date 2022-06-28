package §2_§
{
   public class §@!6§
   {
      
      public static const §?R§:String = "damage";
      
      public static const §-1§:String = "removed";
      
      public static const §+W§:String = "extraBird";
      
      private static var §3P§:Array;
      
      private static var §;k§:Array;
      
      private static var §;t§:Array;
       
      
      public function §@!6§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §3P§ = [];
         §;k§ = [];
         §;t§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §?R§:
               §3P§.push(param1);
               break;
            case §-1§:
               §;k§.push(param1);
               break;
            case §+W§:
               §;t§.push(param1);
         }
      }
      
      public static function §!i§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §3P§.toString();
         if(§;k§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;k§.toString();
         }
         if(§;t§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;t§.toString();
         }
         return _loc1_;
      }
   }
}
