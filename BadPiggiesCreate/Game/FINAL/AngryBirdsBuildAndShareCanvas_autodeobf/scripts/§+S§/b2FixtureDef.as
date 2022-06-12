package §+S§
{
   import §"!9§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §1P§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §1!P§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§1P§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§?!C§ = 1;
         this.filter.§!!R§ = 65535;
         this.filter.§[-§ = 0;
         this.§1!P§ = false;
      }
   }
}
