package §&x§
{
   import §0,§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §#u§:b2Vec2;
      
      public var §^?§:Number;
      
      public var § B§:Number;
      
      public var §10§:Number;
      
      public var §?j§:Boolean;
      
      public var §17§:Boolean;
      
      public var §^!'§:Boolean;
      
      public var §77§:Boolean;
      
      public var §+!n§:Boolean;
      
      public var §!k§;
      
      public var § !@§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§#u§ = new b2Vec2();
         super();
         this.§!k§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§#u§.Set(0,0);
         this.§^?§ = 0;
         this.§ B§ = 0;
         this.§10§ = 0;
         this.§?j§ = true;
         this.§17§ = true;
         this.§^!'§ = false;
         this.§77§ = false;
         this.type = b2Body.b2_staticBody;
         this.§+!n§ = true;
         this.§ !@§ = 1;
      }
   }
}
