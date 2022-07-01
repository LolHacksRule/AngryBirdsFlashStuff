package §0!j§
{
   import §8!K§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var userData;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §'!F§:Boolean;
      
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
         this.filter.§+!j§ = 1;
         this.filter.§8F§ = 65535;
         this.filter.§^!S§ = 0;
         this.§'!F§ = false;
      }
   }
}
