package §4]§
{
   import §[R§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §%[§:b2Vec2;
      
      public var §-W§:Number;
      
      public var §;!&§:Number;
      
      public var §3!F§:Number;
      
      public var §?n§:Boolean;
      
      public var §;0§:Boolean;
      
      public var §!i§:Boolean;
      
      public var §%X§:Boolean;
      
      public var §#i§:Boolean;
      
      public var §5!_§;
      
      public var §`7§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§%[§ = new b2Vec2();
         super();
         this.§5!_§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§%[§.Set(0,0);
         this.§-W§ = 0;
         this.§;!&§ = 0;
         this.§3!F§ = 0;
         this.§?n§ = true;
         this.§;0§ = true;
         this.§!i§ = false;
         this.§%X§ = false;
         this.type = b2Body.b2_staticBody;
         this.§#i§ = true;
         this.§`7§ = 1;
      }
   }
}
