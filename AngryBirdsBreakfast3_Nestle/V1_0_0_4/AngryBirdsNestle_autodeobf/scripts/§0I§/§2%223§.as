package §0I§
{
   public class §2"3§
   {
      
      public static const §@E§:String = "damage";
      
      public static const §-!+§:String = "removed";
      
      public static const §!!y§:String = "extraBird";
      
      private static var §=!7§:Array;
      
      private static var §8O§:Array;
      
      private static var §<Q§:Array;
       
      
      public function §2"3§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §=!7§ = [];
         §8O§ = [];
         §<Q§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §@E§:
               §=!7§.push(param1);
               break;
            case §-!+§:
               §8O§.push(param1);
               break;
            case §!!y§:
               §<Q§.push(param1);
         }
      }
      
      public static function §^r§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §=!7§.toString();
         if(§8O§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §8O§.toString();
         }
         if(§<Q§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §<Q§.toString();
         }
         return _loc1_;
      }
   }
}
