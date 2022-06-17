package § !D§
{
   public class §@#z§
   {
      
      public static const §&#'§:String = "damage";
      
      public static const §&"O§:String = "removed";
      
      public static const §@"f§:String = "extraBird";
      
      private static var §=!H§:Array;
      
      private static var §3"A§:Array;
      
      private static var §?#&§:Array;
       
      
      public function §@#z§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §=!H§ = [];
         §3"A§ = [];
         §?#&§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §&#'§:
               §=!H§.push(param1);
               break;
            case §&"O§:
               §3"A§.push(param1);
               break;
            case §@"f§:
               §?#&§.push(param1);
         }
      }
      
      public static function §8#u§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §=!H§.toString();
         if(§3"A§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §3"A§.toString();
         }
         if(§?#&§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §?#&§.toString();
         }
         return _loc1_;
      }
      
      public static function §1$$§() : void
      {
         §?#&§ = [];
      }
   }
}
