package §7P§
{
   import §!!U§.Sprite;
   import §+!c§.§;!d§;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §9"k§ extends §&l§
   {
       
      
      private var §`"3§:Number = 0.0;
      
      private var §"!W§:String;
      
      protected var § !d§:§;!d§;
      
      public function §9"k§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§`"3§ = §'L§.getNumberProperty("specialtyActivationDelay");
         if(isNaN(this.§`"3§))
         {
            this.§`"3§ = 0;
         }
         else
         {
            this.§`"3§ *= 1000;
         }
         this.§"!W§ = §'L§.getProperty("reticleSprite");
      }
      
      public function get §[f§() : Number
      {
         return this.§`"3§;
      }
      
      public function get reticleSprite() : String
      {
         return this.§"!W§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed && (§8!_§ || §#"d§ < this.§[f§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§ !d§)
         {
            this.§ !d§.update(param1);
         }
      }
      
      public function glow(param1:uint) : void
      {
         if(!this.§ !d§)
         {
            this.§ !d§ = new §;!d§(param1);
            sprite.addChildAt(this.§ !d§,0);
         }
      }
      
      override protected function normalize() : void
      {
      }
   }
}
