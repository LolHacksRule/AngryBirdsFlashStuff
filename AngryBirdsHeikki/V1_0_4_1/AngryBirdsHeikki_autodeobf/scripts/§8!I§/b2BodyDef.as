package §8!I§
{
   import §=i§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §7c§:b2Vec2;
      
      public var §"!^§:Number;
      
      public var §`A§:Number;
      
      public var §;d§:Number;
      
      public var §'!A§:Boolean;
      
      public var §%!4§:Boolean;
      
      public var §3§:Boolean;
      
      public var §,Z§:Boolean;
      
      public var §if §:Boolean;
      
      public var §3q§;
      
      public var §&U§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§7c§ = new b2Vec2();
         super();
         this.§3q§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§7c§.Set(0,0);
         this.§"!^§ = 0;
         this.§`A§ = 0;
         this.§;d§ = 0;
         this.§'!A§ = true;
         this.§%!4§ = true;
         this.§3§ = false;
         this.§,Z§ = false;
         this.type = b2Body.b2_staticBody;
         this.§if § = true;
         this.§&U§ = 1;
      }
   }
}
