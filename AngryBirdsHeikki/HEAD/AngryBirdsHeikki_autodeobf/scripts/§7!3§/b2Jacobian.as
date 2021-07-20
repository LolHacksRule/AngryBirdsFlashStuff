package §7!3§
{
   import §`!^§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §%!a§:b2Vec2;
      
      public var §&!V§:Number;
      
      public var §0"§:b2Vec2;
      
      public var §<+§:Number;
      
      public function b2Jacobian()
      {
         this.§%!a§ = new b2Vec2();
         this.§0"§ = new b2Vec2();
         super();
      }
      
      public function §8c§() : void
      {
         this.§%!a§.§8c§();
         this.§&!V§ = 0;
         this.§0"§.§8c§();
         this.§<+§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§%!a§.SetV(param1);
         this.§&!V§ = param2;
         this.§0"§.SetV(param3);
         this.§<+§ = param4;
      }
      
      public function §1!a§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§%!a§.x * param1.x + this.§%!a§.y * param1.y + this.§&!V§ * param2 + (this.§0"§.x * param3.x + this.§0"§.y * param3.y) + this.§<+§ * param4;
      }
   }
}
