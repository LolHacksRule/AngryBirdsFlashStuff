package §;`§
{
   import §[!f§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §7N§:b2Vec2;
      
      public var §!z§:Number;
      
      public var §1X§:Number;
      
      public var §'"§:Number;
      
      public var §7W§:Boolean;
      
      public var §?!k§:Boolean;
      
      public var §,!n§:Boolean;
      
      public var §!"H§:Boolean;
      
      public var §`!p§:Boolean;
      
      public var §?!#§;
      
      public var §%B§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§7N§ = new b2Vec2();
         super();
         this.§?!#§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§7N§.Set(0,0);
         this.§!z§ = 0;
         this.§1X§ = 0;
         this.§'"§ = 0;
         this.§7W§ = true;
         this.§?!k§ = true;
         this.§,!n§ = false;
         this.§!"H§ = false;
         this.type = b2Body.b2_staticBody;
         this.§`!p§ = true;
         this.§%B§ = 1;
      }
   }
}
