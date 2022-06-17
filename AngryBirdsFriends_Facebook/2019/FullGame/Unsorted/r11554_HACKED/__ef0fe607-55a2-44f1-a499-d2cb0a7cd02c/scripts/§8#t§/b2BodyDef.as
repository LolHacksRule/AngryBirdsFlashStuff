package §8#t§
{
   import §`# §.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §#$,§:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var §&!z§:Boolean;
      
      public var awake:Boolean;
      
      public var §"$'§:Boolean;
      
      public var §`#+§:Boolean;
      
      public var active:Boolean;
      
      public var §@"Z§;
      
      public var §-#-§:Number;
      
      public var §["R§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§#$,§ = new b2Vec2();
         super();
         this.§@"Z§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§#$,§.Set(0,0);
         this.angularVelocity = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.§&!z§ = true;
         this.awake = true;
         this.§"$'§ = false;
         this.§`#+§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§-#-§ = 1;
         this.§["R§ = 1;
      }
   }
}
