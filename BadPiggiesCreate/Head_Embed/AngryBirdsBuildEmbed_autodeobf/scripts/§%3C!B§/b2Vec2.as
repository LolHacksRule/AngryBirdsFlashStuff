package §<!B§
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
      
      public static function §;!T§(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function §22§() : void
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
      
      public function §[1§() : b2Vec2
      {
         return new b2Vec2(-this.x,-this.y);
      }
      
      public function §-![§() : void
      {
         this.x = -this.x;
         this.y = -this.y;
      }
      
      public function Copy() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function §!a§(param1:b2Vec2) : void
      {
         this.x += param1.x;
         this.y += param1.y;
      }
      
      public function §&!v§(param1:b2Vec2) : void
      {
         this.x -= param1.x;
         this.y -= param1.y;
      }
      
      public function §=!K§(param1:Number) : void
      {
         this.x *= param1;
         this.y *= param1;
      }
      
      public function § '§(param1:b2Mat22) : void
      {
         var _loc2_:Number = this.x;
         this.x = param1.col1.x * _loc2_ + param1.col2.x * this.y;
         this.y = param1.col1.y * _loc2_ + param1.col2.y * this.y;
      }
      
      public function §9!a§(param1:b2Mat22) : void
      {
         var _loc2_:Number = b2Math.§9!;§(this,param1.col1);
         this.y = b2Math.§9!;§(this,param1.col2);
         this.x = _loc2_;
      }
      
      public function §!!r§(param1:Number) : void
      {
         var _loc2_:Number = this.x;
         this.x = param1 * this.y;
         this.y = -param1 * _loc2_;
      }
      
      public function §=!b§(param1:Number) : void
      {
         var _loc2_:Number = this.x;
         this.x = -param1 * this.y;
         this.y = param1 * _loc2_;
      }
      
      public function §6!h§(param1:b2Vec2) : void
      {
         this.x = this.x < param1.x ? Number(this.x) : Number(param1.x);
         this.y = this.y < param1.y ? Number(this.y) : Number(param1.y);
      }
      
      public function §2!O§(param1:b2Vec2) : void
      {
         this.x = this.x > param1.x ? Number(this.x) : Number(param1.x);
         this.y = this.y > param1.y ? Number(this.y) : Number(param1.y);
      }
      
      public function §?!3§() : void
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
      
      public function §#!^§() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function §9^§() : Number
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
      
      public function §@Y§() : Boolean
      {
         return b2Math.§@Y§(this.x) && b2Math.§@Y§(this.y);
      }
   }
}
