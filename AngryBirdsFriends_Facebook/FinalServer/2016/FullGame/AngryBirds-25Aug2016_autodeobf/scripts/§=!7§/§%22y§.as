package §=!7§
{
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §[#a§.§7!O§;
   import §`#C§.§-$'§;
   import §`#C§.§8K§;
   
   public class §"y§ extends §@#f§
   {
       
      
      protected var §?";§:§-$'§;
      
      protected var §'!H§:§"# §;
      
      public function §"y§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§?";§ = param4 as §-$'§;
         this.§'!H§ = new §"# §(param2,param5,param6,param7,this.§?";§);
         this.§'!H§.update(0);
         param1.addChild(this.§'!H§.displayObject);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         if(!this.§'!H§.update(param1))
         {
            this.§'!H§.displayObject.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§'!H§.isAlive;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§'!H§)
         {
            this.§'!H§.dispose();
            this.§'!H§ = null;
         }
      }
   }
}
