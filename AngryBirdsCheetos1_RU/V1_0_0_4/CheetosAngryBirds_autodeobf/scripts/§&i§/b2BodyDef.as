package §&i§
{
   import §5!K§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §7!4§:b2Vec2;
      
      public var §7_§:Number;
      
      public var §>x§:Number;
      
      public var §]^§:Number;
      
      public var §9!+§:Boolean;
      
      public var §1!F§:Boolean;
      
      public var § X§:Boolean;
      
      public var §`k§:Boolean;
      
      public var §6`§:Boolean;
      
      public var §+!?§;
      
      public var §>!U§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§7!4§ = new b2Vec2();
         super();
         this.§+!?§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§7!4§.Set(0,0);
         this.§7_§ = 0;
         this.§>x§ = 0;
         this.§]^§ = 0;
         this.§9!+§ = true;
         this.§1!F§ = true;
         this.§ X§ = false;
         this.§`k§ = false;
         this.type = b2Body.b2_staticBody;
         this.§6`§ = true;
         this.§>!U§ = 1;
      }
   }
}
