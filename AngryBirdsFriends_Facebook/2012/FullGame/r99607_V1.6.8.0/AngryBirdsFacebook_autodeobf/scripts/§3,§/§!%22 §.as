package §3,§
{
   public class §!" §
   {
      
      public static const §4!P§:String = "damage";
      
      public static const §99§:String = "removed";
      
      public static const § !,§:String = "extraBird";
      
      private static var §3!?§:Array;
      
      private static var §3!9§:Array;
      
      private static var §!6§:Array;
       
      
      public function §!" §()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §3!?§ = [];
         §3!9§ = [];
         §!6§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §4!P§:
               §3!?§.push(param1);
               break;
            case §99§:
               §3!9§.push(param1);
               break;
            case § !,§:
               §!6§.push(param1);
         }
      }
      
      public static function §81§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §3!?§.toString();
         if(§3!9§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §3!9§.toString();
         }
         if(§!6§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §!6§.toString();
         }
         return _loc1_;
      }
   }
}
