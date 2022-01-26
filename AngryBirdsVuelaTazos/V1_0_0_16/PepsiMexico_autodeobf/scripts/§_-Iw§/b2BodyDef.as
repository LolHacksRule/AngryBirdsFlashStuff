package §_-Iw§
{
   import §_-Ja§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-MI§:b2Vec2;
      
      public var §_-P3§:Number;
      
      public var §_-pQ§:Number;
      
      public var §_-K5§:Number;
      
      public var §_-J4§:Boolean;
      
      public var §_-MK§:Boolean;
      
      public var §_-W2§:Boolean;
      
      public var §_-eK§:Boolean;
      
      public var §_-TG§:Boolean;
      
      public var §_-Vb§;
      
      public var §_-S0§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-MI§ = new b2Vec2();
         super();
         this.§_-Vb§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-MI§.Set(0,0);
         this.§_-P3§ = 0;
         this.§_-pQ§ = 0;
         this.§_-K5§ = 0;
         this.§_-J4§ = true;
         this.§_-MK§ = true;
         this.§_-W2§ = false;
         this.§_-eK§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-TG§ = true;
         this.§_-S0§ = 1;
      }
   }
}
