package §7"p§
{
   import §'G§.§;D§;
   import §6!3§.§8$B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §?$<§.§[S§;
   import §@!S§.b2World;
   
   public class §`!7§ extends §[!f§
   {
       
      
      protected var §4<§:§[S§;
      
      protected var §&"F§:§,#v§;
      
      public function §`!7§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§4<§ = param4 as §[S§;
         this.§&"F§ = new §,#v§(param2,param5,param6,param7,this.§4<§);
         this.§&"F§.update(0);
         param1.addChild(this.§&"F§.displayObject);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(!this.§&"F§.update(param1))
         {
            this.§&"F§.displayObject.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§&"F§.isAlive;
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         super.dispose(param1);
         if(this.§&"F§)
         {
            this.§&"F§.dispose();
            this.§&"F§ = null;
         }
      }
   }
}
