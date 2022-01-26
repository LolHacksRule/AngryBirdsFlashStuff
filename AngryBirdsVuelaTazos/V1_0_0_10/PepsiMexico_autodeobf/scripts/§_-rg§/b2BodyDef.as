package §_-rg§
{
   import §_-Zl§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-Ex§:b2Vec2;
      
      public var § try§:Number;
      
      public var §_-Vh§:Number;
      
      public var §_-Sm§:Number;
      
      public var §_-d3§:Boolean;
      
      public var §_-9§:Boolean;
      
      public var §_-nF§:Boolean;
      
      public var §_-d7§:Boolean;
      
      public var §_-NW§:Boolean;
      
      public var §_-QX§;
      
      public var §_-Ey§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-Ex§ = new b2Vec2();
         super();
         this.§_-QX§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-Ex§.Set(0,0);
         this.§ try§ = 0;
         this.§_-Vh§ = 0;
         this.§_-Sm§ = 0;
         this.§_-d3§ = true;
         this.§_-9§ = true;
         this.§_-nF§ = false;
         this.§_-d7§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-NW§ = true;
         this.§_-Ey§ = 1;
      }
   }
}
