package § !k§
{
   import §!"8§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §0!Z§:b2Vec2;
      
      public var §><§:Number;
      
      public var §+!6§:Number;
      
      public var §]=§:Number;
      
      public var §5!C§:Boolean;
      
      public var §7x§:Boolean;
      
      public var §6R§:Boolean;
      
      public var §@!%§:Boolean;
      
      public var § "$§:Boolean;
      
      public var §#"@§;
      
      public var §`"7§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§0!Z§ = new b2Vec2();
         super();
         this.§#"@§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§0!Z§.Set(0,0);
         this.§><§ = 0;
         this.§+!6§ = 0;
         this.§]=§ = 0;
         this.§5!C§ = true;
         this.§7x§ = true;
         this.§6R§ = false;
         this.§@!%§ = false;
         this.type = b2Body.b2_staticBody;
         this.§ "$§ = true;
         this.§`"7§ = 1;
      }
   }
}
