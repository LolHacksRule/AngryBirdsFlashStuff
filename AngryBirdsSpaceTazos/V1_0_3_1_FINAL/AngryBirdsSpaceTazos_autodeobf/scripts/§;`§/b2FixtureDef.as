package §;`§
{
   import §"!w§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §?!#§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §&t§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§?!#§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§@W§ = 1;
         this.filter.§`!`§ = 65535;
         this.filter.§@§ = 0;
         this.§&t§ = false;
      }
   }
}
