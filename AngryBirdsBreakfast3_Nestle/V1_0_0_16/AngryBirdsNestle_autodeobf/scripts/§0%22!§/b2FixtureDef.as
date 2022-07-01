package §0"!§
{
   import §=!!§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var userData;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §7'§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.userData = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§^!d§ = 1;
         this.filter.§+!+§ = 65535;
         this.filter.§?!x§ = 0;
         this.§7'§ = false;
      }
   }
}
