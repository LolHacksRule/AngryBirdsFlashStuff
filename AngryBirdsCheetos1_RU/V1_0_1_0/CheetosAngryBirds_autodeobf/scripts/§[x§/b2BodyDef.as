package §[x§
{
   import §&!B§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §%!#§:b2Vec2;
      
      public var §7F§:Number;
      
      public var §^!D§:Number;
      
      public var §!!M§:Number;
      
      public var §'_§:Boolean;
      
      public var §15§:Boolean;
      
      public var §`6§:Boolean;
      
      public var §>!R§:Boolean;
      
      public var §3w§:Boolean;
      
      public var § X§;
      
      public var §6,§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§%!#§ = new b2Vec2();
         super();
         this.§ X§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§%!#§.Set(0,0);
         this.§7F§ = 0;
         this.§^!D§ = 0;
         this.§!!M§ = 0;
         this.§'_§ = true;
         this.§15§ = true;
         this.§`6§ = false;
         this.§>!R§ = false;
         this.type = b2Body.b2_staticBody;
         this.§3w§ = true;
         this.§6,§ = 1;
      }
   }
}
