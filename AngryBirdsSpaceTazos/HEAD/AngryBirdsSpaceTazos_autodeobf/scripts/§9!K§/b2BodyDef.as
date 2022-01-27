package §9!K§
{
   import §6!n§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §`!N§:b2Vec2;
      
      public var §9!C§:Number;
      
      public var §=]§:Number;
      
      public var §+!H§:Number;
      
      public var §@!X§:Boolean;
      
      public var §>5§:Boolean;
      
      public var §?b§:Boolean;
      
      public var §=!l§:Boolean;
      
      public var §]K§:Boolean;
      
      public var §??§;
      
      public var §<!,§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§`!N§ = new b2Vec2();
         super();
         this.§??§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§`!N§.Set(0,0);
         this.§9!C§ = 0;
         this.§=]§ = 0;
         this.§+!H§ = 0;
         this.§@!X§ = true;
         this.§>5§ = true;
         this.§?b§ = false;
         this.§=!l§ = false;
         this.type = b2Body.b2_staticBody;
         this.§]K§ = true;
         this.§<!,§ = 1;
      }
   }
}
