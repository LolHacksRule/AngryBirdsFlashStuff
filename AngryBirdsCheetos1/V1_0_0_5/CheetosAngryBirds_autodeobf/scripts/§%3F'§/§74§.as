package §?'§
{
   public class §74§
   {
      
      public static const §^_§:String = "damage";
      
      public static const §][§:String = "removed";
      
      public static const §3F§:String = "extraBird";
      
      private static var §3B§:Array;
      
      private static var §]M§:Array;
      
      private static var §&"§:Array;
       
      
      public function §74§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §3B§ = [];
         §]M§ = [];
         §&"§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §^_§:
               §3B§.push(param1);
               break;
            case §][§:
               §]M§.push(param1);
               break;
            case §3F§:
               §&"§.push(param1);
         }
      }
      
      public static function §=!A§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §3B§.toString();
         if(§]M§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §]M§.toString();
         }
         if(§&"§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&"§.toString();
         }
         return _loc1_;
      }
   }
}
