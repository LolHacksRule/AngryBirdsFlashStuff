package §_-Zl§
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
      
      public static function §_-BP§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §_-Vw§() : void
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
      
      public function §_-Jt§() : b2Vec2
      {
         return new b2Vec2(-this.x,-this.y);
      }
      
      public function §package§() : void
      {
         this.x = -this.x;
         this.y = -this.y;
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §_-Ec§(param1:b2Vec2) : void
      {
         this.x += param1.x;
         this.y += param1.y;
      }
      
      public function §_-LR§(param1:b2Vec2) : void
      {
         this.x -= param1.x;
         this.y -= param1.y;
      }
      
      public function §_-v8§(param1:Number) : void
      {
         this.x *= param1;
         this.y *= param1;
      }
      
      public function §_-cc§(param1:b2Mat22) : void
      {
         var _loc2_:Number = this.x;
         this.x = param1.col1.x * _loc2_ + param1.col2.x * this.y;
         this.y = param1.col1.y * _loc2_ + param1.col2.y * this.y;
      }
      
      public function §_-6k§(param1:b2Mat22) : void
      {
         var _loc2_:Number = b2Math.§_-Uf§(this,param1.col1);
         this.y = b2Math.§_-Uf§(this,param1.col2);
         this.x = _loc2_;
      }
      
      public function §_-gX§(param1:Number) : void
      {
         var _loc2_:Number = this.x;
         this.x = param1 * this.y;
         this.y = -param1 * _loc2_;
      }
      
      public function §_-17§(param1:Number) : void
      {
         var _loc2_:Number = this.x;
         this.x = -param1 * this.y;
         this.y = param1 * _loc2_;
      }
      
      public function §_-QT§(param1:b2Vec2) : void
      {
         this.x = this.x < param1.x ? Number(this.x) : Number(param1.x);
         this.y = this.y < param1.y ? Number(this.y) : Number(param1.y);
      }
      
      public function §_-Gw§(param1:b2Vec2) : void
      {
         this.x = this.x > param1.x ? Number(this.x) : Number(param1.x);
         this.y = this.y > param1.y ? Number(this.y) : Number(param1.y);
      }
      
      public function §_-Os§() : void
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
      
      public function §_-pM§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §_-QN§() : Number
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
      
      public function §_-iv§() : Boolean
      {
         return b2Math.§_-iv§(this.x) && b2Math.§_-iv§(this.y);
      }
   }
}
