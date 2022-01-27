package §1x§
{
   import §^>§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §null§:b2Vec2;
      
      public var §-"t§:Number;
      
      public var §9"g§:Number;
      
      public var §]"H§:Number;
      
      public var §0%§:Boolean;
      
      public var §2"%§:Boolean;
      
      public var §'!P§:Boolean;
      
      public var §9"a§:Boolean;
      
      public var active:Boolean;
      
      public var §>g§;
      
      public var §8"c§:Number;
      
      public var §'!v§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§null§ = new b2Vec2();
         super();
         this.§>g§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§null§.Set(0,0);
         this.§-"t§ = 0;
         this.§9"g§ = 0;
         this.§]"H§ = 0;
         this.§0%§ = true;
         this.§2"%§ = true;
         this.§'!P§ = false;
         this.§9"a§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§8"c§ = 1;
         this.§'!v§ = 1;
      }
   }
}
