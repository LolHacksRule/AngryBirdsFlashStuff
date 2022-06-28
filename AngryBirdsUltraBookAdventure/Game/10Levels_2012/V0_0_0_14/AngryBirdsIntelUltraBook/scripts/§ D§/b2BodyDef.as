package § D§
{
   import §8>§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §^!h§:b2Vec2;
      
      public var §=w§:Number;
      
      public var §#d§:Number;
      
      public var §"v§:Number;
      
      public var §+!&§:Boolean;
      
      public var §+!T§:Boolean;
      
      public var §?!#§:Boolean;
      
      public var §5!f§:Boolean;
      
      public var §=r§:Boolean;
      
      public var §1o§;
      
      public var §^?§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§^!h§ = new b2Vec2();
         super();
         this.§1o§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§^!h§.Set(0,0);
         this.§=w§ = 0;
         this.§#d§ = 0;
         this.§"v§ = 0;
         this.§+!&§ = true;
         this.§+!T§ = true;
         this.§?!#§ = false;
         this.§5!f§ = false;
         this.type = b2Body.b2_staticBody;
         this.§=r§ = true;
         this.§^?§ = 1;
      }
   }
}
