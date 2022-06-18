package §#;§
{
   public class §?b§
   {
      
      public static const §=!H§:String = "damage";
      
      public static const §6L§:String = "removed";
      
      public static const §`N§:String = "extraBird";
      
      private static var §2e§:Array;
      
      private static var §]§:Array;
      
      private static var §<!6§:Array;
       
      
      public function §?b§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §2e§ = [];
         §]§ = [];
         §<!6§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §=!H§:
               §2e§.push(param1);
               break;
            case §6L§:
               §]§.push(param1);
               break;
            case §`N§:
               §<!6§.push(param1);
         }
      }
      
      public static function §!m§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §2e§.toString();
         if(§]§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §]§.toString();
         }
         if(§<!6§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §<!6§.toString();
         }
         return _loc1_;
      }
   }
}
