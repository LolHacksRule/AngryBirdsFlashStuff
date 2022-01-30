package §[B§
{
   public class § !j§
   {
      
      public static const §<!!§:String = "damage";
      
      public static const §>L§:String = "removed";
      
      public static const §6!-§:String = "extraBird";
      
      private static var §;t§:Array;
      
      private static var §]!6§:Array;
      
      private static var §&!k§:Array;
       
      
      public function § !j§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §;t§ = [];
         §]!6§ = [];
         §&!k§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §<!!§:
               §;t§.push(param1);
               break;
            case §>L§:
               §]!6§.push(param1);
               break;
            case §6!-§:
               §&!k§.push(param1);
         }
      }
      
      public static function §`B§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §;t§.toString();
         if(§]!6§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §]!6§.toString();
         }
         if(§&!k§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&!k§.toString();
         }
         return _loc1_;
      }
   }
}
