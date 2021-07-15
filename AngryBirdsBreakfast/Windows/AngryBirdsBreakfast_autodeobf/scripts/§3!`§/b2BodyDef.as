package §3!`§
{
   import §6Z§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §`'§:b2Vec2;
      
      public var §>!f§:Number;
      
      public var §94§:Number;
      
      public var §&!&§:Number;
      
      public var §?!n§:Boolean;
      
      public var §5!5§:Boolean;
      
      public var §6"-§:Boolean;
      
      public var §6!D§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §<!x§:Number;
      
      public var §3]§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§`'§ = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§`'§.Set(0,0);
         this.§>!f§ = 0;
         this.§94§ = 0;
         this.§&!&§ = 0;
         this.§?!n§ = true;
         this.§5!5§ = true;
         this.§6"-§ = false;
         this.§6!D§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§<!x§ = 1;
         this.§3]§ = 1;
      }
   }
}
