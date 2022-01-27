package §]!O§
{
   import §<§.§8"+§;
   import §<§.§<K§;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class §17§ extends Sprite
   {
       
      
      private var §;!j§:Shape;
      
      private var §8!F§:uint;
      
      private var §^M§:uint;
      
      private var §2!u§:uint;
      
      private var §;"C§:§8"+§;
      
      private var § !,§:Number;
      
      private var §catch§:Boolean = false;
      
      public function §17§(param1:uint, param2:uint, param3:uint = 0)
      {
         super();
         this.§^M§ = param1;
         this.§2!u§ = param2;
         this.§8!F§ = param3;
         this.draw();
         this.reset();
      }
      
      private function draw() : void
      {
         var _loc1_:Shape = new Shape();
         addChild(_loc1_);
         _loc1_.graphics.beginFill(this.§8!F§);
         _loc1_.graphics.drawRect(0,0,this.§^M§,1);
         _loc1_.graphics.endFill();
         this.§;!j§ = new Shape();
         addChild(this.§;!j§);
         this.§;!j§.graphics.beginFill(this.§8!F§);
         this.§;!j§.graphics.drawRect(0,0,this.§^M§,-this.§2!u§);
         this.§;!j§.graphics.endFill();
      }
      
      public function update(param1:Number) : void
      {
         if(this.§catch§ == false)
         {
            this.§ !,§ -= 0.075;
            if(this.§ !,§ <= 0)
            {
               this.§ !,§ = 0;
            }
            this.§;!j§.scaleY = this.§ !,§;
         }
         y = this.§;!j§.scaleY * §^?§.§finally§ / 2;
         if(isNaN(this.§ !,§))
         {
            this.§ !,§ = param1;
         }
         if(param1 < this.§ !,§)
         {
            return;
         }
         if(this.§;"C§)
         {
            this.§;"C§.stop();
         }
         this.§;"C§ = §<K§.§<"B§.§`!c§(this.§;!j§,{"scaleY":param1},null,0.1);
         this.§;"C§.onComplete = this.§+'§;
         this.§;"C§.§5!Y§ = false;
         this.§catch§ = true;
         this.§;"C§.play();
         this.§ !,§ = param1;
      }
      
      private function §+'§() : void
      {
         this.§catch§ = false;
      }
      
      public function reset() : void
      {
         this.§;!j§.scaleY = 0;
      }
   }
}
