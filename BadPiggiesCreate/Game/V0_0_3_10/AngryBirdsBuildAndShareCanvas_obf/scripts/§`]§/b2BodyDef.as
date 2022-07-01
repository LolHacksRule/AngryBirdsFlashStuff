package §`]§
{
   import §?!h§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §<!]§:b2Vec2;
      
      public var §5n§:Number;
      
      public var §`"$§:Number;
      
      public var §"x§:Number;
      
      public var §#_§:Boolean;
      
      public var §[G§:Boolean;
      
      public var §+!z§:Boolean;
      
      public var §!e§:Boolean;
      
      public var §!!E§:Boolean;
      
      public var §;O§;
      
      public var §`l§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§<!]§ = new b2Vec2();
         super();
         this.§;O§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§<!]§.Set(0,0);
         this.§5n§ = 0;
         this.§`"$§ = 0;
         this.§"x§ = 0;
         this.§#_§ = true;
         this.§[G§ = true;
         this.§+!z§ = false;
         this.§!e§ = false;
         this.type = b2Body.b2_staticBody;
         this.§!!E§ = true;
         this.§`l§ = 1;
      }
   }
}
