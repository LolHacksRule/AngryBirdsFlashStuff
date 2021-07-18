package §_-Iw§
{
   import §_-Kt§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §_-Vb§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §_-n0§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§_-Vb§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§try§ = 1;
         this.filter.§_-Gi§ = 65535;
         this.filter.§_-oa§ = 0;
         this.§_-n0§ = false;
      }
   }
}
