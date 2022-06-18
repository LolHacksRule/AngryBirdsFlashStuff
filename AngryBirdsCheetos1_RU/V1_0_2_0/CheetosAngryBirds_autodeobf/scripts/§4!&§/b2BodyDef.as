package §4!&§
{
   import §&!+§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §^;§:b2Vec2;
      
      public var §";§:Number;
      
      public var §-!&§:Number;
      
      public var §&t§:Number;
      
      public var §6,§:Boolean;
      
      public var §`9§:Boolean;
      
      public var §<!5§:Boolean;
      
      public var §do §:Boolean;
      
      public var §'!-§:Boolean;
      
      public var §3_§;
      
      public var §3!#§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§^;§ = new b2Vec2();
         super();
         this.§3_§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§^;§.Set(0,0);
         this.§";§ = 0;
         this.§-!&§ = 0;
         this.§&t§ = 0;
         this.§6,§ = true;
         this.§`9§ = true;
         this.§<!5§ = false;
         this.§do § = false;
         this.type = b2Body.b2_staticBody;
         this.§'!-§ = true;
         this.§3!#§ = 1;
      }
   }
}
