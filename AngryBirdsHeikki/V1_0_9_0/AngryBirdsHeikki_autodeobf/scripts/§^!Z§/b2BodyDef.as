package §^!Z§
{
   import § !_§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §1!R§:b2Vec2;
      
      public var §-!Q§:Number;
      
      public var §^!S§:Number;
      
      public var §`!J§:Number;
      
      public var §?i§:Boolean;
      
      public var §=!c§:Boolean;
      
      public var §7p§:Boolean;
      
      public var §&,§:Boolean;
      
      public var §2R§:Boolean;
      
      public var §<!=§;
      
      public var §^S§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§1!R§ = new b2Vec2();
         super();
         this.§<!=§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§1!R§.Set(0,0);
         this.§-!Q§ = 0;
         this.§^!S§ = 0;
         this.§`!J§ = 0;
         this.§?i§ = true;
         this.§=!c§ = true;
         this.§7p§ = false;
         this.§&,§ = false;
         this.type = b2Body.b2_staticBody;
         this.§2R§ = true;
         this.§^S§ = 1;
      }
   }
}
