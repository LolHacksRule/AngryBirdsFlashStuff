package §_-00B§
{
   import §_-OY§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §_-FA§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §_-Ml§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§_-FA§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§_-50§ = 1;
         this.filter.§_-Vs§ = 65535;
         this.filter.§_-cp§ = 0;
         this.§_-Ml§ = false;
      }
   }
}
