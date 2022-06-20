package §^$1§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§?"B§;
   import §>!5§.§-!S§;
   
   public class §>;§ extends §!!O§
   {
       
      
      protected var §9A§:§?"B§;
      
      protected var §]Q§:Vector.<§[F§>;
      
      public function §>;§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc15_:Number = NaN;
         var _loc16_:Array = null;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:§[F§ = null;
         super(param1,param3,param4);
         this.§9A§ = param4 as §?"B§;
         this.§]Q§ = new Vector.<§[F§>();
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = this.§9A§.particleAmount > -1 ? int(this.§9A§.particleAmount) : int(this.§9A§.amount);
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
            _loc16_ = new Array();
            if(this.§9A§.animation == "lifeTime")
            {
               _loc17_ = 0;
               while(_loc17_ < param2.frameCount)
               {
                  _loc16_.push(param2.getFrame(_loc17_));
                  _loc17_++;
               }
            }
            else
            {
               _loc18_ = Math.floor(param2.frameCount * Math.random());
               _loc16_.push(param2.getFrame(_loc18_));
            }
            if(_loc16_.length > 0 && _loc16_[0] != null)
            {
               _loc19_ = new §[F§(param1,_loc16_,param5,param6,param7,this.§9A§,param10);
               this.§]Q§.push(_loc19_);
               param1.addChild(_loc19_.displayObject);
               param5 += _loc11_;
               param6 += _loc12_;
            }
            _loc14_++;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         var _loc2_:int = 0;
         if(this.§]Q§)
         {
            _loc2_ = this.§]Q§.length - 1;
            while(_loc2_ >= 0)
            {
               this.§]Q§[_loc2_].dispose();
               _loc2_--;
            }
            this.§]Q§ = null;
         }
         super.dispose(param1);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         var _loc3_:int = 0;
         while(_loc3_ < this.§]Q§.length)
         {
            this.§]Q§[_loc3_].update(param1);
            _loc3_++;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§]Q§.length > 0 && this.§]Q§[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
