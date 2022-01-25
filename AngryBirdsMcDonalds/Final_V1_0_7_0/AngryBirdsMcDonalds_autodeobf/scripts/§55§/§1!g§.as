package §55§
{
   public class §1!g§
   {
      
      public static const §@!f§:String = "damage";
      
      public static const §7H§:String = "removed";
      
      public static const §=!O§:String = "extraBird";
      
      private static var §5!e§:Array;
      
      private static var §]E§:Array;
      
      private static var §@+§:Array;
       
      
      public function §1!g§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §5!e§ = [];
         §]E§ = [];
         §@+§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §@!f§:
               §5!e§.push(param1);
               break;
            case §7H§:
               §]E§.push(param1);
               break;
            case §=!O§:
               §@+§.push(param1);
         }
      }
      
      public static function §<!m§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §5!e§.toString();
         if(§]E§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §]E§.toString();
         }
         if(§@+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §@+§.toString();
         }
         return _loc1_;
      }
   }
}
