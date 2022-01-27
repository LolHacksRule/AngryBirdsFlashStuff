package §^9§
{
   import §!!k§.§1!^§;
   import §!r§.§'=§;
   import §#g§.§=!F§;
   import §#g§.§["%§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §^S§ extends §3o§
   {
       
      
      protected var §7!d§:§=!F§;
      
      protected var §<z§:§[!h§;
      
      public function §^S§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§7!d§ = param4 as §=!F§;
         this.§<z§ = new §[!h§(param2,param5,param6,param7,this.§7!d§);
         this.§<z§.update(0);
         param1.addChild(this.§<z§.§>#3§);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(!this.§<z§.update(param1))
         {
            this.§<z§.§>#3§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§<z§.isAlive;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<z§)
         {
            this.§<z§.dispose();
            this.§<z§ = null;
         }
      }
   }
}
