package §[W§
{
   import §+,§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §#!S§:b2Vec2;
      
      public var §+!B§:Number;
      
      public var §!3§:Number;
      
      public var §11§:Number;
      
      public var §""§:Boolean;
      
      public var § _§:Boolean;
      
      public var §+]§:Boolean;
      
      public var §"!E§:Boolean;
      
      public var §2!1§:Boolean;
      
      public var §=!<§;
      
      public var §case§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§#!S§ = new b2Vec2();
         super();
         this.§=!<§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§#!S§.Set(0,0);
         this.§+!B§ = 0;
         this.§!3§ = 0;
         this.§11§ = 0;
         this.§""§ = true;
         this.§ _§ = true;
         this.§+]§ = false;
         this.§"!E§ = false;
         this.type = b2Body.b2_staticBody;
         this.§2!1§ = true;
         this.§case§ = 1;
      }
   }
}
