package §^"#§
{
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §'#§ extends Sprite
   {
       
      
      private var §^"C§:Shape;
      
      private var §4"%§:uint;
      
      private var §<!f§:uint;
      
      private var §8>§:uint;
      
      private var §^"D§:§5!9§;
      
      private var §2!d§:Number;
      
      private var §"!n§:Boolean = false;
      
      public function §'#§(param1:uint, param2:uint, param3:uint = 0)
      {
         super();
         this.§<!f§ = param1;
         this.§8>§ = param2;
         this.§4"%§ = param3;
         this.draw();
         this.reset();
      }
      
      private function draw() : void
      {
         var _loc1_:Shape = new Shape();
         addChild(_loc1_);
         _loc1_.graphics.beginFill(this.§4"%§);
         _loc1_.graphics.drawRect(0,0,this.§<!f§,1);
         _loc1_.graphics.endFill();
         this.§^"C§ = new Shape();
         addChild(this.§^"C§);
         this.§^"C§.graphics.beginFill(this.§4"%§);
         this.§^"C§.graphics.drawRect(0,0,this.§<!f§,-this.§8>§);
         this.§^"C§.graphics.endFill();
      }
      
      public function update(param1:Number) : void
      {
         if(this.§"!n§ == false)
         {
            this.§2!d§ -= 0.075;
            if(this.§2!d§ <= 0)
            {
               this.§2!d§ = 0;
            }
            this.§^"C§.scaleY = this.§2!d§;
         }
         y = this.§^"C§.scaleY * §]!a§.§ "§ / 2;
         if(isNaN(this.§2!d§))
         {
            this.§2!d§ = param1;
         }
         if(param1 < this.§2!d§)
         {
            return;
         }
         if(this.§^"D§)
         {
            this.§^"D§.stop();
         }
         this.§^"D§ = §!D§.§[!1§.§1"<§(this.§^"C§,{"scaleY":param1},null,0.1);
         this.§^"D§.onComplete = this.§@S§;
         this.§^"D§.§%S§ = false;
         this.§"!n§ = true;
         this.§^"D§.play();
         this.§2!d§ = param1;
      }
      
      private function §@S§() : void
      {
         this.§"!n§ = false;
      }
      
      public function reset() : void
      {
         this.§^"C§.scaleY = 0;
      }
   }
}
