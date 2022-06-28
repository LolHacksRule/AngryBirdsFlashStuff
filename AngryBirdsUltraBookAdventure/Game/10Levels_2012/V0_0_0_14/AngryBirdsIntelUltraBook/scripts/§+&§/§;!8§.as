package §+&§
{
   public class §;!8§
   {
      
      public static const §>X§:String = "damage";
      
      public static const §-"§:String = "removed";
      
      public static const §,!E§:String = "extraBird";
      
      private static var §6!3§:Array;
      
      private static var §0!9§:Array;
      
      private static var §?!S§:Array;
       
      
      public function §;!8§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §6!3§ = [];
         §0!9§ = [];
         §?!S§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §>X§:
               §6!3§.push(param1);
               break;
            case §-"§:
               §0!9§.push(param1);
               break;
            case §,!E§:
               §?!S§.push(param1);
         }
      }
      
      public static function §?!h§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §6!3§.toString();
         if(§0!9§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §0!9§.toString();
         }
         if(§?!S§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §?!S§.toString();
         }
         return _loc1_;
      }
   }
}
