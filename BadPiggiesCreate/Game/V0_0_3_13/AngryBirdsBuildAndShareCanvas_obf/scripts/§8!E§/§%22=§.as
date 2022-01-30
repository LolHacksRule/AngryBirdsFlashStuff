package §8!E§
{
   import §=!<§.§5!U§;
   import §`L§.§=!x§;
   import §`L§.DisplayObject;
   import §`L§.Sprite;
   
   public class §"=§ extends Sprite
   {
       
      
      protected var §`;§:Sprite;
      
      protected var §%!F§:DisplayObject;
      
      protected var §?S§:Sprite;
      
      public function §"=§()
      {
         super();
         addChild(this.§?S§ = new Sprite());
         this.§?S§.addChild(this.§`;§ = new Sprite());
         this.§%!F§ = new §=!x§(2,2,0);
         this.§%!F§.width = §5!U§.§`!_§;
         this.§%!F§.height = §5!U§.§?_§;
         addChild(this.§%!F§);
         this.§%!F§.alpha = 0.5;
      }
      
      public function get §,L§() : Sprite
      {
         return this.§`;§;
      }
      
      public function get §8L§() : DisplayObject
      {
         return this.§%!F§;
      }
      
      public function get §+l§() : Sprite
      {
         return this.§?S§;
      }
      
      public function §"l§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%!F§.width / this.§%!F§.height;
         this.§%!F§.width = param1 + 600 / _loc3_;
         this.§%!F§.height = param2 + 600 / _loc3_;
      }
   }
}
