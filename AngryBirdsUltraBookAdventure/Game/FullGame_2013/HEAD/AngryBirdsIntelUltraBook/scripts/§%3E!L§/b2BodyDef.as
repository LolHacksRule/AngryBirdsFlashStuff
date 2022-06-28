package §>!L§
{
   import §>!8§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §;@§:b2Vec2;
      
      public var §2!?§:Number;
      
      public var §?![§:Number;
      
      public var §4n§:Number;
      
      public var §^!%§:Boolean;
      
      public var §9!§:Boolean;
      
      public var §[W§:Boolean;
      
      public var § 5§:Boolean;
      
      public var §&!^§:Boolean;
      
      public var §+!f§;
      
      public var §5!#§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§;@§ = new b2Vec2();
         super();
         this.§+!f§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§;@§.Set(0,0);
         this.§2!?§ = 0;
         this.§?![§ = 0;
         this.§4n§ = 0;
         this.§^!%§ = true;
         this.§9!§ = true;
         this.§[W§ = false;
         this.§ 5§ = false;
         this.type = b2Body.b2_staticBody;
         this.§&!^§ = true;
         this.§5!#§ = 1;
      }
   }
}
