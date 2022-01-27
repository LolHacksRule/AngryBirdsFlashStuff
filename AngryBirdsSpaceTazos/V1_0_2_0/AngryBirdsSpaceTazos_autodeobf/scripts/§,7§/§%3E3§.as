package §,7§
{
   import §#!X§.b2World;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§9!f§;
   import §;"=§.§]"<§;
   import §[,§.§class§;
   
   public class §>3§ extends §-"@§
   {
      
      public static const §2_§:String = "TazosBirdDisc";
       
      
      protected var §["8§:DisplayObject;
      
      protected var §3?§:DisplayObject;
      
      protected var §3!6§:DisplayObject;
      
      protected var §^B§:§9!f§;
      
      protected var §=!A§:Number;
      
      protected var §'"9§:Sprite;
      
      public function §>3§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§=!A§ = 0;
         this.§^B§ = param4 as §9!f§;
         this.§3!6§ = param2.getFrame(0,this.§3!6§);
         this.§3?§ = param2.getFrame(1,this.§3?§);
         this.§["8§ = param2.getFrame(2,this.§["8§);
         this.§'"9§ = new Sprite();
         this.§'"9§.x = param5;
         this.§'"9§.y = param6;
         this.§'"9§.addChild(this.§["8§);
         this.§'"9§.addChild(this.§3!6§);
         this.§'"9§.addChild(this.§3?§);
         param1.addChild(this.§'"9§);
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         this.§=!A§ += param1 / 1000;
      }
      
      public function §@!h§(param1:Number, param2:Number, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§'"9§.x = param1;
         this.§'"9§.y = param2;
         this.§3?§.x = this.§^B§.sparkleRotationRadius * Math.sin(this.§=!A§ * this.§^B§.sparkleRotationSpeed);
         this.§3?§.y = this.§^B§.sparkleRotationRadius * -Math.cos(this.§=!A§ * this.§^B§.sparkleRotationSpeed);
         if(param4)
         {
            this.§["8§.rotation = this.§=!A§ * this.§^B§.sparkleRotationSlingShotSpeed;
         }
         else
         {
            this.§["8§.rotation = !!param3 ? Number(this.§=!A§ * this.§^B§.sparkleRotationTimeBombSpeed) : Number(this.§=!A§ * this.§^B§.sparkleRotationSpeed);
         }
      }
      
      public function §6"9§(param1:Number) : void
      {
         this.§3!6§.rotation = param1;
      }
      
      override public function dispose() : void
      {
         if(sprite)
         {
            if(this.§'"9§ && this.§'"9§.parent == sprite)
            {
               sprite.removeChild(this.§'"9§);
               this.§'"9§.dispose();
               this.§'"9§ = null;
            }
         }
         super.dispose();
      }
   }
}
