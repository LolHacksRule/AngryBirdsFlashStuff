package §1"H§
{
   import §"!&§.§"v§;
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §]">§.§;U§;
   
   public class §>!b§ extends §+>§
   {
       
      
      protected var §2"!§:§"v§;
      
      protected var §;!y§:§'![§;
      
      public function §>!b§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§2"!§ = param4 as §"v§;
         this.§;!y§ = new §'![§(param2,param5,param6,param7,this.§2"!§);
         this.§;!y§.update(0);
         param1.addChild(this.§;!y§.§,"F§);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(!this.§;!y§.update(param1))
         {
            this.§;!y§.§,"F§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§;!y§.isAlive;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§;!y§)
         {
            this.§;!y§.dispose();
            this.§;!y§ = null;
         }
      }
   }
}
