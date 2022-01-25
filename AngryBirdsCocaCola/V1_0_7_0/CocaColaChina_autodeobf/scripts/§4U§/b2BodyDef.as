package §4U§
{
   import §<!8§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §<i§:b2Vec2;
      
      public var §&7§:Number;
      
      public var §=k§:Number;
      
      public var § o§:Number;
      
      public var §2h§:Boolean;
      
      public var §1M§:Boolean;
      
      public var § !0§:Boolean;
      
      public var §`!]§:Boolean;
      
      public var §const§:Boolean;
      
      public var §6!6§;
      
      public var §,!&§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§<i§ = new b2Vec2();
         super();
         this.§6!6§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§<i§.Set(0,0);
         this.§&7§ = 0;
         this.§=k§ = 0;
         this.§ o§ = 0;
         this.§2h§ = true;
         this.§1M§ = true;
         this.§ !0§ = false;
         this.§`!]§ = false;
         this.type = b2Body.b2_staticBody;
         this.§const§ = true;
         this.§,!&§ = 1;
      }
   }
}
