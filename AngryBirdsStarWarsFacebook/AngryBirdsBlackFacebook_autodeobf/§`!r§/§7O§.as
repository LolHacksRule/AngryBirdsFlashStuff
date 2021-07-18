package §`!r§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§1#K§;
   import §7!F§.§>"G§;
   import §7P§.§;$§;
   
   public class §7O§ extends §!!H§
   {
       
      
      protected var §<X§:§1#K§;
      
      protected var §'K§:§3#a§;
      
      public function §7O§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§<X§ = param4 as §1#K§;
         this.§'K§ = new §3#a§(param2,param5,param6,param7,this.§<X§);
         this.§'K§.update(0);
         param1.addChild(this.§'K§.§[!8§);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(!this.§'K§.update(param1))
         {
            this.§'K§.§[!8§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§'K§.isAlive;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§'K§)
         {
            this.§'K§.dispose();
            this.§'K§ = null;
         }
      }
   }
}
