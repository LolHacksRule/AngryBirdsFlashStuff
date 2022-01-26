package §_-0-K§
{
   import §_-TX§.§_-0X§;
   import §case §.DisplayObject;
   import §case §.Sprite;
   import §case §.§_-Gm§;
   
   public class §_-nH§ extends Sprite
   {
       
      
      protected var §_-U3§:Sprite;
      
      protected var §_-5Q§:DisplayObject;
      
      protected var §_-Iy§:Sprite;
      
      public function §_-nH§()
      {
         super();
         addChild(this.§_-Iy§ = new Sprite());
         this.§_-Iy§.addChild(this.§_-U3§ = new Sprite());
         this.§_-5Q§ = new §_-Gm§(2,2,0);
         this.§_-5Q§.width = §_-0X§.§_-I0§;
         this.§_-5Q§.height = §_-0X§.§_-ZV§;
         addChild(this.§_-5Q§);
         this.§_-5Q§.alpha = 0.5;
      }
      
      public function get §_-Ap§() : Sprite
      {
         return this.§_-U3§;
      }
      
      public function get §_-Ru§() : DisplayObject
      {
         return this.§_-5Q§;
      }
      
      public function get §_-te§() : Sprite
      {
         return this.§_-Iy§;
      }
      
      public function §_-m0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-5Q§.width / this.§_-5Q§.height;
         this.§_-5Q§.width = param1 + 600 / _loc3_;
         this.§_-5Q§.height = param2 + 600 / _loc3_;
      }
   }
}
