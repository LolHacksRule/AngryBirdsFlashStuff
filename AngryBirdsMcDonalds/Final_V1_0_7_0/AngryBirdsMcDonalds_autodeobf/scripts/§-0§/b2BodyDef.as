package §-0§
{
   import §^!%§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §%R§:b2Vec2;
      
      public var §"!?§:Number;
      
      public var §,"§:Number;
      
      public var §1!=§:Number;
      
      public var §&!#§:Boolean;
      
      public var §!Z§:Boolean;
      
      public var §%!M§:Boolean;
      
      public var §"5§:Boolean;
      
      public var §8!p§:Boolean;
      
      public var §6=§;
      
      public var §-!0§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§%R§ = new b2Vec2();
         super();
         this.§6=§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§%R§.Set(0,0);
         this.§"!?§ = 0;
         this.§,"§ = 0;
         this.§1!=§ = 0;
         this.§&!#§ = true;
         this.§!Z§ = true;
         this.§%!M§ = false;
         this.§"5§ = false;
         this.type = b2Body.b2_staticBody;
         this.§8!p§ = true;
         this.§-!0§ = 1;
      }
   }
}
