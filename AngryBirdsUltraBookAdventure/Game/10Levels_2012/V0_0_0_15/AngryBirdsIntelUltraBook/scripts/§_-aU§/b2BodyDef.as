package §_-aU§
{
   import §_-Yp§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §_-02c§:b2Vec2;
      
      public var §_-Hp§:Number;
      
      public var §_-ov§:Number;
      
      public var §_-ZI§:Number;
      
      public var §_-sD§:Boolean;
      
      public var §_-Ba§:Boolean;
      
      public var §_-0-u§:Boolean;
      
      public var §_-mq§:Boolean;
      
      public var §_-ag§:Boolean;
      
      public var §_-05u§;
      
      public var §_-sj§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§_-02c§ = new b2Vec2();
         super();
         this.§_-05u§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§_-02c§.Set(0,0);
         this.§_-Hp§ = 0;
         this.§_-ov§ = 0;
         this.§_-ZI§ = 0;
         this.§_-sD§ = true;
         this.§_-Ba§ = true;
         this.§_-0-u§ = false;
         this.§_-mq§ = false;
         this.type = b2Body.b2_staticBody;
         this.§_-ag§ = true;
         this.§_-sj§ = 1;
      }
   }
}
