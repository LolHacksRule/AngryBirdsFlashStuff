package §1B§
{
   import §!R§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §6![§:b2Vec2;
      
      public var §0!4§:Number;
      
      public var §7!$§:Number;
      
      public var §!!5§:Number;
      
      public var §+!Z§:Boolean;
      
      public var §[!N§:Boolean;
      
      public var §1x§:Boolean;
      
      public var §<!2§:Boolean;
      
      public var §%Q§:Boolean;
      
      public var §0I§;
      
      public var §?!4§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§6![§ = new b2Vec2();
         super();
         this.§0I§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§6![§.Set(0,0);
         this.§0!4§ = 0;
         this.§7!$§ = 0;
         this.§!!5§ = 0;
         this.§+!Z§ = true;
         this.§[!N§ = true;
         this.§1x§ = false;
         this.§<!2§ = false;
         this.type = b2Body.b2_staticBody;
         this.§%Q§ = true;
         this.§?!4§ = 1;
      }
   }
}
