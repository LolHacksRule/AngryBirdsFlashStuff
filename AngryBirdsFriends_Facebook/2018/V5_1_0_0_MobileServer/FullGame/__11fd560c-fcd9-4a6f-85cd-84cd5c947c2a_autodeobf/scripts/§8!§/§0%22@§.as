package §8!§
{
   import flash.events.Event;
   
   public class §0"@§ extends §`#P§
   {
       
      
      public function §0"@§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updatePositions() : void
      {
         var _loc2_:§2"s§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§;+§ = null;
         var _loc1_:int = §2"k§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §2"k§[_loc1_] as §2"s§;
            _loc2_.x = getPositionFromIndex(_loc2_.index + (_loc2_.data.offset || 0));
            if(_loc2_.x >= §5"S§ || _loc2_.x <= -§"$>§)
            {
               §4"D§.removeChild(_loc2_);
               §2"k§.splice(§2"k§.indexOf(_loc2_),1);
               §`"4§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §["[§.length)
         {
            _loc3_ = getPositionFromIndex(_loc1_ + (§["[§[_loc1_].offset || 0));
            if(_loc3_ > -§"$>§ && _loc3_ < §5"S§ && !§6"$§(_loc1_))
            {
               _loc4_ = §>"u§();
               §4"D§.addChild(_loc4_);
               _loc4_.data = §["[§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               §2"k§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      override protected function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = false;
         for each(_loc3_ in data)
         {
            if(_loc3_.offset != _loc3_.targetOffset)
            {
               if(_loc3_.offset == undefined)
               {
                  _loc3_.offset = 0;
               }
               if(_loc3_.targetOffset == undefined)
               {
                  _loc3_.targetOffset = 0;
               }
               if((_loc4_ = (_loc3_.targetOffset - _loc3_.offset) / 8) > 0 && _loc4_ < 0.01)
               {
                  _loc3_.offset = _loc3_.targetOffset;
               }
               else
               {
                  _loc3_.offset += _loc4_;
               }
               _loc2_ = true;
            }
         }
         if(§`!M§ != §9"7§)
         {
            super.onEnterFrame(param1);
         }
         else if(_loc2_)
         {
            this.updatePositions();
         }
      }
      
      public function get §0#Q§() : Vector.<§;+§>
      {
         return §2"k§;
      }
   }
}
