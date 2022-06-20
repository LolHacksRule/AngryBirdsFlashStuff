package §8"h§
{
   import §#!S§.§^!5§;
   import §#Z§.Sprite;
   
   public class §;$4§
   {
      
      private static const §!#6§:String = "move";
      
      private static const §3#+§:String = "scale";
      
      private static const §^=§:String = "setVisible";
       
      
      public function §;$4§()
      {
         super();
      }
      
      public static function §<!^§(param1:Sprite, param2:§`#s§, param3:§^!5§) : §]#H§
      {
         var _loc4_:§]#H§ = null;
         switch(param3.type)
         {
            case §!#6§:
               _loc4_ = new §4"w§(param1,param2,param3);
               break;
            case §3#+§:
               _loc4_ = new §?#i§(param1,param2,param3);
               break;
            case §^=§:
               _loc4_ = new §4#f§(param1,param2,param3);
         }
         return _loc4_;
      }
   }
}
