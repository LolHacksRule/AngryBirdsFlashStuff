package §]=§
{
   import §&L§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §5p§:b2Vec2;
      
      public var §;-§:Number;
      
      public var §3j§:Number;
      
      public var §=!8§:Number;
      
      public var §3!E§:Boolean;
      
      public var §,!e§:Boolean;
      
      public var §>m§:Boolean;
      
      public var §3^§:Boolean;
      
      public var §]!%§:Boolean;
      
      public var §?!X§;
      
      public var §%!"§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§5p§ = new b2Vec2();
         super();
         this.§?!X§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§5p§.Set(0,0);
         this.§;-§ = 0;
         this.§3j§ = 0;
         this.§=!8§ = 0;
         this.§3!E§ = true;
         this.§,!e§ = true;
         this.§>m§ = false;
         this.§3^§ = false;
         this.type = b2Body.b2_staticBody;
         this.§]!%§ = true;
         this.§%!"§ = 1;
      }
   }
}
