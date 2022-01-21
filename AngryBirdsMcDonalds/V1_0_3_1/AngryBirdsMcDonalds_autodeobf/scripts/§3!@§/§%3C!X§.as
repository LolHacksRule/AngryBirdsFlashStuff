package §3!@§
{
   public class §<!X§
   {
      
      public static const §=!N§:String = "damage";
      
      public static const §]C§:String = "removed";
      
      public static const §;4§:String = "extraBird";
      
      private static var §1S§:Array;
      
      private static var §8!+§:Array;
      
      private static var §;d§:Array;
       
      
      public function §<!X§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §1S§ = [];
         §8!+§ = [];
         §;d§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §=!N§:
               §1S§.push(param1);
               break;
            case §]C§:
               §8!+§.push(param1);
               break;
            case §;4§:
               §;d§.push(param1);
         }
      }
      
      public static function §[!W§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §1S§.toString();
         if(§8!+§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §8!+§.toString();
         }
         if(§;d§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §;d§.toString();
         }
         return _loc1_;
      }
   }
}
