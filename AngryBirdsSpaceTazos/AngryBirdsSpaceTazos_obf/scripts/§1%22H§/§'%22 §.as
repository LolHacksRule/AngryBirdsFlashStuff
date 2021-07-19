package §1"H§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §]">§.§;U§;
   
   public class §'" § extends §>!b§
   {
       
      
      public function §'" §(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override protected function getRandomParticleOffset() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(Math.random() * 2);
         if(!_loc2_)
         {
            return §§pop() - 1;
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.update(param1,param2);
         }
      }
   }
}
