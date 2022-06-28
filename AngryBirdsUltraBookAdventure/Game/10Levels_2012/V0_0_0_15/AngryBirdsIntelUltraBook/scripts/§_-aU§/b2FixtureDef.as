package §_-aU§
{
   import §_-03n§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §_-05u§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §_-bz§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§_-05u§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§_-R-§ = 1;
         this.filter.§_-j6§ = 65535;
         this.filter.§_-0CL§ = 0;
         this.§_-bz§ = false;
      }
   }
}
