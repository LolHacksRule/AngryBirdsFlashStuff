package §_-vk§
{
   import §_-Pu§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §_-nF§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §_-lJ§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§_-nF§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§_-4V§ = 1;
         this.filter.§_-lC§ = 65535;
         this.filter.§_-FF§ = 0;
         this.§_-lJ§ = false;
      }
   }
}
