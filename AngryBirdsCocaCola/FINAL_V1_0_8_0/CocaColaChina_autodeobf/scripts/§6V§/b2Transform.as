package §6V§
{
   public class b2Transform
   {
       
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         this.position = new b2Vec2();
         this.R = new b2Mat22();
         super();
         if(param1)
         {
            this.position.SetV(param1);
            this.R.§?!6§(param2);
         }
      }
      
      public function §2#§(param1:b2Vec2, param2:b2Mat22) : void
      {
         this.position.SetV(param1);
         this.R.§?!6§(param2);
      }
      
      public function §#X§() : void
      {
         this.position.§;@§();
         this.R.§#X§();
      }
      
      public function Set(param1:b2Transform) : void
      {
         this.position.SetV(param1.position);
         this.R.§?!6§(param1.R);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.R.col1.y,this.R.col1.x);
      }
   }
}
