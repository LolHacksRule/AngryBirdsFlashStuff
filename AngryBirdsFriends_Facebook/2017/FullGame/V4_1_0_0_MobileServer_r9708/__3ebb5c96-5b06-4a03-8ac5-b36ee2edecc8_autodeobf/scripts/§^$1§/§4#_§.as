package §^$1§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§?"B§;
   import §>!5§.§-!S§;
   
   public class §4#_§ extends §!!O§
   {
       
      
      protected var §9A§:§?"B§;
      
      protected var §+$0§:§="w§;
      
      public function §4#_§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§9A§ = param4 as §?"B§;
         this.§+$0§ = new §="w§(param2,param5,param6,param7,this.§9A§);
         this.§+$0§.update(0);
         param1.addChild(this.§+$0§.displayObject);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(!this.§+$0§.update(param1))
         {
            this.§+$0§.displayObject.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§+$0§.isAlive;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§+$0§)
         {
            this.§+$0§.dispose();
            this.§+$0§ = null;
         }
      }
   }
}
