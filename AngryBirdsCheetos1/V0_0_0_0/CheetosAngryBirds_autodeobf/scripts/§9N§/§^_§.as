package §9N§
{
   public class §^_§
   {
      
      public static const §][§:String = "damage";
      
      public static const §3F§:String = "removed";
      
      public static const §3B§:String = "extraBird";
      
      private static var §]M§:Array;
      
      private static var §&"§:Array;
      
      private static var §=!A§:Array;
       
      
      public function §^_§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §]M§ = [];
         §&"§ = [];
         §=!A§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §][§:
               §]M§.push(param1);
               break;
            case §3F§:
               §&"§.push(param1);
               break;
            case §3B§:
               §=!A§.push(param1);
         }
      }
      
      public static function §%!5§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §]M§.toString();
         if(§&"§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&"§.toString();
         }
         if(§=!A§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §=!A§.toString();
         }
         return _loc1_;
      }
   }
}
