package §'!&§
{
   import §9t§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §&v§:b2Vec2;
      
      public var §9!I§:Number;
      
      public var §?"'§:Number;
      
      public var §@0§:Number;
      
      public var §#6§:Boolean;
      
      public var §"o§:Boolean;
      
      public var §'!H§:Boolean;
      
      public var §<!F§:Boolean;
      
      public var §`^§:Boolean;
      
      public var §!!%§;
      
      public var §,!^§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§&v§ = new b2Vec2();
         super();
         this.§!!%§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§&v§.Set(0,0);
         this.§9!I§ = 0;
         this.§?"'§ = 0;
         this.§@0§ = 0;
         this.§#6§ = true;
         this.§"o§ = true;
         this.§'!H§ = false;
         this.§<!F§ = false;
         this.type = b2Body.b2_staticBody;
         this.§`^§ = true;
         this.§,!^§ = 1;
      }
   }
}
