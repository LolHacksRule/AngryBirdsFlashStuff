package §!u§
{
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §5"D§.§0!5§;
   import §6!M§.§6!7§;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §,9§ extends §5r§
   {
      
      public static const §8p§:String = "TazosBirdDisc";
       
      
      protected var §3!#§:DisplayObject;
      
      protected var §"?§:DisplayObject;
      
      protected var §2!_§:DisplayObject;
      
      protected var §'!m§:§6!7§;
      
      protected var §^",§:Number;
      
      protected var §#!R§:Sprite;
      
      public function §,9§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§^",§ = 0;
         this.§'!m§ = param4 as §6!7§;
         this.§2!_§ = param2.getFrame(0,this.§2!_§);
         this.§"?§ = param2.getFrame(1,this.§"?§);
         this.§3!#§ = param2.getFrame(2,this.§3!#§);
         this.§#!R§ = new Sprite();
         this.§#!R§.x = param5;
         this.§#!R§.y = param6;
         this.§#!R§.addChild(this.§3!#§);
         this.§#!R§.addChild(this.§2!_§);
         this.§#!R§.addChild(this.§"?§);
         param1.addChild(this.§#!R§);
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         this.§^",§ += param1 / 1000;
      }
      
      public function §08§(param1:Number, param2:Number, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§#!R§.x = param1;
         this.§#!R§.y = param2;
         this.§"?§.x = this.§'!m§.sparkleRotationRadius * Math.sin(this.§^",§ * this.§'!m§.sparkleRotationSpeed);
         this.§"?§.y = this.§'!m§.sparkleRotationRadius * -Math.cos(this.§^",§ * this.§'!m§.sparkleRotationSpeed);
         if(param4)
         {
            this.§3!#§.rotation = this.§^",§ * this.§'!m§.sparkleRotationSlingShotSpeed;
         }
         else
         {
            this.§3!#§.rotation = !!param3 ? Number(this.§^",§ * this.§'!m§.sparkleRotationTimeBombSpeed) : Number(this.§^",§ * this.§'!m§.sparkleRotationSpeed);
         }
      }
      
      public function §3!o§(param1:Number) : void
      {
         this.§2!_§.rotation = param1;
      }
      
      override public function dispose() : void
      {
         if(sprite)
         {
            if(this.§#!R§ && this.§#!R§.parent == sprite)
            {
               sprite.removeChild(this.§#!R§);
               this.§#!R§.dispose();
               this.§#!R§ = null;
            }
         }
         super.dispose();
      }
   }
}
