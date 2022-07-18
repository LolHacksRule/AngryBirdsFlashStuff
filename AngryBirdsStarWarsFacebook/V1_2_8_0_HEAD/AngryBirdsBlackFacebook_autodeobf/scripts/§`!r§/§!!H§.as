package §`!r§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7P§.§7B§;
   
   public class §!!H§ extends §7B§
   {
       
      
      public function §!!H§(param1:Sprite, param2:b2World, param3:§"t§)
      {
         super(param1,param2,param3);
      }
      
      protected function §^"9§(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(isNaN(param2))
         {
            param2 = 0;
         }
         return param1 + (param2 - param1) * Math.random();
      }
   }
}
