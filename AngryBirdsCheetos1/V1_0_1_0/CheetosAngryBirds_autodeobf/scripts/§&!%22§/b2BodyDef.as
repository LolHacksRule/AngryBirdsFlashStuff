package §&!"§
{
   import §9"§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §=!0§:b2Vec2;
      
      public var §!t§:Number;
      
      public var §[!8§:Number;
      
      public var §='§:Number;
      
      public var §=q§:Boolean;
      
      public var §8!T§:Boolean;
      
      public var § v§:Boolean;
      
      public var § Q§:Boolean;
      
      public var §?c§:Boolean;
      
      public var §7! §;
      
      public var §=T§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§=!0§ = new b2Vec2();
         super();
         this.§7! § = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§=!0§.Set(0,0);
         this.§!t§ = 0;
         this.§[!8§ = 0;
         this.§='§ = 0;
         this.§=q§ = true;
         this.§8!T§ = true;
         this.§ v§ = false;
         this.§ Q§ = false;
         this.type = b2Body.b2_staticBody;
         this.§?c§ = true;
         this.§=T§ = 1;
      }
   }
}
