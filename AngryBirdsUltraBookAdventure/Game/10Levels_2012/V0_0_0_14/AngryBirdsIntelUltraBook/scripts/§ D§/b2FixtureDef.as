package § D§
{
   import §0!'§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §1o§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var each:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§1o§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§ H§ = 1;
         this.filter.§,9§ = 65535;
         this.filter.§6!e§ = 0;
         this.each = false;
      }
   }
}
