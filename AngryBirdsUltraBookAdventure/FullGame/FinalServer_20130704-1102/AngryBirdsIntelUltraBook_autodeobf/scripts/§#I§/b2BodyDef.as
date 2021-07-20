package §#I§
{
   import §&H§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §;!"§:b2Vec2;
      
      public var §-!^§:Number;
      
      public var §#"$§:Number;
      
      public var §"!K§:Number;
      
      public var §]#§:Boolean;
      
      public var §-!A§:Boolean;
      
      public var §%w§:Boolean;
      
      public var §2!C§:Boolean;
      
      public var §6!@§:Boolean;
      
      public var §]!=§;
      
      public var §@!r§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§;!"§ = new b2Vec2();
         super();
         this.§]!=§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§;!"§.Set(0,0);
         this.§-!^§ = 0;
         this.§#"$§ = 0;
         this.§"!K§ = 0;
         this.§]#§ = true;
         this.§-!A§ = true;
         this.§%w§ = false;
         this.§2!C§ = false;
         this.type = b2Body.b2_staticBody;
         this.§6!@§ = true;
         this.§@!r§ = 1;
      }
   }
}
