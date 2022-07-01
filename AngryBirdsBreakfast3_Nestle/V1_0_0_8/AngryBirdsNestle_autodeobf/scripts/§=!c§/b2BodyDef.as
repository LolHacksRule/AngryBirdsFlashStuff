package §=!c§
{
   import §[K§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §5!H§:b2Vec2;
      
      public var §9! §:Number;
      
      public var §?!!§:Number;
      
      public var §,!2§:Number;
      
      public var §@!Y§:Boolean;
      
      public var §=!a§:Boolean;
      
      public var §0y§:Boolean;
      
      public var §#!9§:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var §5O§:Number;
      
      public var §<"1§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§5!H§ = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§5!H§.Set(0,0);
         this.§9! § = 0;
         this.§?!!§ = 0;
         this.§,!2§ = 0;
         this.§@!Y§ = true;
         this.§=!a§ = true;
         this.§0y§ = false;
         this.§#!9§ = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.§5O§ = 1;
         this.§<"1§ = 1;
      }
   }
}
