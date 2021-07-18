package §1"H§
{
   import §"!&§.§70§;
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §]">§.§;U§;
   
   public class §=!3§ extends §+>§
   {
      
      public static const §!!p§:String = "TazosBirdDisc";
       
      
      protected var §@m§:DisplayObject;
      
      protected var §=O§:DisplayObject;
      
      protected var § q§:DisplayObject;
      
      protected var §2"!§:§70§;
      
      protected var §,j§:Number;
      
      protected var §@!]§:Sprite;
      
      public function §=!3§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§,j§ = 0;
         this.§2"!§ = param4 as §70§;
         this.§ q§ = param2.getFrame(0,this.§ q§);
         this.§=O§ = param2.getFrame(1,this.§=O§);
         this.§@m§ = param2.getFrame(2,this.§@m§);
         this.§@!]§ = new Sprite();
         this.§@!]§.x = param5;
         this.§@!]§.y = param6;
         this.§@!]§.addChild(this.§@m§);
         this.§@!]§.addChild(this.§ q§);
         this.§@!]§.addChild(this.§=O§);
         param1.addChild(this.§@!]§);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         this.§,j§ += param1 / 1000;
      }
      
      public function §[!T§(param1:Number, param2:Number, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§@!]§.x = param1;
         this.§@!]§.y = param2;
         this.§=O§.x = this.§2"!§.sparkleRotationRadius * Math.sin(this.§,j§ * this.§2"!§.sparkleRotationSpeed);
         this.§=O§.y = this.§2"!§.sparkleRotationRadius * -Math.cos(this.§,j§ * this.§2"!§.sparkleRotationSpeed);
         if(param4)
         {
            this.§@m§.rotation = this.§,j§ * this.§2"!§.sparkleRotationSlingShotSpeed;
         }
         else
         {
            this.§@m§.rotation = !!param3 ? Number(this.§,j§ * this.§2"!§.sparkleRotationTimeBombSpeed) : Number(this.§,j§ * this.§2"!§.sparkleRotationSpeed);
         }
      }
      
      public function §'!@§(param1:Number) : void
      {
         this.§ q§.rotation = param1;
      }
      
      override public function dispose() : void
      {
         if(sprite)
         {
            if(this.§@!]§ && this.§@!]§.parent == sprite)
            {
               sprite.removeChild(this.§@!]§);
               this.§@!]§.dispose();
               this.§@!]§ = null;
            }
         }
         super.dispose();
      }
   }
}
