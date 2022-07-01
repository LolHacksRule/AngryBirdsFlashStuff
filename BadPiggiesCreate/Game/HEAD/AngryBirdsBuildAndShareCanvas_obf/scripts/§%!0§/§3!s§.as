package §%!0§
{
   public class §3!s§
   {
      
      public static const § !?§:String = "damage";
      
      public static const §0`§:String = "removed";
      
      public static const §8!#§:String = "extraBird";
      
      private static var §9;§:Array;
      
      private static var §"A§:Array;
      
      private static var §,6§:Array;
       
      
      public function §3!s§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §9;§ = [];
         §"A§ = [];
         §,6§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case § !?§:
               §9;§.push(param1);
               break;
            case §0`§:
               §"A§.push(param1);
               break;
            case §8!#§:
               §,6§.push(param1);
         }
      }
      
      public static function §&E§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §9;§.toString();
         if(§"A§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §"A§.toString();
         }
         if(§,6§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §,6§.toString();
         }
         return _loc1_;
      }
   }
}
