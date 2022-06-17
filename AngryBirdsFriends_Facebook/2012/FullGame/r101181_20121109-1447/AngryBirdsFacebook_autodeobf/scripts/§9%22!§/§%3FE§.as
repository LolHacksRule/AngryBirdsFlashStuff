package §9"!§
{
   public class §?E§
   {
      
      public static const §!j§:String = "damage";
      
      public static const §4!k§:String = "removed";
      
      public static const §<C§:String = "extraBird";
      
      private static var §]3§:Array;
      
      private static var §8H§:Array;
      
      private static var §6a§:Array;
       
      
      public function §?E§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §]3§ = [];
         §8H§ = [];
         §6a§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §!j§:
               §]3§.push(param1);
               break;
            case §4!k§:
               §8H§.push(param1);
               break;
            case §<C§:
               §6a§.push(param1);
         }
      }
      
      public static function §9!T§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §]3§.toString();
         if(§8H§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §8H§.toString();
         }
         if(§6a§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §6a§.toString();
         }
         return _loc1_;
      }
   }
}
