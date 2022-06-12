package §&!M§
{
   import §3!t§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §[F§:b2Vec2;
      
      public var §?!Z§:Number;
      
      public var §`O§:Number;
      
      public var §@c§:Number;
      
      public var §3!f§:Boolean;
      
      public var §;d§:Boolean;
      
      public var §'">§:Boolean;
      
      public var §2"#§:Boolean;
      
      public var §,!R§:Boolean;
      
      public var §7!_§;
      
      public var §`!b§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§[F§ = new b2Vec2();
         super();
         this.§7!_§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§[F§.Set(0,0);
         this.§?!Z§ = 0;
         this.§`O§ = 0;
         this.§@c§ = 0;
         this.§3!f§ = true;
         this.§;d§ = true;
         this.§'">§ = false;
         this.§2"#§ = false;
         this.type = b2Body.b2_staticBody;
         this.§,!R§ = true;
         this.§`!b§ = 1;
      }
   }
}
