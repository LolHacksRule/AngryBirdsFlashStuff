package §,v§
{
   import §-!A§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §#q§:b2Vec2;
      
      public var §9!"§:Number;
      
      public var §'D§:Number;
      
      public var §8!H§:Number;
      
      public var §6p§:Boolean;
      
      public var §@W§:Boolean;
      
      public var §<!l§:Boolean;
      
      public var §#!6§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §'!§:Number;
      
      public var §`!_§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§#q§ = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§#q§.Set(0,0);
         this.§9!"§ = 0;
         this.§'D§ = 0;
         this.§8!H§ = 0;
         this.§6p§ = true;
         this.§@W§ = true;
         this.§<!l§ = false;
         this.§#!6§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§'!§ = 1;
         this.§`!_§ = 1;
      }
   }
}
