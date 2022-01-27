package §1"?§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§@!1§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import §9"!§.§0!s§;
   
   public class §;!C§ extends §%!0§
   {
       
      
      protected var §>!+§:§@!1§;
      
      protected var §]"%§:§`!]§;
      
      public function §;!C§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number)
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
         this.§>!+§ = param4 as §@!1§;
         this.§]"%§ = new §`!]§(param2,param5,param6,param7,this.§>!+§);
         this.§]"%§.update(0);
         param1.addChild(this.§]"%§.§'!+§);
      }
      
      protected function getRandomParticleOffset() : Number
      {
         return 0;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(!this.§]"%§.update(param1))
         {
            this.§]"%§.§'!+§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return !this.§]"%§.isAlive;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§]"%§)
         {
            this.§]"%§.dispose();
            this.§]"%§ = null;
         }
      }
   }
}
