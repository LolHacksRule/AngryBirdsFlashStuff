package §"!4§
{
   import §;h§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §<o§:b2Vec2;
      
      public var §4!3§:Number;
      
      public var §^X§:b2Vec2;
      
      public var §1!=§:Number;
      
      public function b2Jacobian()
      {
         this.§<o§ = new b2Vec2();
         this.§^X§ = new b2Vec2();
         super();
      }
      
      public function §9!V§() : void
      {
         this.§<o§.§9!V§();
         this.§4!3§ = 0;
         this.§^X§.§9!V§();
         this.§1!=§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§<o§.SetV(param1);
         this.§4!3§ = param2;
         this.§^X§.SetV(param3);
         this.§1!=§ = param4;
      }
      
      public function override(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§<o§.x * param1.x + this.§<o§.y * param1.y + this.§4!3§ * param2 + (this.§^X§.x * param3.x + this.§^X§.y * param3.y) + this.§1!=§ * param4;
      }
   }
}
