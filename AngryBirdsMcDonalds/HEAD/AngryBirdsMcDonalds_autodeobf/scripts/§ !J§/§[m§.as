package § !J§
{
   public class §[m§
   {
      
      public static const §`!6§:String = "damage";
      
      public static const §56§:String = "removed";
      
      public static const §7!?§:String = "extraBird";
      
      private static var §[!b§:Array;
      
      private static var §set §:Array;
      
      private static var §&p§:Array;
       
      
      public function §[m§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §[!b§ = [];
         §set § = [];
         §&p§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §`!6§:
               §[!b§.push(param1);
               break;
            case §56§:
               §set §.push(param1);
               break;
            case §7!?§:
               §&p§.push(param1);
         }
      }
      
      public static function §'E§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §[!b§.toString();
         if(§set §.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §set §.toString();
         }
         if(§&p§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&p§.toString();
         }
         return _loc1_;
      }
   }
}
