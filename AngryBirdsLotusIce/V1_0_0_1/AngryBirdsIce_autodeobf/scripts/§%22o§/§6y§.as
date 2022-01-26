package §"o§
{
   public class §6y§
   {
      
      public static const § -§:String = "damage";
      
      public static const §9!;§:String = "removed";
      
      public static const §^C§:String = "extraBird";
      
      private static var §4t§:Array;
      
      private static var §+!+§:Array;
      
      private static var §?,§:Array;
       
      
      public function §6y§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §4t§ = [];
         §+!+§ = [];
         §?,§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case § -§:
               §4t§.push(param1);
               break;
            case §9!;§:
               §+!+§.push(param1);
               break;
            case §^C§:
               §?,§.push(param1);
         }
      }
      
      public static function §35§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §4t§.toString();
         if(§+!+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §+!+§.toString();
         }
         if(§?,§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §?,§.toString();
         }
         return _loc1_;
      }
   }
}
