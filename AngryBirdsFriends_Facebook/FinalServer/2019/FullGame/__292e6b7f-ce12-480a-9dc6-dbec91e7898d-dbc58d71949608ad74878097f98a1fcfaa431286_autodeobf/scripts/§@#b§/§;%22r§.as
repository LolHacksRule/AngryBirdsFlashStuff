package §@#b§
{
   import §,#e§.Sprite;
   import §4"Y§.§'#x§;
   
   public class §;"r§
   {
      
      private static const §4#D§:String = "move";
      
      private static const §"!r§:String = "scale";
      
      private static const §#"L§:String = "setVisible";
       
      
      public function §;"r§()
      {
         super();
      }
      
      public static function §`0§(param1:Sprite, param2:§=$;§, param3:§'#x§) : §6$,§
      {
         var _loc4_:§6$,§ = null;
         switch(param3.type)
         {
            case §4#D§:
               _loc4_ = new §0"&§(param1,param2,param3);
               break;
            case §"!r§:
               _loc4_ = new §3#$§(param1,param2,param3);
               break;
            case §#"L§:
               _loc4_ = new §"!Z§(param1,param2,param3);
         }
         return _loc4_;
      }
   }
}
