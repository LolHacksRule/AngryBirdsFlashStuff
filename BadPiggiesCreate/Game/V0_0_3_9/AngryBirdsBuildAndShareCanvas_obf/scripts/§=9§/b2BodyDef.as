package §=9§
{
   import §-!G§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §37§:b2Vec2;
      
      public var §&"#§:Number;
      
      public var §>2§:Number;
      
      public var §[-§:Number;
      
      public var §'" §:Boolean;
      
      public var §"W§:Boolean;
      
      public var §<k§:Boolean;
      
      public var §8Q§:Boolean;
      
      public var §%!y§:Boolean;
      
      public var §2"$§;
      
      public var §=!-§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§37§ = new b2Vec2();
         super();
         this.§2"$§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§37§.Set(0,0);
         this.§&"#§ = 0;
         this.§>2§ = 0;
         this.§[-§ = 0;
         this.§'" § = true;
         this.§"W§ = true;
         this.§<k§ = false;
         this.§8Q§ = false;
         this.type = b2Body.b2_staticBody;
         this.§%!y§ = true;
         this.§=!-§ = 1;
      }
   }
}
