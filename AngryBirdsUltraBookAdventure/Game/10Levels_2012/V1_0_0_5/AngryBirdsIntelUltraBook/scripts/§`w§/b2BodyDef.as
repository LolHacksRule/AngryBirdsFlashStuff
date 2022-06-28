package §`w§
{
   import §>H§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §,W§:b2Vec2;
      
      public var §"!T§:Number;
      
      public var §2!s§:Number;
      
      public var §!!J§:Number;
      
      public var §import§:Boolean;
      
      public var §!,§:Boolean;
      
      public var §do§:Boolean;
      
      public var §,$§:Boolean;
      
      public var §,O§:Boolean;
      
      public var §+!+§;
      
      public var §4!D§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§,W§ = new b2Vec2();
         super();
         this.§+!+§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§,W§.Set(0,0);
         this.§"!T§ = 0;
         this.§2!s§ = 0;
         this.§!!J§ = 0;
         this.§import§ = true;
         this.§!,§ = true;
         this.§do§ = false;
         this.§,$§ = false;
         this.type = b2Body.b2_staticBody;
         this.§,O§ = true;
         this.§4!D§ = 1;
      }
   }
}
