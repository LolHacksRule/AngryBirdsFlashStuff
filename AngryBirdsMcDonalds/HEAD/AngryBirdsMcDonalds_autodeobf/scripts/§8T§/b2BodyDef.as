package §8T§
{
   import §+S§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §0!+§:b2Vec2;
      
      public var §`!#§:Number;
      
      public var §&!l§:Number;
      
      public var §^!E§:Number;
      
      public var §!!_§:Boolean;
      
      public var §`d§:Boolean;
      
      public var §^'§:Boolean;
      
      public var §&!1§:Boolean;
      
      public var §!a§:Boolean;
      
      public var §-&§;
      
      public var §3!+§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§0!+§ = new b2Vec2();
         super();
         this.§-&§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§0!+§.Set(0,0);
         this.§`!#§ = 0;
         this.§&!l§ = 0;
         this.§^!E§ = 0;
         this.§!!_§ = true;
         this.§`d§ = true;
         this.§^'§ = false;
         this.§&!1§ = false;
         this.type = b2Body.b2_staticBody;
         this.§!a§ = true;
         this.§3!+§ = 1;
      }
   }
}
