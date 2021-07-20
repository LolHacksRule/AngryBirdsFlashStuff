package §%x§
{
   import §"!5§.§,!!§;
   import §%-§.DisplayObject;
   import §%-§.Sprite;
   import §%-§.§^K§;
   
   public class §[G§ extends Sprite
   {
       
      
      protected var § X§:Sprite;
      
      protected var §?!7§:DisplayObject;
      
      protected var §=!"§:Sprite;
      
      public function §[G§()
      {
         super();
         addChild(this.§=!"§ = new Sprite());
         this.§=!"§.addChild(this.§ X§ = new Sprite());
         this.§?!7§ = new §^K§(2,2,0);
         this.§?!7§.width = §,!!§.§;]§;
         this.§?!7§.height = §,!!§.§3L§;
         addChild(this.§?!7§);
         this.§?!7§.alpha = 0.5;
      }
      
      public function get §5P§() : Sprite
      {
         return this.§ X§;
      }
      
      public function get §`3§() : DisplayObject
      {
         return this.§?!7§;
      }
      
      public function get §96§() : Sprite
      {
         return this.§=!"§;
      }
      
      public function § true§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§?!7§.width / this.§?!7§.height;
         this.§?!7§.width = param1 + 600 / _loc3_;
         this.§?!7§.height = param2 + 600 / _loc3_;
      }
   }
}
