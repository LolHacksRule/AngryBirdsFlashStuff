package §%$0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §-!j§.§@U§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §^0§.§>"T§;
   
   public class §"#s§ extends §1c§
   {
       
      
      protected var §>$5§:§@U§;
      
      protected var §+"d§:§`#L§;
      
      public function §"#s§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§>$5§ = param4 as §@U§;
         this.§+"d§ = new §`#L§(param2,param5,param6,param7,this.§>$5§);
         this.§+"d§.update(0);
         param1.addChild(this.§+"d§.displayObject);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(!this.§+"d§.update(param1))
         {
            this.§+"d§.displayObject.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§+"d§.isAlive;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§+"d§)
         {
            this.§+"d§.dispose();
            this.§+"d§ = null;
         }
      }
   }
}
