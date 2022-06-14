package §48§
{
   import §#]§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §5"0§:b2Vec2;
      
      public var §!!a§:Number;
      
      public var §,!;§:Number;
      
      public var §'!k§:Number;
      
      public var §'"@§:Boolean;
      
      public var §<_§:Boolean;
      
      public var §1?§:Boolean;
      
      public var §=-§:Boolean;
      
      public var §'a§:Boolean;
      
      public var §6"&§;
      
      public var §-0§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§5"0§ = new b2Vec2();
         super();
         this.§6"&§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§5"0§.Set(0,0);
         this.§!!a§ = 0;
         this.§,!;§ = 0;
         this.§'!k§ = 0;
         this.§'"@§ = true;
         this.§<_§ = true;
         this.§1?§ = false;
         this.§=-§ = false;
         this.type = b2Body.b2_staticBody;
         this.§'a§ = true;
         this.§-0§ = 1;
      }
   }
}
