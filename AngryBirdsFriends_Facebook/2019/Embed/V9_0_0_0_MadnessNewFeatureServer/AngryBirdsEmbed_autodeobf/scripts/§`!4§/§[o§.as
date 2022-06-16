package §`!4§
{
   public class §[o§
   {
      
      public static const §6O§:String = "damage";
      
      public static const §&8§:String = "removed";
      
      public static const §`!0§:String = "extraBird";
      
      private static var §<!;§:Array;
      
      private static var §6?§:Array;
      
      private static var §+!C§:Array;
       
      
      public function §[o§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §<!;§ = [];
         §6?§ = [];
         §+!C§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §6O§:
               §<!;§.push(param1);
               break;
            case §&8§:
               §6?§.push(param1);
               break;
            case §`!0§:
               §+!C§.push(param1);
         }
      }
      
      public static function §9u§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §<!;§.toString();
         if(§6?§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §6?§.toString();
         }
         if(§+!C§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §+!C§.toString();
         }
         return _loc1_;
      }
   }
}
