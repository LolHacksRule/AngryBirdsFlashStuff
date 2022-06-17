package §%A§
{
   import §!6§.Sprite;
   import §-!!§.§ #'§;
   import §8#t§.b2World;
   import §?§.§,Y§;
   import §?§.§6!M§;
   import §^"[§.§4!8§;
   
   public class §=#a§ extends §"j§
   {
       
      
      protected var §<"<§:§6!M§;
      
      protected var §%k§:§0!n§;
      
      public function §=#a§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§<"<§ = param4 as §6!M§;
         this.§%k§ = new §0!n§(param2,param5,param6,param7,this.§<"<§);
         this.§%k§.update(0);
         param1.addChild(this.§%k§.displayObject);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(!this.§%k§.update(param1))
         {
            this.§%k§.displayObject.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§%k§.isAlive;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§%k§)
         {
            this.§%k§.dispose();
            this.§%k§ = null;
         }
      }
   }
}
