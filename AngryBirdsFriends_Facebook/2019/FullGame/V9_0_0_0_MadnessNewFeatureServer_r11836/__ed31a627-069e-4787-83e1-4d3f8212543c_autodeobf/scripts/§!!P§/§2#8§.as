package §!!P§
{
   import §-<§.§?!N§;
   import §6#H§.Sprite;
   
   public class §2#8§
   {
      
      private static const §^"<§:String = "move";
      
      private static const § !7§:String = "scale";
      
      private static const §7!I§:String = "setVisible";
       
      
      public function §2#8§()
      {
         super();
      }
      
      public static function §8"r§(param1:Sprite, param2:§2#%§, param3:§?!N§) : §4"T§
      {
         var _loc4_:§4"T§ = null;
         switch(param3.type)
         {
            case §^"<§:
               _loc4_ = new §;!&§(param1,param2,param3);
               break;
            case § !7§:
               _loc4_ = new §=!?§(param1,param2,param3);
               break;
            case §7!I§:
               _loc4_ = new §7#g§(param1,param2,param3);
         }
         return _loc4_;
      }
   }
}
