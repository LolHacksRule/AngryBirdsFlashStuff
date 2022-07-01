package §0!j§
{
   import §-!2§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §<J§:b2Vec2;
      
      public var §8Q§:Number;
      
      public var §?!s§:Number;
      
      public var §?r§:Number;
      
      public var §<!+§:Boolean;
      
      public var §<" §:Boolean;
      
      public var §;t§:Boolean;
      
      public var §8!O§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §<!U§:Number;
      
      public var §^d§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§<J§ = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§<J§.Set(0,0);
         this.§8Q§ = 0;
         this.§?!s§ = 0;
         this.§?r§ = 0;
         this.§<!+§ = true;
         this.§<" § = true;
         this.§;t§ = false;
         this.§8!O§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§<!U§ = 1;
         this.§^d§ = 1;
      }
   }
}
