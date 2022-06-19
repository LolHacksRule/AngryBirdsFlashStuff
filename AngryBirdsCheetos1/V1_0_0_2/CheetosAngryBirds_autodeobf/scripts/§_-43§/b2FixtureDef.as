package §_-43§
{
   import § if§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §_-eL§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §_-Xn§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§_-eL§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§_-eR§ = 1;
         this.filter.§_-uo§ = 65535;
         this.filter.§_-Yw§ = 0;
         this.§_-Xn§ = false;
      }
   }
}
