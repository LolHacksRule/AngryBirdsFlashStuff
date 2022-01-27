package §2!`§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §6"R§.§""M§;
   import §>P§.§=!,§;
   import §>P§.§?L§;
   
   public class §-!L§ extends §""j§
   {
       
      
      protected var § !4§:§?L§;
      
      protected var §7#7§:Vector.<§@"V§>;
      
      public function §-!L§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:§@"V§ = null;
         super(param1,param3,param4);
         this.§ !4§ = param4 as §?L§;
         this.§7#7§ = new Vector.<§@"V§>();
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = this.§ !4§.amount;
         if((param8 > 0 || param9 > 0) && _loc13_ > 1)
         {
            if((_loc15_ = param8 * param9 / 20) < 1)
            {
               if((_loc13_ *= _loc15_) < 2)
               {
                  _loc13_ = 2;
               }
            }
            _loc16_ = param8 / 2;
            if(param8 < param9)
            {
               _loc16_ = param9 / 2;
               param7 += Math.PI / 2;
            }
            _loc16_ *= _loc13_ / (_loc13_ + 1);
            param5 -= Math.cos(param7) * _loc16_;
            param6 -= Math.sin(param7) * _loc16_;
            _loc11_ = Math.cos(param7) * _loc16_ * 2 / _loc13_;
            _loc12_ = Math.sin(param7) * _loc16_ * 2 / _loc13_;
         }
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            _loc17_ = Math.floor(param2.frameCount * Math.random());
            _loc18_ = new §@"V§(param2.getFrame(_loc17_),param5,param6,param7,this.§ !4§,param10);
            this.§7#7§.push(_loc18_);
            param1.addChild(_loc18_.§^1§);
            param5 += _loc11_;
            param6 += _loc12_;
            _loc14_++;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         if(this.§7#7§)
         {
            _loc1_ = this.§7#7§.length - 1;
            while(_loc1_ >= 0)
            {
               this.§7#7§[_loc1_].dispose();
               _loc1_--;
            }
            this.§7#7§ = null;
         }
         super.dispose();
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         var _loc3_:int = 0;
         while(_loc3_ < this.§7#7§.length)
         {
            this.§7#7§[_loc3_].update(param1);
            _loc3_++;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§7#7§.length > 0 && this.§7#7§[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
