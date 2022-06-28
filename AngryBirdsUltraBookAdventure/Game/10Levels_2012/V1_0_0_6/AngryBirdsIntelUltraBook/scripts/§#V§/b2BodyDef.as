package §#V§
{
   import §;%§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §9!e§:b2Vec2;
      
      public var §+!o§:Number;
      
      public var §5!L§:Number;
      
      public var §&!G§:Number;
      
      public var § !U§:Boolean;
      
      public var §3§:Boolean;
      
      public var §2M§:Boolean;
      
      public var §6!b§:Boolean;
      
      public var §2!8§:Boolean;
      
      public var §#+§;
      
      public var §=!m§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§9!e§ = new b2Vec2();
         super();
         this.§#+§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§9!e§.Set(0,0);
         this.§+!o§ = 0;
         this.§5!L§ = 0;
         this.§&!G§ = 0;
         this.§ !U§ = true;
         this.§3§ = true;
         this.§2M§ = false;
         this.§6!b§ = false;
         this.type = b2Body.b2_staticBody;
         this.§2!8§ = true;
         this.§=!m§ = 1;
      }
   }
}
