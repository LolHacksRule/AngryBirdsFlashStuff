package §]=§
{
   import §#!"§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §?!X§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var § !4§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§?!X§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§6o§ = 1;
         this.filter.§!W§ = 65535;
         this.filter.§8!#§ = 0;
         this.§ !4§ = false;
      }
   }
}
