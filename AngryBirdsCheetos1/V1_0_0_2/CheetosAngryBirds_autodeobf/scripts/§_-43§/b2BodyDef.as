package §_-43§
{
   import §_-F2§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-CS§:b2Vec2;
      
      public var §_-UO§:Number;
      
      public var §_-ch§:Number;
      
      public var §_-IM§:Number;
      
      public var §_-hm§:Boolean;
      
      public var §_-8A§:Boolean;
      
      public var §_-XH§:Boolean;
      
      public var §_-S9§:Boolean;
      
      public var §_-Je§:Boolean;
      
      public var §_-eL§;
      
      public var §_-9e§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-CS§ = new b2Vec2();
         super();
         this.§_-eL§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-CS§.Set(0,0);
         this.§_-UO§ = 0;
         this.§_-ch§ = 0;
         this.§_-IM§ = 0;
         this.§_-hm§ = true;
         this.§_-8A§ = true;
         this.§_-XH§ = false;
         this.§_-S9§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-Je§ = true;
         this.§_-9e§ = 1;
      }
   }
}
