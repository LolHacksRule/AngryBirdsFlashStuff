package §[R§
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         this.col1 = new b2Vec2();
         this.col2 = new b2Vec2();
         super();
         this.col2.y = 1;
         this.col1.x = 1;
      }
      
      public static function § u§(param1:Number) : b2Mat22
      {
         var _loc2_:b2Mat22 = new b2Mat22();
         _loc2_.Set(param1);
         return _loc2_;
      }
      
      public static function §3!G§(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc3_:b2Mat22 = new b2Mat22();
         _loc3_.§2_§(param1,param2);
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         _loc2_ = Math.cos(param1);
         var _loc3_:Number = Math.sin(param1);
         this.col1.x = _loc2_;
         this.col2.x = -_loc3_;
         this.col1.y = _loc3_;
         this.col2.y = _loc2_;
      }
      
      public function §2_§(param1:b2Vec2, param2:b2Vec2) : void
      {
         this.col1.SetV(param1);
         this.col2.SetV(param2);
      }
      
      public function Copy() : b2Mat22
      {
         var _loc1_:b2Mat22 = new b2Mat22();
         _loc1_.§,i§(this);
         return _loc1_;
      }
      
      public function §,i§(param1:b2Mat22) : void
      {
         this.col1.SetV(param1.col1);
         this.col2.SetV(param1.col2);
      }
      
      public function §4u§(param1:b2Mat22) : void
      {
         this.col1.x += param1.col1.x;
         this.col1.y += param1.col1.y;
         this.col2.x += param1.col2.x;
         this.col2.y += param1.col2.y;
      }
      
      public function §<i§() : void
      {
         this.col1.x = 1;
         this.col2.x = 0;
         this.col1.y = 0;
         this.col2.y = 1;
      }
      
      public function §0&§() : void
      {
         this.col1.x = 0;
         this.col2.x = 0;
         this.col1.y = 0;
         this.col2.y = 0;
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function §-!D§(param1:b2Mat22) : b2Mat22
      {
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = this.col1.x;
         _loc3_ = this.col2.x;
         var _loc4_:Number = this.col1.y;
         var _loc5_:Number = this.col2.y;
         if((_loc6_ = _loc2_ * _loc5_ - _loc3_ * _loc4_) != 0)
         {
            _loc6_ = 1 / _loc6_;
         }
         param1.col1.x = _loc6_ * _loc5_;
         param1.col2.x = -_loc6_ * _loc3_;
         param1.col1.y = -_loc6_ * _loc4_;
         param1.col2.y = _loc6_ * _loc2_;
         return param1;
      }
      
      public function §4!Z§(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc4_:Number = this.col1.x;
         var _loc5_:Number = this.col2.x;
         var _loc6_:Number = this.col1.y;
         var _loc7_:Number = this.col2.y;
         var _loc8_:Number;
         if((_loc8_ = _loc4_ * _loc7_ - _loc5_ * _loc6_) != 0)
         {
            _loc8_ = 1 / _loc8_;
         }
         param1.x = _loc8_ * (_loc7_ * param2 - _loc5_ * param3);
         param1.y = _loc8_ * (_loc4_ * param3 - _loc6_ * param2);
         return param1;
      }
      
      public function §,!!§() : void
      {
         this.col1.§,!!§();
         this.col2.§,!!§();
      }
   }
}
