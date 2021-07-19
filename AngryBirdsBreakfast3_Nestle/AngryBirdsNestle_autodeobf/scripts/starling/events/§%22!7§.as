package starling.events
{
   import §3!J§.Stage;
   import flash.geom.Point;
   
   public class §"!7§
   {
      
      private static const §%!Z§:Number = 0.3;
      
      private static const §7E§:Number = 25;
      
      private static var §^!@§:Vector.<int> = new Vector.<int>(0);
      
      private static var §-O§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §<!s§:Stage;
      
      private var §&!5§:Number;
      
      private var §-!_§:Number;
      
      private var §&Z§:§>q§;
      
      private var §&e§:Vector.<§4&§>;
      
      private var §3!m§:Vector.<Array>;
      
      private var §9O§:Vector.<§4&§>;
      
      private var §+l§:Boolean = false;
      
      private var §7+§:Boolean = false;
      
      public function §"!7§(param1:Stage)
      {
         super();
         this.§<!s§ = param1;
         this.§-!_§ = 0;
         this.§&!5§ = 0;
         this.§&e§ = new Vector.<§4&§>(0);
         this.§3!m§ = new Vector.<Array>(0);
         this.§9O§ = new Vector.<§4&§>(0);
         this.§<!s§.addEventListener(KeyboardEvent.KEY_DOWN,this.§%!c§);
         this.§<!s§.addEventListener(KeyboardEvent.KEY_UP,this.§%!c§);
      }
      
      public function dispose() : void
      {
         this.§<!s§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§%!c§);
         this.§<!s§.removeEventListener(KeyboardEvent.KEY_UP,this.§%!c§);
         if(this.§&Z§)
         {
            this.§&Z§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§4&§ = null;
         var _loc5_:§4&§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§&!5§ += param1;
         this.§-!_§ = 0;
         if(this.§9O§.length > 0)
         {
            _loc2_ = this.§9O§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&!5§ - this.§9O§[_loc2_].timestamp > §%!Z§)
               {
                  this.§9O§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§3!m§.length > 0)
         {
            §^!@§.length = §-O§.length = 0;
            for each(_loc5_ in this.§&e§)
            {
               if(_loc5_.phase == §,g§.§,!4§ || _loc5_.phase == §,g§.§"=§)
               {
                  _loc5_.§-1§(§,g§.§0W§);
               }
            }
            while(this.§3!m§.length > 0 && §^!@§.indexOf(this.§3!m§[this.§3!m§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§3!m§.pop())[0] as int;
               if((_loc4_ = this.§9!^§(_loc3_)) && _loc4_.phase == §,g§.HOVER && _loc4_.target)
               {
                  §-O§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§;e§.apply(this,_loc7_);
               §^!@§.push(_loc3_);
            }
            for each(_loc6_ in §-O§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§>P§,this.§&e§,this.§+l§,this.§7+§));
               }
            }
            for each(_loc3_ in §^!@§)
            {
               if((_loc4_ = this.§9!^§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§>P§,this.§&e§,this.§+l§,this.§7+§));
               }
            }
            _loc2_ = this.§&e§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&e§[_loc2_].phase == §,g§.§&!]§)
               {
                  this.§&e§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§-!_§ += 0.00001;
         }
      }
      
      public function §"!+§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§3!m§.unshift(arguments);
         if(this.§7+§ && this.§><§ && param1 == 0)
         {
            this.§&Z§.§]!3§(param3,param4,this.§+l§);
            this.§3!m§.unshift([1,param2,this.§&Z§.§@!_§,this.§&Z§.§%a§]);
         }
      }
      
      private function §;e§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§4&§;
         if((_loc6_ = this.§9!^§(param1)) == null)
         {
            _loc6_ = new §4&§(param1,param3,param4,param2,null);
            this.§?T§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§-1§(param2);
         _loc6_.§]y§(this.§&!5§ + this.§-!_§);
         if(param2 == §,g§.HOVER || param2 == §,g§.§,!4§)
         {
            _loc6_.§>"-§(this.§<!s§.hitTest(_loc5_,true));
         }
         if(param2 == §,g§.§,!4§)
         {
            this.§&!H§(_loc6_);
         }
      }
      
      private function §%!c§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§4&§ = null;
         var _loc4_:§4&§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§7+§;
            this.§7+§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§><§ && _loc2_ != this.§7+§)
            {
               this.§&Z§.visible = this.§7+§;
               this.§&Z§.§=]§(this.§<!s§.stageWidth / 2,this.§<!s§.stageHeight / 2);
               _loc3_ = this.§9!^§(0);
               _loc4_ = this.§9!^§(1);
               if(_loc3_)
               {
                  this.§&Z§.§]!3§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §,g§.§&!]§)
               {
                  this.§3!m§.unshift([1,§,g§.§&!]§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§7+§ && _loc3_)
               {
                  if(_loc3_.phase == §,g§.§,!4§ || _loc3_.phase == §,g§.§"=§)
                  {
                     this.§3!m§.unshift([1,§,g§.§,!4§,this.§&Z§.§@!_§,this.§&Z§.§%a§]);
                  }
                  else
                  {
                     this.§3!m§.unshift([1,§,g§.HOVER,this.§&Z§.§@!_§,this.§&Z§.§%a§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§+l§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §&!H§(param1:§4&§) : void
      {
         var _loc4_:§4&§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§4&§ = null;
         var _loc3_:Number = §7E§ * §7E§;
         for each(_loc4_ in this.§9O§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§"!Q§(_loc2_.§ >§ + 1);
            this.§9O§.splice(this.§9O§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§"!Q§(1);
         }
         this.§9O§.push(param1.clone());
      }
      
      private function §?T§(param1:§4&§) : void
      {
         var _loc2_:int = this.§&e§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§&e§[_loc2_].id == param1.id)
            {
               this.§&e§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&e§.push(param1);
      }
      
      private function §9!^§(param1:int) : §4&§
      {
         var _loc2_:§4&§ = null;
         for each(_loc2_ in this.§&e§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §><§() : Boolean
      {
         return this.§&Z§ != null;
      }
      
      public function set §><§(param1:Boolean) : void
      {
         if(this.§><§ == param1)
         {
            return;
         }
      }
   }
}
