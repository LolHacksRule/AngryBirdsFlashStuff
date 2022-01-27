package §9!L§
{
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §#! § extends Sprite
   {
       
      
      private var §^!%§:Shape;
      
      private var §]"<§:uint;
      
      private var §'!K§:uint;
      
      private var §%O§:uint;
      
      private var §1!§:§15§;
      
      private var §+H§:Number;
      
      private var §;!y§:Boolean = false;
      
      public function §#! §(param1:uint, param2:uint, param3:uint = 0)
      {
         super();
         this.§'!K§ = param1;
         this.§%O§ = param2;
         this.§]"<§ = param3;
         this.draw();
         this.reset();
      }
      
      private function draw() : void
      {
         var _loc1_:Shape = new Shape();
         addChild(_loc1_);
         _loc1_.graphics.beginFill(this.§]"<§);
         _loc1_.graphics.drawRect(0,0,this.§'!K§,1);
         _loc1_.graphics.endFill();
         this.§^!%§ = new Shape();
         addChild(this.§^!%§);
         this.§^!%§.graphics.beginFill(this.§]"<§);
         this.§^!%§.graphics.drawRect(0,0,this.§'!K§,-this.§%O§);
         this.§^!%§.graphics.endFill();
      }
      
      public function update(param1:Number) : void
      {
         if(this.§;!y§ == false)
         {
            this.§+H§ -= 0.075;
            if(this.§+H§ <= 0)
            {
               this.§+H§ = 0;
            }
            this.§^!%§.scaleY = this.§+H§;
         }
         y = this.§^!%§.scaleY * §0"6§.§68§ / 2;
         if(isNaN(this.§+H§))
         {
            this.§+H§ = param1;
         }
         if(param1 < this.§+H§)
         {
            return;
         }
         if(this.§1!§)
         {
            this.§1!§.stop();
         }
         this.§1!§ = §@F§.§8!J§.§&6§(this.§^!%§,{"scaleY":param1},null,0.1);
         this.§1!§.onComplete = this.§!!B§;
         this.§1!§.§!5§ = false;
         this.§;!y§ = true;
         this.§1!§.play();
         this.§+H§ = param1;
      }
      
      private function §!!B§() : void
      {
         this.§;!y§ = false;
      }
      
      public function reset() : void
      {
         this.§^!%§.scaleY = 0;
      }
   }
}
