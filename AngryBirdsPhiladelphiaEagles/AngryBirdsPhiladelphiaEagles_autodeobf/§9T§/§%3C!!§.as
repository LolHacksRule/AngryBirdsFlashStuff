package §9T§
{
   public class §<!!§
   {
      
      public static const §3^§:String = "damage";
      
      public static const §;!$§:String = "removed";
      
      public static const §?l§:String = "extraBird";
      
      private static var §!s§:Array;
      
      private static var §'@§:Array;
      
      private static var §,!+§:Array;
       
      
      public function §<!!§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §!s§ = [];
         §'@§ = [];
         §,!+§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §3^§:
               §!s§.push(param1);
               break;
            case §;!$§:
               §'@§.push(param1);
               break;
            case §?l§:
               §,!+§.push(param1);
         }
      }
      
      public static function §#!1§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §!s§.toString();
         if(§'@§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §'@§.toString();
         }
         if(§,!+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §,!+§.toString();
         }
         return _loc1_;
      }
   }
}
