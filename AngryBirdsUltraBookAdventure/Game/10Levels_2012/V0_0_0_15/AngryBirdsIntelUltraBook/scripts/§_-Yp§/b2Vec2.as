package §_-Yp§
{
   public class b2Vec2
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         super();
         if(isNaN(param1) || isNaN(param2))
         {
            throw new Error("b2Vec2: X and Y cannot be NaN.");
         }
         this.x = param1;
         this.y = param2;
      }
      
      public static function §_-Wk§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §_-el§() : void
      {
         this.x = 0;
         this.y = 0;
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         if(isNaN(param1) || isNaN(param2))
         {
            throw new Error("b2Vec2: X and Y cannot be NaN.");
         }
         this.x = param1;
         this.y = param2;
      }
      
      public function SetV(param1:b2Vec2) : void
      {
         this.x = param1.x;
         this.y = param1.y;
      }
      
      public function §_-5M§() : b2Vec2
      {
         return new b2Vec2(-this.x,-this.y);
      }
      
      public function §_-03q§() : void
      {
         this.x = -this.x;
         this.y = -this.y;
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §_-M6§(param1:b2Vec2) : void
      {
         this.x += param1.x;
         this.y += param1.y;
      }
      
      public function §_-w3§(param1:b2Vec2) : void
      {
         this.x -= param1.x;
         this.y -= param1.y;
      }
      
      public function §_-mx§(param1:Number) : void
      {
         this.x *= param1;
         this.y *= param1;
      }
      
      public function §_-VF§(param1:b2Mat22) : void
      {
         var _loc2_:Number = this.x;
         this.x = param1.col1.x * _loc2_ + param1.col2.x * this.y;
         this.y = param1.col1.y * _loc2_ + param1.col2.y * this.y;
      }
      
      public function §_-we§(param1:b2Mat22) : void
      {
         var _loc2_:Number = b2Math.§_-r8§(this,param1.col1);
         this.y = b2Math.§_-r8§(this,param1.col2);
         this.x = _loc2_;
      }
      
      public function §_-bM§(param1:Number) : void
      {
         var _loc2_:Number = this.x;
         this.x = param1 * this.y;
         this.y = -param1 * _loc2_;
      }
      
      public function §_-2t§(param1:Number) : void
      {
         var _loc2_:Number = this.x;
         this.x = -param1 * this.y;
         this.y = param1 * _loc2_;
      }
      
      public function §_-hv§(param1:b2Vec2) : void
      {
         this.x = this.x < param1.x ? Number(this.x) : Number(param1.x);
         this.y = this.y < param1.y ? Number(this.y) : Number(param1.y);
      }
      
      public function §_-Qg§(param1:b2Vec2) : void
      {
         this.x = this.x > param1.x ? Number(this.x) : Number(param1.x);
         this.y = this.y > param1.y ? Number(this.y) : Number(param1.y);
      }
      
      public function §_-010§() : void
      {
         if(this.x < 0)
         {
            this.x = -this.x;
         }
         if(this.y < 0)
         {
            this.y = -this.y;
         }
      }
      
      public function §_-YT§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §_-wN§() : Number
      {
         return this.x * this.x + this.y * this.y;
      }
      
      public function Normalize() : Number
      {
         var _loc1_:Number = Math.sqrt(this.x * this.x + this.y * this.y);
         if(_loc1_ < Number.MIN_VALUE)
         {
            return 0;
         }
         var _loc2_:Number = 1 / _loc1_;
         this.x *= _loc2_;
         this.y *= _loc2_;
         return _loc1_;
      }
      
      public function §_-a8§() : Boolean
      {
         return b2Math.§_-a8§(this.x) && b2Math.§_-a8§(this.y);
      }
   }
}
