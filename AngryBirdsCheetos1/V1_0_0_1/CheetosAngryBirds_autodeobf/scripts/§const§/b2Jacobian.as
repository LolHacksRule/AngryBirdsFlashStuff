package §const§
{
   import §_-cP§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-ZY§:b2Vec2;
      
      public var §_-B2§:Number;
      
      public var §_-5e§:b2Vec2;
      
      public var §_-5q§:Number;
      
      public function b2Jacobian()
      {
         this.§_-ZY§ = new b2Vec2();
         this.§_-5e§ = new b2Vec2();
         super();
      }
      
      public function §_-WO§() : void
      {
         this.§_-ZY§.§_-WO§();
         this.§_-B2§ = 0;
         this.§_-5e§.§_-WO§();
         this.§_-5q§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§_-ZY§.SetV(param1);
         this.§_-B2§ = param2;
         this.§_-5e§.SetV(param3);
         this.§_-5q§ = param4;
      }
      
      public function §_-nI§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§_-ZY§.x * param1.x + this.§_-ZY§.y * param1.y + this.§_-B2§ * param2 + (this.§_-5e§.x * param3.x + this.§_-5e§.y * param3.y) + this.§_-5q§ * param4;
      }
   }
}
