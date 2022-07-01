package §9"5§
{
   import §-%§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §%!;§:b2Vec2;
      
      public var §6!=§:Number;
      
      public var §&!m§:Number;
      
      public var §!?§:Number;
      
      public var §#"!§:Boolean;
      
      public var §0u§:Boolean;
      
      public var §%!]§:Boolean;
      
      public var §+5§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §7@§:Number;
      
      public var § v§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§%!;§ = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§%!;§.Set(0,0);
         this.§6!=§ = 0;
         this.§&!m§ = 0;
         this.§!?§ = 0;
         this.§#"!§ = true;
         this.§0u§ = true;
         this.§%!]§ = false;
         this.§+5§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§7@§ = 1;
         this.§ v§ = 1;
      }
   }
}
