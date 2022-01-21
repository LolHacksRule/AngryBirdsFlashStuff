package §@!b§
{
   public class §66§
   {
      
      public static const §<!_§:String = "damage";
      
      public static const §&8§:String = "removed";
      
      public static const §'!+§:String = "extraBird";
      
      private static var §1y§:Array;
      
      private static var §?L§:Array;
      
      private static var §[$§:Array;
       
      
      public function §66§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §1y§ = [];
         §?L§ = [];
         §[$§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §<!_§:
               §1y§.push(param1);
               break;
            case §&8§:
               §?L§.push(param1);
               break;
            case §'!+§:
               §[$§.push(param1);
         }
      }
      
      public static function §60§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §1y§.toString();
         if(§?L§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §?L§.toString();
         }
         if(§[$§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §[$§.toString();
         }
         return _loc1_;
      }
   }
}
