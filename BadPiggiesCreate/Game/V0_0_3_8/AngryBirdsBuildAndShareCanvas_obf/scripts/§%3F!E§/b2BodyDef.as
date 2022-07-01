package §?!E§
{
   import §9v§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §]!@§:b2Vec2;
      
      public var §"!7§:Number;
      
      public var §0!i§:Number;
      
      public var §`_§:Number;
      
      public var §-"0§:Boolean;
      
      public var §1!"§:Boolean;
      
      public var §]!y§:Boolean;
      
      public var §^6§:Boolean;
      
      public var §%!W§:Boolean;
      
      public var §-!j§;
      
      public var §5C§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§]!@§ = new b2Vec2();
         super();
         this.§-!j§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§]!@§.Set(0,0);
         this.§"!7§ = 0;
         this.§0!i§ = 0;
         this.§`_§ = 0;
         this.§-"0§ = true;
         this.§1!"§ = true;
         this.§]!y§ = false;
         this.§^6§ = false;
         this.type = b2Body.b2_staticBody;
         this.§%!W§ = true;
         this.§5C§ = 1;
      }
   }
}
