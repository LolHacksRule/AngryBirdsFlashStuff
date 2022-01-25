package §&F§
{
   public class §6K§
   {
      
      public static const §"E§:String = "damage";
      
      public static const §9!&§:String = "removed";
      
      public static const §6&§:String = "extraBird";
      
      private static var §-P§:Array;
      
      private static var §26§:Array;
      
      private static var §4W§:Array;
       
      
      public function §6K§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §-P§ = [];
         §26§ = [];
         §4W§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §"E§:
               §-P§.push(param1);
               break;
            case §9!&§:
               §26§.push(param1);
               break;
            case §6&§:
               §4W§.push(param1);
         }
      }
      
      public static function §3b§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §-P§.toString();
         if(§26§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §26§.toString();
         }
         if(§4W§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §4W§.toString();
         }
         return _loc1_;
      }
   }
}
