package §1!k§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §]!E§ extends Sprite
   {
       
      
      private var §<[§:Shape;
      
      private var §^!6§:uint;
      
      private var §]!d§:uint;
      
      private var §!"-§:uint;
      
      private var §+!§:§,4§;
      
      private var §`6§:Number;
      
      private var §<?§:Boolean = false;
      
      public function §]!E§(param1:uint, param2:uint, param3:uint = 0)
      {
         super();
         this.§]!d§ = param1;
         this.§!"-§ = param2;
         this.§^!6§ = param3;
         this.draw();
         this.reset();
      }
      
      private function draw() : void
      {
         var _loc1_:Shape = new Shape();
         addChild(_loc1_);
         _loc1_.graphics.beginFill(this.§^!6§);
         _loc1_.graphics.drawRect(0,0,this.§]!d§,1);
         _loc1_.graphics.endFill();
         this.§<[§ = new Shape();
         addChild(this.§<[§);
         this.§<[§.graphics.beginFill(this.§^!6§);
         this.§<[§.graphics.drawRect(0,0,this.§]!d§,-this.§!"-§);
         this.§<[§.graphics.endFill();
      }
      
      public function update(param1:Number) : void
      {
         if(this.§<?§ == false)
         {
            this.§`6§ -= 0.075;
            if(this.§`6§ <= 0)
            {
               this.§`6§ = 0;
            }
            this.§<[§.scaleY = this.§`6§;
         }
         y = this.§<[§.scaleY * §9C§.§+"9§ / 2;
         if(isNaN(this.§`6§))
         {
            this.§`6§ = param1;
         }
         if(param1 < this.§`6§)
         {
            return;
         }
         if(this.§+!§)
         {
            this.§+!§.stop();
         }
         this.§+!§ = §"!t§.§3R§.§2m§(this.§<[§,{"scaleY":param1},null,0.1);
         this.§+!§.onComplete = this.§`"7§;
         this.§+!§.§3"&§ = false;
         this.§<?§ = true;
         this.§+!§.play();
         this.§`6§ = param1;
      }
      
      private function §`"7§() : void
      {
         this.§<?§ = false;
      }
      
      public function reset() : void
      {
         this.§<[§.scaleY = 0;
      }
   }
}
