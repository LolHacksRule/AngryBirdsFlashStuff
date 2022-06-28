package starling.events
{
   import §#!,§.Stage;
   import flash.geom.Point;
   
   public class TouchProcessor
   {
      
      private static const §'T§:Number = 0.3;
      
      private static const §+![§:Number = 25;
      
      private static var §8f§:Vector.<int> = new Vector.<int>(0);
      
      private static var §3x§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §[;§:Stage;
      
      private var §"!!§:Number;
      
      private var §#8§:Number;
      
      private var §,!_§:§%!+§;
      
      private var §=!%§:Vector.<§]!B§>;
      
      private var §9D§:Vector.<Array>;
      
      private var §const§:Vector.<§]!B§>;
      
      private var §9g§:Boolean = false;
      
      private var §7!@§:Boolean = false;
      
      public function TouchProcessor(param1:Stage)
      {
         super();
         this.§[;§ = param1;
         this.§#8§ = 0;
         this.§"!!§ = 0;
         this.§=!%§ = new Vector.<§]!B§>(0);
         this.§9D§ = new Vector.<Array>(0);
         this.§const§ = new Vector.<§]!B§>(0);
         this.§[;§.addEventListener(KeyboardEvent.KEY_DOWN,this.§,X§);
         this.§[;§.addEventListener(KeyboardEvent.KEY_UP,this.§,X§);
      }
      
      public function dispose() : void
      {
         this.§[;§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,X§);
         this.§[;§.removeEventListener(KeyboardEvent.KEY_UP,this.§,X§);
         if(this.§,!_§)
         {
            this.§,!_§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§]!B§ = null;
         var _loc5_:§]!B§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§"!!§ += param1;
         this.§#8§ = 0;
         if(this.§const§.length > 0)
         {
            _loc2_ = this.§const§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§"!!§ - this.§const§[_loc2_].timestamp > §'T§)
               {
                  this.§const§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§9D§.length > 0)
         {
            §8f§.length = §3x§.length = 0;
            for each(_loc5_ in this.§=!%§)
            {
               if(_loc5_.phase == §?'§.§%!7§ || _loc5_.phase == §?'§.§2r§)
               {
                  _loc5_.§9!$§(§?'§.§7z§);
               }
            }
            while(this.§9D§.length > 0 && §8f§.indexOf(this.§9D§[this.§9D§.length - 1][0]) == -1)
            {
               _loc7_ = this.§9D§.pop();
               _loc3_ = _loc7_[0] as int;
               _loc4_ = this.§^!0§(_loc3_);
               if(_loc4_ && _loc4_.phase == §?'§.§[!_§ && _loc4_.target)
               {
                  §3x§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§[!>§.apply(this,_loc7_);
               §8f§.push(_loc3_);
            }
            for each(_loc6_ in §3x§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§1!P§,this.§=!%§,this.§9g§,this.§7!@§));
               }
            }
            for each(_loc3_ in §8f§)
            {
               _loc4_ = this.§^!0§(_loc3_);
               if(_loc4_.target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§1!P§,this.§=!%§,this.§9g§,this.§7!@§));
               }
            }
            _loc2_ = this.§=!%§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=!%§[_loc2_].phase == §?'§.§&>§)
               {
                  this.§=!%§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§#8§ += 0.00001;
         }
      }
      
      public function §;k§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§9D§.unshift(arguments);
         if(this.§7!@§ && this.§;!h§ && param1 == 0)
         {
            this.§,!_§.§<!T§(param3,param4,this.§9g§);
            this.§9D§.unshift([1,param2,this.§,!_§.§%!^§,this.§,!_§.§`b§]);
         }
      }
      
      private function §[!>§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§]!B§ = this.§^!0§(param1);
         if(_loc6_ == null)
         {
            _loc6_ = new §]!B§(param1,param3,param4,param2,null);
            this.§>W§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§9!$§(param2);
         _loc6_.§0]§(this.§"!!§ + this.§#8§);
         if(param2 == §?'§.§[!_§ || param2 == §?'§.§%!7§)
         {
            _loc6_.§#s§(this.§[;§.hitTest(_loc5_,true));
         }
         if(param2 == §?'§.§%!7§)
         {
            this.§4x§(_loc6_);
         }
      }
      
      private function §,X§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§]!B§ = null;
         var _loc4_:§]!B§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§7!@§;
            this.§7!@§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§;!h§ && _loc2_ != this.§7!@§)
            {
               this.§,!_§.visible = this.§7!@§;
               this.§,!_§.§;!Z§(this.§[;§.stageWidth / 2,this.§[;§.stageHeight / 2);
               _loc3_ = this.§^!0§(0);
               _loc4_ = this.§^!0§(1);
               if(_loc3_)
               {
                  this.§,!_§.§<!T§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §?'§.§&>§)
               {
                  this.§9D§.unshift([1,§?'§.§&>§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§7!@§ && _loc3_)
               {
                  if(_loc3_.phase == §?'§.§%!7§ || _loc3_.phase == §?'§.§2r§)
                  {
                     this.§9D§.unshift([1,§?'§.§%!7§,this.§,!_§.§%!^§,this.§,!_§.§`b§]);
                  }
                  else
                  {
                     this.§9D§.unshift([1,§?'§.§[!_§,this.§,!_§.§%!^§,this.§,!_§.§`b§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§9g§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §4x§(param1:§]!B§) : void
      {
         var _loc4_:§]!B§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§]!B§ = null;
         var _loc3_:Number = §+![§ * §+![§;
         for each(_loc4_ in this.§const§)
         {
            _loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2);
            if(_loc5_ <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§!!f§(_loc2_.§8!C§ + 1);
            this.§const§.splice(this.§const§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§!!f§(1);
         }
         this.§const§.push(param1.clone());
      }
      
      private function §>W§(param1:§]!B§) : void
      {
         var _loc2_:int = this.§=!%§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§=!%§[_loc2_].id == param1.id)
            {
               this.§=!%§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§=!%§.push(param1);
      }
      
      private function §^!0§(param1:int) : §]!B§
      {
         var _loc2_:§]!B§ = null;
         for each(_loc2_ in this.§=!%§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §;!h§() : Boolean
      {
         return this.§,!_§ != null;
      }
      
      public function set §;!h§(param1:Boolean) : void
      {
         if(this.§;!h§ == param1)
         {
            return;
         }
      }
   }
}
