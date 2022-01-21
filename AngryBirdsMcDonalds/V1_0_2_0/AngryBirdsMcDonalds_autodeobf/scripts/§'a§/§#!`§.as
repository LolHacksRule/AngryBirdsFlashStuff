package §'a§
{
   public class §#!`§
   {
      
      public static const §-r§:String = "damage";
      
      public static const §7o§:String = "removed";
      
      public static const §&!5§:String = "extraBird";
      
      private static var §]3§:Array;
      
      private static var §#&§:Array;
      
      private static var §9_§:Array;
       
      
      public function §#!`§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §]3§ = [];
         §#&§ = [];
         §9_§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §-r§:
               §]3§.push(param1);
               break;
            case §7o§:
               §#&§.push(param1);
               break;
            case §&!5§:
               §9_§.push(param1);
         }
      }
      
      public static function §[p§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §]3§.toString();
         if(§#&§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §#&§.toString();
         }
         if(§9_§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §9_§.toString();
         }
         return _loc1_;
      }
   }
}
