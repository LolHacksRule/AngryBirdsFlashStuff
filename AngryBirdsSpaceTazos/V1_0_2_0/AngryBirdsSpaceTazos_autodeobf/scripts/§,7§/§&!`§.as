package §,7§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§@!6§;
   import §;"=§.§]"<§;
   import §[,§.§class§;
   
   public class §&!`§ extends §-"@§
   {
       
      
      protected var §^B§:§@!6§;
      
      protected var §,S§:Vector.<§!,§>;
      
      public function §&!`§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:§!,§ = null;
         super(param1,param3,param4);
         this.§^B§ = param4 as §@!6§;
         this.§,S§ = new Vector.<§!,§>();
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = this.§^B§.amount;
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
            _loc18_ = new §!,§(param2.getFrame(_loc17_),param5,param6,param7,this.§^B§,param10);
            this.§,S§.push(_loc18_);
            param1.addChild(_loc18_.§&§);
            param5 += _loc11_;
            param6 += _loc12_;
            _loc14_++;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         if(this.§,S§)
         {
            _loc1_ = this.§,S§.length - 1;
            while(_loc1_ >= 0)
            {
               this.§,S§[_loc1_].dispose();
               _loc1_--;
            }
            this.§,S§ = null;
         }
         super.dispose();
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         var _loc3_:int = 0;
         while(_loc3_ < this.§,S§.length)
         {
            this.§,S§[_loc3_].update(param1);
            _loc3_++;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§,S§.length > 0 && this.§,S§[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
