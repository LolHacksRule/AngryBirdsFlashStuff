package § !t§
{
   import §<!B§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §4!=§:b2Vec2;
      
      public var §'!h§:Number;
      
      public var §4!6§:Number;
      
      public var §<!A§:Number;
      
      public var §[_§:Boolean;
      
      public var §5@§:Boolean;
      
      public var §`!p§:Boolean;
      
      public var §@x§:Boolean;
      
      public var active:Boolean;
      
      public var §!L§;
      
      public var §=!i§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§4!=§ = new b2Vec2();
         super();
         this.§!L§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§4!=§.Set(0,0);
         this.§'!h§ = 0;
         this.§4!6§ = 0;
         this.§<!A§ = 0;
         this.§[_§ = true;
         this.§5@§ = true;
         this.§`!p§ = false;
         this.§@x§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§=!i§ = 1;
      }
   }
}
