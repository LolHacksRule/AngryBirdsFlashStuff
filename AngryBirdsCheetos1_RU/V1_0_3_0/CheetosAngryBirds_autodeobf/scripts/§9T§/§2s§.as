package §9T§
{
   public class §2s§
   {
      
      public static const §!!1§:String = "damage";
      
      public static const §9F§:String = "removed";
      
      public static const §,P§:String = "extraBird";
      
      private static var §<&§:Array;
      
      private static var §7-§:Array;
      
      private static var §;!E§:Array;
       
      
      public function §2s§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §<&§ = [];
         §7-§ = [];
         §;!E§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §!!1§:
               §<&§.push(param1);
               break;
            case §9F§:
               §7-§.push(param1);
               break;
            case §,P§:
               §;!E§.push(param1);
         }
      }
      
      public static function §23§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §<&§.toString();
         if(§7-§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §7-§.toString();
         }
         if(§;!E§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;!E§.toString();
         }
         return _loc1_;
      }
   }
}
