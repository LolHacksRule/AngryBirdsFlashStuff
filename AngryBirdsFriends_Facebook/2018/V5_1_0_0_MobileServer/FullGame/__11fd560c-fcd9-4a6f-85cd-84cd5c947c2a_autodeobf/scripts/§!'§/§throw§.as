package §!'§
{
   import §4"O§.b2World;
   import §8"L§.§3#N§;
   import §8"L§.§4U§;
   import §8§.§&#V§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §throw§ extends §3"V§
   {
       
      
      protected var § !F§:§3#N§;
      
      protected var §!!%§:§-$ §;
      
      public function §throw§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Number = NaN;
         super(param1,param3,param4);
         if(param8 > 0 || param9 > 0)
         {
            _loc10_ = param8;
            if(param8 < param9)
            {
               _loc10_ = param9;
               param7 += Math.PI / 2;
            }
            _loc10_ *= Math.random() - 0.5;
            param5 += Math.cos(param7) * _loc10_;
            param6 += Math.sin(param7) * _loc10_;
         }
         this.§ !F§ = param4 as §3#N§;
         this.§!!%§ = new §-$ §(param2,param5,param6,param7,this.§ !F§);
         this.§!!%§.update(0);
         param1.addChild(this.§!!%§.displayObject);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(!this.§!!%§.update(param1))
         {
            this.§!!%§.displayObject.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§!!%§.isAlive;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§!!%§)
         {
            this.§!!%§.dispose();
            this.§!!%§ = null;
         }
      }
   }
}
