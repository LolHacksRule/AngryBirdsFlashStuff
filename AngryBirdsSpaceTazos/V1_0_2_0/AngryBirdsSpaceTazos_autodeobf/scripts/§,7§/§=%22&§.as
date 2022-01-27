package §,7§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§@!6§;
   import §;"=§.§]"<§;
   import §[,§.§class§;
   
   public class §="&§ extends §-"@§
   {
       
      
      protected var §^B§:§@!6§;
      
      protected var §7"&§:§&"=§;
      
      public function §="&§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§^B§ = param4 as §@!6§;
         this.§7"&§ = new §&"=§(param2,param5,param6,param7,this.§^B§);
         this.§7"&§.update(0);
         param1.addChild(this.§7"&§.§&§);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(!this.§7"&§.update(param1))
         {
            this.§7"&§.§&§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§7"&§.isAlive;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§7"&§)
         {
            this.§7"&§.dispose();
            this.§7"&§ = null;
         }
      }
   }
}
