package §?!0§
{
   import §1!H§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §7! §;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §!%§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§7! § = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§?p§ = 1;
         this.filter.§]@§ = 65535;
         this.filter.§+!0§ = 0;
         this.§!%§ = false;
      }
   }
}
