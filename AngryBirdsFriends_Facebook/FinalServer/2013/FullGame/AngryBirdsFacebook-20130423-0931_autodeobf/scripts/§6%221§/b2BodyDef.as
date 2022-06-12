package §6"1§
{
   import §6!^§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §#"+§:b2Vec2;
      
      public var §1"9§:Number;
      
      public var §#"P§:Number;
      
      public var §6"9§:Number;
      
      public var §6!z§:Boolean;
      
      public var §2"X§:Boolean;
      
      public var §-!'§:Boolean;
      
      public var §1p§:Boolean;
      
      public var §""D§:Boolean;
      
      public var §-!"§;
      
      public var §;!-§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§#"+§ = new b2Vec2();
         super();
         this.§-!"§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§#"+§.Set(0,0);
         this.§1"9§ = 0;
         this.§#"P§ = 0;
         this.§6"9§ = 0;
         this.§6!z§ = true;
         this.§2"X§ = true;
         this.§-!'§ = false;
         this.§1p§ = false;
         this.type = b2Body.b2_staticBody;
         this.§""D§ = true;
         this.§;!-§ = 1;
      }
   }
}
