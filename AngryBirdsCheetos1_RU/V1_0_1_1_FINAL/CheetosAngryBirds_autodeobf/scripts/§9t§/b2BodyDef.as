package §9t§
{
   import §^q§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §?M§:b2Vec2;
      
      public var §,!S§:Number;
      
      public var §2!Y§:Number;
      
      public var §&!O§:Number;
      
      public var §8!1§:Boolean;
      
      public var § !4§:Boolean;
      
      public var §?t§:Boolean;
      
      public var §7!8§:Boolean;
      
      public var § ^§:Boolean;
      
      public var §]h§;
      
      public var §'!3§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§?M§ = new b2Vec2();
         super();
         this.§]h§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§?M§.Set(0,0);
         this.§,!S§ = 0;
         this.§2!Y§ = 0;
         this.§&!O§ = 0;
         this.§8!1§ = true;
         this.§ !4§ = true;
         this.§?t§ = false;
         this.§7!8§ = false;
         this.type = b2Body.b2_staticBody;
         this.§ ^§ = true;
         this.§'!3§ = 1;
      }
   }
}
