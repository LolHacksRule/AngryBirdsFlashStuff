package §7"p§
{
   import §'G§.§;D§;
   import §6!3§.§8$B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §?$<§.§[S§;
   import §@!S§.b2World;
   
   public class §]!`§ extends §[!f§
   {
       
      
      protected var §4<§:§[S§;
      
      protected var §^U§:Vector.<§=![§>;
      
      public function §]!`§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc15_:Number = NaN;
         var _loc16_:Array = null;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:§=![§ = null;
         super(param1,param3,param4);
         this.§4<§ = param4 as §[S§;
         this.§^U§ = new Vector.<§=![§>();
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = this.§4<§.particleAmount > -1 ? int(this.§4<§.particleAmount) : int(this.§4<§.amount);
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
            if(this.§4<§.animation == "lifeTime")
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
               _loc19_ = new §=![§(param1,_loc16_,param5,param6,param7,this.§4<§,param10);
               this.§^U§.push(_loc19_);
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
         if(this.§^U§)
         {
            _loc2_ = this.§^U§.length - 1;
            while(_loc2_ >= 0)
            {
               this.§^U§[_loc2_].dispose();
               _loc2_--;
            }
            this.§^U§ = null;
         }
         super.dispose(param1);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         var _loc3_:int = 0;
         while(_loc3_ < this.§^U§.length)
         {
            this.§^U§[_loc3_].update(param1);
            _loc3_++;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§^U§.length > 0 && this.§^U§[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
