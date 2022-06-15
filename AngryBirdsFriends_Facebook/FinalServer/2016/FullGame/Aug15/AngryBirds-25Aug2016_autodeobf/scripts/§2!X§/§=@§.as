package §2!X§
{
   import flash.events.Event;
   
   public class §=@§ extends §%"`§
   {
       
      
      public function §=@§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function updatePositions() : void
      {
         var _loc2_:§6#V§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§3?§ = null;
         var _loc1_:int = §+##§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §+##§[_loc1_] as §6#V§;
            _loc2_.x = getPositionFromIndex(_loc2_.index + (_loc2_.data.offset || 0));
            if(_loc2_.x >= §3#l§ || _loc2_.x <= -§1#G§)
            {
               §]Y§.removeChild(_loc2_);
               §+##§.splice(§+##§.indexOf(_loc2_),1);
               §4;§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §+!&§.length)
         {
            _loc3_ = getPositionFromIndex(_loc1_ + (§+!&§[_loc1_].offset || 0));
            if(_loc3_ > -§1#G§ && _loc3_ < §3#l§ && !§27§(_loc1_))
            {
               _loc4_ = §5=§();
               §]Y§.addChild(_loc4_);
               _loc4_.data = §+!&§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               §+##§.push(_loc4_);
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
         if(§&"_§ != §!"1§)
         {
            super.onEnterFrame(param1);
         }
         else if(_loc2_)
         {
            this.updatePositions();
         }
      }
      
      public function get §!"8§() : Vector.<§3?§>
      {
         return §+##§;
      }
   }
}
