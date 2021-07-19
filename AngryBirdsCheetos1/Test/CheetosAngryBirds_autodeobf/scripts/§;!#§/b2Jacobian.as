package §;!#§
{
   import §6!H§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §5A§:b2Vec2;
      
      public var §0K§:Number;
      
      public var §!8§:b2Vec2;
      
      public var §>!G§:Number;
      
      public function b2Jacobian()
      {
         this.§5A§ = new b2Vec2();
         this.§!8§ = new b2Vec2();
         super();
      }
      
      public function §7_§() : void
      {
         this.§5A§.§7_§();
         this.§0K§ = 0;
         this.§!8§.§7_§();
         this.§>!G§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§5A§.SetV(param1);
         this.§0K§ = param2;
         this.§!8§.SetV(param3);
         this.§>!G§ = param4;
      }
      
      public function §5y§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§5A§.x * param1.x + this.§5A§.y * param1.y + this.§0K§ * param2 + (this.§!8§.x * param3.x + this.§!8§.y * param3.y) + this.§>!G§ * param4;
      }
   }
}
