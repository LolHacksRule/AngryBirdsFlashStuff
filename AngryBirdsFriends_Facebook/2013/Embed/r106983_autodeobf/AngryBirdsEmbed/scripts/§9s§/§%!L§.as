package §9s§
{
   public class §%!L§
   {
      
      public static const §9&§:String = "damage";
      
      public static const §^,§:String = "removed";
      
      public static const §3o§:String = "extraBird";
      
      private static var §]!!§:Array;
      
      private static var §5§:Array;
      
      private static var §^d§:Array;
       
      
      public function §%!L§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §]!!§ = [];
         §5§ = [];
         §^d§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §9&§:
               §]!!§.push(param1);
               break;
            case §^,§:
               §5§.push(param1);
               break;
            case §3o§:
               §^d§.push(param1);
         }
      }
      
      public static function §#G§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §]!!§.toString();
         if(§5§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §5§.toString();
         }
         if(§^d§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §^d§.toString();
         }
         return _loc1_;
      }
   }
}
