package §9t§
{
   import §[!E§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §]h§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var § !Q§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§]h§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§6X§ = 1;
         this.filter.§'w§ = 65535;
         this.filter.§;!^§ = 0;
         this.§ !Q§ = false;
      }
   }
}
