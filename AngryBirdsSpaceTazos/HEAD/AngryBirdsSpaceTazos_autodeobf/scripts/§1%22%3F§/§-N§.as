package §1"?§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§`-§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import §9"!§.§0!s§;
   
   public class §-N§ extends §%!0§
   {
      
      public static const §#!"§:String = "TazosBirdDisc";
       
      
      protected var §%!]§:DisplayObject;
      
      protected var §,'§:DisplayObject;
      
      protected var §#!+§:DisplayObject;
      
      protected var §>!+§:§`-§;
      
      protected var §?!0§:Number;
      
      protected var §,l§:Sprite;
      
      public function §-N§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§?!0§ = 0;
         this.§>!+§ = param4 as §`-§;
         this.§#!+§ = param2.getFrame(0,this.§#!+§);
         this.§,'§ = param2.getFrame(1,this.§,'§);
         this.§%!]§ = param2.getFrame(2,this.§%!]§);
         this.§,l§ = new Sprite();
         this.§,l§.x = param5;
         this.§,l§.y = param6;
         this.§,l§.addChild(this.§%!]§);
         this.§,l§.addChild(this.§#!+§);
         this.§,l§.addChild(this.§,'§);
         param1.addChild(this.§,l§);
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         this.§?!0§ += param1 / 1000;
      }
      
      public function §=1§(param1:Number, param2:Number, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§,l§.x = param1;
         this.§,l§.y = param2;
         this.§,'§.x = this.§>!+§.sparkleRotationRadius * Math.sin(this.§?!0§ * this.§>!+§.sparkleRotationSpeed);
         this.§,'§.y = this.§>!+§.sparkleRotationRadius * -Math.cos(this.§?!0§ * this.§>!+§.sparkleRotationSpeed);
         if(param4)
         {
            this.§%!]§.rotation = this.§?!0§ * this.§>!+§.sparkleRotationSlingShotSpeed;
         }
         else
         {
            this.§%!]§.rotation = !!param3 ? Number(this.§?!0§ * this.§>!+§.sparkleRotationTimeBombSpeed) : Number(this.§?!0§ * this.§>!+§.sparkleRotationSpeed);
         }
      }
      
      public function §6c§(param1:Number) : void
      {
         this.§#!+§.rotation = param1;
      }
      
      override public function dispose() : void
      {
         if(sprite)
         {
            if(this.§,l§ && this.§,l§.parent == sprite)
            {
               sprite.removeChild(this.§,l§);
               this.§,l§.dispose();
               this.§,l§ = null;
            }
         }
         super.dispose();
      }
   }
}
