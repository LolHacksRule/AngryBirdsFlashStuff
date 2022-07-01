package §9!Z§
{
   import §?"'§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §<!N§:b2Vec2;
      
      public var § !a§:Number;
      
      public var §<!Q§:Number;
      
      public var §]!c§:Number;
      
      public var § !C§:Boolean;
      
      public var §'!^§:Boolean;
      
      public var §1I§:Boolean;
      
      public var §`!$§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §0!9§:Number;
      
      public var §3"'§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§<!N§ = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§<!N§.Set(0,0);
         this.§ !a§ = 0;
         this.§<!Q§ = 0;
         this.§]!c§ = 0;
         this.§ !C§ = true;
         this.§'!^§ = true;
         this.§1I§ = false;
         this.§`!$§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§0!9§ = 1;
         this.§3"'§ = 1;
      }
   }
}
