package §7!q§
{
   import §1!z§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §[b§:b2Vec2;
      
      public var §@!M§:Number;
      
      public var §9W§:Number;
      
      public var §%!G§:Number;
      
      public var §'2§:Boolean;
      
      public var §-C§:Boolean;
      
      public var §@!v§:Boolean;
      
      public var §!!s§:Boolean;
      
      public var §^O§:Boolean;
      
      public var §>T§;
      
      public var § !l§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§[b§ = new b2Vec2();
         super();
         this.§>T§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§[b§.Set(0,0);
         this.§@!M§ = 0;
         this.§9W§ = 0;
         this.§%!G§ = 0;
         this.§'2§ = true;
         this.§-C§ = true;
         this.§@!v§ = false;
         this.§!!s§ = false;
         this.type = b2Body.b2_staticBody;
         this.§^O§ = true;
         this.§ !l§ = 1;
      }
   }
}
