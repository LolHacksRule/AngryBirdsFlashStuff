package §2!`§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §6"R§.§""M§;
   import §>P§.§=!,§;
   import §>P§.§?L§;
   
   public class §5[§ extends §""j§
   {
       
      
      protected var § !4§:§?L§;
      
      protected var §!k§:§>!w§;
      
      public function §5[§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§ !4§ = param4 as §?L§;
         this.§!k§ = new §>!w§(param2,param5,param6,param7,this.§ !4§);
         this.§!k§.update(0);
         param1.addChild(this.§!k§.§^1§);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(!this.§!k§.update(param1))
         {
            this.§!k§.§^1§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§!k§.isAlive;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§!k§)
         {
            this.§!k§.dispose();
            this.§!k§ = null;
         }
      }
   }
}
