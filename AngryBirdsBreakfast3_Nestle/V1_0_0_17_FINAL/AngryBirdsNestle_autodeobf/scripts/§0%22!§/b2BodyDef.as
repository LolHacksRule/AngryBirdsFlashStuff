package §0"!§
{
   import §@!E§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §%!7§:b2Vec2;
      
      public var §9!A§:Number;
      
      public var §>"#§:Number;
      
      public var §7e§:Number;
      
      public var §`",§:Boolean;
      
      public var §0!z§:Boolean;
      
      public var §3"2§:Boolean;
      
      public var §5!J§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §#!A§:Number;
      
      public var §,?§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§%!7§ = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§%!7§.Set(0,0);
         this.§9!A§ = 0;
         this.§>"#§ = 0;
         this.§7e§ = 0;
         this.§`",§ = true;
         this.§0!z§ = true;
         this.§3"2§ = false;
         this.§5!J§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§#!A§ = 1;
         this.§,?§ = 1;
      }
   }
}
