package §;'§
{
   import §,!k§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var § 7§:b2Vec2;
      
      public var §?>§:Number;
      
      public var §?!3§:Number;
      
      public var §5!R§:Number;
      
      public var §,!X§:Boolean;
      
      public var §1w§:Boolean;
      
      public var §&!W§:Boolean;
      
      public var §[K§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §4G§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§ 7§ = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§ 7§.Set(0,0);
         this.§?>§ = 0;
         this.§?!3§ = 0;
         this.§5!R§ = 0;
         this.§,!X§ = true;
         this.§1w§ = true;
         this.§&!W§ = false;
         this.§[K§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§4G§ = 1;
      }
   }
}
