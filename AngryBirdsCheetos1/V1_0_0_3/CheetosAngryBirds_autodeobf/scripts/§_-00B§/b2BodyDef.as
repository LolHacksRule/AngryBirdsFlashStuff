package §_-00B§
{
   import §_-Vn§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-kD§:b2Vec2;
      
      public var §_-49§:Number;
      
      public var §_-ta§:Number;
      
      public var §_-YU§:Number;
      
      public var §_-n-§:Boolean;
      
      public var §_-jI§:Boolean;
      
      public var §_-96§:Boolean;
      
      public var §_-M§:Boolean;
      
      public var §_-bt§:Boolean;
      
      public var §_-FA§;
      
      public var §_-56§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-kD§ = new b2Vec2();
         super();
         this.§_-FA§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-kD§.Set(0,0);
         this.§_-49§ = 0;
         this.§_-ta§ = 0;
         this.§_-YU§ = 0;
         this.§_-n-§ = true;
         this.§_-jI§ = true;
         this.§_-96§ = false;
         this.§_-M§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-bt§ = true;
         this.§_-56§ = 1;
      }
   }
}
