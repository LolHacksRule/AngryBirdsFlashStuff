package §8#t§
{
   import §]!o§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §@"Z§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var § !8§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         this.filter = new b2FilterData();
         super();
         this.shape = null;
         this.§@"Z§ = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.§`!+§ = 1;
         this.filter.§#"5§ = 65535;
         this.filter.§?#0§ = 0;
         this.§ !8§ = false;
      }
   }
}
