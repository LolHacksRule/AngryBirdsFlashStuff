package §1%§
{
   import §?!&§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §`@§:b2Vec2;
      
      public var §8!]§:Number;
      
      public var §1!h§:Number;
      
      public var §<!D§:Number;
      
      public var §?a§:Boolean;
      
      public var §-y§:Boolean;
      
      public var §0F§:Boolean;
      
      public var §4x§:Boolean;
      
      public var §83§:Boolean;
      
      public var §#!`§;
      
      public var §6!T§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§`@§ = new b2Vec2();
         super();
         this.§#!`§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§`@§.Set(0,0);
         this.§8!]§ = 0;
         this.§1!h§ = 0;
         this.§<!D§ = 0;
         this.§?a§ = true;
         this.§-y§ = true;
         this.§0F§ = false;
         this.§4x§ = false;
         this.type = b2Body.b2_staticBody;
         this.§83§ = true;
         this.§6!T§ = 1;
      }
   }
}
