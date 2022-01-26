package §_-EH§
{
   import §_-Bt§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §_-ZT§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §_-8X§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§_-ZT§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§_-B5§ = 1;
         this.filter.§_-lN§ = 65535;
         this.filter.§_-MW§ = 0;
         this.§_-8X§ = false;
      }
   }
}
