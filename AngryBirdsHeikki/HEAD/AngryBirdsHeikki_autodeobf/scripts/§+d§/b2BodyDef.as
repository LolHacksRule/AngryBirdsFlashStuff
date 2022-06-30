package §+d§
{
   import §`!^§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §0!S§:b2Vec2;
      
      public var §'<§:Number;
      
      public var §3z§:Number;
      
      public var § case§:Number;
      
      public var §0!^§:Boolean;
      
      public var §4!+§:Boolean;
      
      public var §9"§:Boolean;
      
      public var §&[§:Boolean;
      
      public var §<F§:Boolean;
      
      public var §>V§;
      
      public var §%!2§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§0!S§ = new b2Vec2();
         super();
         this.§>V§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§0!S§.Set(0,0);
         this.§'<§ = 0;
         this.§3z§ = 0;
         this.§ case§ = 0;
         this.§0!^§ = true;
         this.§4!+§ = true;
         this.§9"§ = false;
         this.§&[§ = false;
         this.type = b2Body.b2_staticBody;
         this.§<F§ = true;
         this.§%!2§ = 1;
      }
   }
}
