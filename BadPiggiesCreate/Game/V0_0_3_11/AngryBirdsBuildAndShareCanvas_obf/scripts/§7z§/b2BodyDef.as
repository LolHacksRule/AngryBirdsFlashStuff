package §7z§
{
   import §+L§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §%!V§:b2Vec2;
      
      public var §9a§:Number;
      
      public var §4<§:Number;
      
      public var §0!I§:Number;
      
      public var §3"4§:Boolean;
      
      public var §^!u§:Boolean;
      
      public var §4R§:Boolean;
      
      public var §case§:Boolean;
      
      public var §8Y§:Boolean;
      
      public var §'!3§;
      
      public var §`!S§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§%!V§ = new b2Vec2();
         super();
         this.§'!3§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§%!V§.Set(0,0);
         this.§9a§ = 0;
         this.§4<§ = 0;
         this.§0!I§ = 0;
         this.§3"4§ = true;
         this.§^!u§ = true;
         this.§4R§ = false;
         this.§case§ = false;
         this.type = b2Body.b2_staticBody;
         this.§8Y§ = true;
         this.§`!S§ = 1;
      }
   }
}
