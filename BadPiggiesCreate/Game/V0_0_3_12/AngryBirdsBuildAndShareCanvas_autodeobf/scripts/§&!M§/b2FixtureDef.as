package §&!M§
{
   import §,Y§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §7!_§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §6Z§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§7!_§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§;]§ = 1;
         this.filter.§%!d§ = 65535;
         this.filter.§?!$§ = 0;
         this.§6Z§ = false;
      }
   }
}
