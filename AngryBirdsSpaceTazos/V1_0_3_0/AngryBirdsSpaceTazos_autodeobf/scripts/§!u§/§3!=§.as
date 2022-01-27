package §!u§
{
   import §4"@§.Sprite;
   import §5"D§.§0!5§;
   import §6!M§.§<!r§;
   import §6!M§.§?R§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §3!=§ extends §5r§
   {
       
      
      protected var §'!m§:§?R§;
      
      protected var §="&§:§[!e§;
      
      public function §3!=§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§'!m§ = param4 as §?R§;
         this.§="&§ = new §[!e§(param2,param5,param6,param7,this.§'!m§);
         this.§="&§.update(0);
         param1.addChild(this.§="&§.§set §);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(!this.§="&§.update(param1))
         {
            this.§="&§.§set §.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§="&§.isAlive;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§="&§)
         {
            this.§="&§.dispose();
            this.§="&§ = null;
         }
      }
   }
}
