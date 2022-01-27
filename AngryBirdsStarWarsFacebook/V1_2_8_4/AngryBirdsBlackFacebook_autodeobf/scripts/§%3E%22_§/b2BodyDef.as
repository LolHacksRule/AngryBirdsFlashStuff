package §>"_§
{
   import §7"A§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §^2§:b2Vec2;
      
      public var §7!$§:Number;
      
      public var §[3§:Number;
      
      public var §-#0§:Number;
      
      public var §0!p§:Boolean;
      
      public var §+!@§:Boolean;
      
      public var §;"!§:Boolean;
      
      public var §^!Z§:Boolean;
      
      public var active:Boolean;
      
      public var §="M§;
      
      public var §=!X§:Number;
      
      public var §9f§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§^2§ = new b2Vec2();
         super();
         this.§="M§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§^2§.Set(0,0);
         this.§7!$§ = 0;
         this.§[3§ = 0;
         this.§-#0§ = 0;
         this.§0!p§ = true;
         this.§+!@§ = true;
         this.§;"!§ = false;
         this.§^!Z§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§=!X§ = 1;
         this.§9f§ = 1;
      }
   }
}
