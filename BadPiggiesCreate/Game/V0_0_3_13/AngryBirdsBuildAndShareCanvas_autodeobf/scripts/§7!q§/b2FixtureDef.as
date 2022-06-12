package §7!q§
{
   import §5!]§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §>T§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §]E§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§>T§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§1'§ = 1;
         this.filter.§4!L§ = 65535;
         this.filter.§=!!§ = 0;
         this.§]E§ = false;
      }
   }
}
