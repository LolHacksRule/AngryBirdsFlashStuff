package §'4§
{
   public class §!!t§
   {
      
      public static const §#!L§:String = "damage";
      
      public static const §1!@§:String = "removed";
      
      public static const §9j§:String = "extraBird";
      
      private static var §!@§:Array;
      
      private static var §9"?§:Array;
      
      private static var §5!O§:Array;
       
      
      public function §!!t§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §!@§ = [];
         §9"?§ = [];
         §5!O§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §#!L§:
               §!@§.push(param1);
               break;
            case §1!@§:
               §9"?§.push(param1);
               break;
            case §9j§:
               §5!O§.push(param1);
         }
      }
      
      public static function §4!o§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §!@§.toString();
         if(§9"?§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §9"?§.toString();
         }
         if(§5!O§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §5!O§.toString();
         }
         return _loc1_;
      }
   }
}
