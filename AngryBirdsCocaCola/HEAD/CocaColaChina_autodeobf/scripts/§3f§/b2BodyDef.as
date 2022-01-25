package §3f§
{
   import §&!L§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var § !0§:b2Vec2;
      
      public var §`!]§:Number;
      
      public var §,!&§:Number;
      
      public var §+I§:Number;
      
      public var §`V§:Boolean;
      
      public var § !H§:Boolean;
      
      public var §^!9§:Boolean;
      
      public var §4E§:Boolean;
      
      public var §5!C§:Boolean;
      
      public var §6!6§;
      
      public var §4?§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§ !0§ = new b2Vec2();
         super();
         this.§6!6§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§ !0§.Set(0,0);
         this.§`!]§ = 0;
         this.§,!&§ = 0;
         this.§+I§ = 0;
         this.§`V§ = true;
         this.§ !H§ = true;
         this.§^!9§ = false;
         this.§4E§ = false;
         this.type = b2Body.b2_staticBody;
         this.§5!C§ = true;
         this.§4?§ = 1;
      }
   }
}
