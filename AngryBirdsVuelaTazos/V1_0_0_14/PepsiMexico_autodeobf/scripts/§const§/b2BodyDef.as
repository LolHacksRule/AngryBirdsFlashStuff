package §const§
{
   import §_-4n§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-fG§:b2Vec2;
      
      public var §_-7y§:Number;
      
      public var §_-7I§:Number;
      
      public var §_-AR§:Number;
      
      public var §_-47§:Boolean;
      
      public var §_-xL§:Boolean;
      
      public var §_-BR§:Boolean;
      
      public var §_-Yb§:Boolean;
      
      public var get:Boolean;
      
      public var §_-tW§;
      
      public var §_-kS§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-fG§ = new b2Vec2();
         super();
         this.§_-tW§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-fG§.Set(0,0);
         this.§_-7y§ = 0;
         this.§_-7I§ = 0;
         this.§_-AR§ = 0;
         this.§_-47§ = true;
         this.§_-xL§ = true;
         this.§_-BR§ = false;
         this.§_-Yb§ = false;
         this.type = b2Body.b2_staticBody;
         this.get = true;
         this.§_-kS§ = 1;
      }
   }
}
