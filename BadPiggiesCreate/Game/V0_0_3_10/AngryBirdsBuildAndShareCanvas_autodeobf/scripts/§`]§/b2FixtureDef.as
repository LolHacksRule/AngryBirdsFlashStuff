package §`]§
{
   import §6U§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §;O§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §&""§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§;O§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§3"8§ = 1;
         this.filter.§+r§ = 65535;
         this.filter.§^!Y§ = 0;
         this.§&""§ = false;
      }
   }
}
