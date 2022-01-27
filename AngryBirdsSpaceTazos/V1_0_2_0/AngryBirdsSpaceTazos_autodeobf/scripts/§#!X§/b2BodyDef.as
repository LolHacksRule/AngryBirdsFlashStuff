package §#!X§
{
   import §&!S§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §^!S§:b2Vec2;
      
      public var § A§:Number;
      
      public var §%R§:Number;
      
      public var §9!Q§:Number;
      
      public var §=%§:Boolean;
      
      public var §!F§:Boolean;
      
      public var §#!C§:Boolean;
      
      public var §-!G§:Boolean;
      
      public var §0!!§:Boolean;
      
      public var §]"6§;
      
      public var §5!t§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§^!S§ = new b2Vec2();
         super();
         this.§]"6§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§^!S§.Set(0,0);
         this.§ A§ = 0;
         this.§%R§ = 0;
         this.§9!Q§ = 0;
         this.§=%§ = true;
         this.§!F§ = true;
         this.§#!C§ = false;
         this.§-!G§ = false;
         this.type = b2Body.b2_staticBody;
         this.§0!!§ = true;
         this.§5!t§ = 1;
      }
   }
}
