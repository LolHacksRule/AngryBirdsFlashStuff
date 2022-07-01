package §`2§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §3!J§.Sprite;
   import §@!"§.§#!v§;
   
   public class §3[§ extends §#!v§
   {
       
      
      public function §3[§(param1:Sprite, param2:b2World, param3:§@-§)
      {
         super(param1,param2,param3);
      }
      
      protected function §!!U§(param1:Number, param2:Number) : Number
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
