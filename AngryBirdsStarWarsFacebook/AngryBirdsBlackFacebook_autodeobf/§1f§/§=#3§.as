package §1f§
{
   import §,!,§.§0!d§;
   import §,!,§.§4§;
   import §1"a§.§^#G§;
   import flash.events.Event;
   
   public class §=#3§ extends §4#9§
   {
       
      
      public function §=#3§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§^#G§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§0!d§ = null;
         var _loc1_:int = §!#S§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §!#S§[_loc1_] as §^#G§;
            _loc2_.y = getPositionFromIndex(_loc2_.index + (_loc2_.data.offset || 0));
            if(_loc2_.y >= §-[§ || _loc2_.y <= -§'D§)
            {
               §%G§.removeChild(_loc2_);
               §!#S§.splice(§!#S§.indexOf(_loc2_),1);
               §<"j§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §%4§.length)
         {
            _loc3_ = getPositionFromIndex(_loc1_ + (§%4§[_loc1_].offset || 0));
            if(_loc3_ > -§'D§ && _loc3_ < §-[§ && !§'!_§(_loc1_))
            {
               _loc4_ = §`m§();
               §%G§.addChild(_loc4_);
               _loc4_.data = §%4§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §!#S§.push(_loc4_);
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
         if(§[y§ != §?"j§)
         {
            super.onEnterFrame(param1);
         }
         else if(_loc2_)
         {
            this.updatePositions();
         }
      }
      
      public function get itemRenderers() : Vector.<§0!d§>
      {
         return §!#S§;
      }
   }
}
