package §+#$§
{
   import §[R§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §1#1§:b2Vec2;
      
      public var §,t§:Number;
      
      public var §?"M§:Number;
      
      public var §>!f§:Number;
      
      public var §@!'§:Boolean;
      
      public var §4!@§:Boolean;
      
      public var §"D§:Boolean;
      
      public var §%#2§:Boolean;
      
      public var active:Boolean;
      
      public var §@"g§;
      
      public var §6"z§:Number;
      
      public var §"n§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§1#1§ = new b2Vec2();
         super();
         this.§@"g§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§1#1§.Set(0,0);
         this.§,t§ = 0;
         this.§?"M§ = 0;
         this.§>!f§ = 0;
         this.§@!'§ = true;
         this.§4!@§ = true;
         this.§"D§ = false;
         this.§%#2§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§6"z§ = 1;
         this.§"n§ = 1;
      }
   }
}
