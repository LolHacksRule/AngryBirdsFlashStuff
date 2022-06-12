package §=!7§
{
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §[#a§.§7!O§;
   import §`#C§.§-$'§;
   import §`#C§.§8K§;
   
   public class §1"'§ extends §@#f§
   {
       
      
      protected var §?";§:§-$'§;
      
      protected var §%"b§:Vector.<§&!s§>;
      
      public function §1"'§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc15_:Number = NaN;
         var _loc16_:int = 0;
         var _loc18_:§&!s§ = null;
         super(param1,param3,param4);
         this.§?";§ = param4 as §-$'§;
         this.§%"b§ = new Vector.<§&!s§>();
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = this.§?";§.amount;
         if((param8 > 0 || param9 > 0) && _loc13_ > 1)
         {
            _loc15_ = param8 / 2;
            if(param8 < param9)
            {
               _loc15_ = param9 / 2;
               param7 += Math.PI / 2;
            }
            _loc15_ *= _loc13_ / (_loc13_ + 1);
            param5 -= Math.cos(param7) * _loc15_;
            param6 -= Math.sin(param7) * _loc15_;
            _loc11_ = Math.cos(param7) * _loc15_ * 2 / _loc13_;
            _loc12_ = Math.sin(param7) * _loc15_ * 2 / _loc13_;
         }
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            _loc16_ = Math.floor(param2.frameCount * Math.random());
            if(param2.getFrame(_loc16_))
            {
               _loc18_ = new §&!s§(param2.getFrame(_loc16_),param5,param6,param7,this.§?";§,param10);
               this.§%"b§.push(_loc18_);
               param1.addChild(_loc18_.displayObject);
               param5 += _loc11_;
               param6 += _loc12_;
            }
            _loc14_++;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         var _loc2_:int = 0;
         if(this.§%"b§)
         {
            _loc2_ = this.§%"b§.length - 1;
            while(_loc2_ >= 0)
            {
               this.§%"b§[_loc2_].dispose();
               _loc2_--;
            }
            this.§%"b§ = null;
         }
         super.dispose(param1);
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         var _loc3_:int = 0;
         while(_loc3_ < this.§%"b§.length)
         {
            this.§%"b§[_loc3_].update(param1);
            _loc3_++;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§%"b§.length > 0 && this.§%"b§[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
