package § ! §
{
   import § "%§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §^$ §:b2Vec2;
      
      public var §import§:Number;
      
      public var §=#8§:b2Vec2;
      
      public var §]#p§:Number;
      
      public function b2Jacobian()
      {
         this.§^$ § = new b2Vec2();
         this.§=#8§ = new b2Vec2();
         super();
      }
      
      public function §#!t§() : void
      {
         this.§^$ §.§#!t§();
         this.§import§ = 0;
         this.§=#8§.§#!t§();
         this.§]#p§ = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.§^$ §.SetV(param1);
         this.§import§ = param2;
         this.§=#8§.SetV(param3);
         this.§]#p§ = param4;
      }
      
      public function §7§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.§^$ §.x * param1.x + this.§^$ §.y * param1.y + this.§import§ * param2 + (this.§=#8§.x * param3.x + this.§=#8§.y * param3.y) + this.§]#p§ * param4;
      }
   }
}
