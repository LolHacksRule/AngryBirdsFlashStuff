package §^%§
{
   import §1!z§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §`!p§:b2Vec2;
      
      public var §80§:Number;
      
      public var §9-§:b2Vec2;
      
      public var §4!'§:Number;
      
      public function b2Jacobian()
      {
         this.§`!p§ = new b2Vec2();
         this.§9-§ = new b2Vec2();
         super();
      }
      
      public function §4e§() : void
      {
         this.§`!p§.§4e§();
         this.§80§ = 0;
         this.§9-§.§4e§();
         this.§4!'§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§`!p§.SetV(param1);
         this.§80§ = param2;
         this.§9-§.SetV(param3);
         this.§4!'§ = param4;
      }
      
      public function §<!;§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§`!p§.x * param1.x + this.§`!p§.y * param1.y + this.§80§ * param2 + (this.§9-§.x * param3.x + this.§9-§.y * param3.y) + this.§4!'§ * param4;
      }
   }
}
