package § y§
{
   import §;h§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §3z§:b2Vec2;
      
      public var §=q§:Number;
      
      public var §4§:Number;
      
      public var §`k§:Number;
      
      public var §5l§:Boolean;
      
      public var §5E§:Boolean;
      
      public var §=N§:Boolean;
      
      public var §=R§:Boolean;
      
      public var §=S§:Boolean;
      
      public var §^!V§;
      
      public var §-%§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§3z§ = new b2Vec2();
         super();
         this.§^!V§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§3z§.Set(0,0);
         this.§=q§ = 0;
         this.§4§ = 0;
         this.§`k§ = 0;
         this.§5l§ = true;
         this.§5E§ = true;
         this.§=N§ = false;
         this.§=R§ = false;
         this.type = b2Body.b2_staticBody;
         this.§=S§ = true;
         this.§-%§ = 1;
      }
   }
}
