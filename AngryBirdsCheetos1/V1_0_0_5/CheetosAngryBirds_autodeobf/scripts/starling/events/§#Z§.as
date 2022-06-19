package starling.events
{
   import §!!R§.Stage;
   import flash.geom.Point;
   
   public class §#Z§
   {
      
      private static const §9Y§:Number = 0.3;
      
      private static const §'j§:Number = 25;
      
      private static var §3!G§:Vector.<int> = new Vector.<int>(0);
      
      private static var §#!C§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §=v§:Stage;
      
      private var §5! §:Number;
      
      private var §,d§:Number;
      
      private var §@!0§:§^x§;
      
      private var §`s§:Vector.<§4F§>;
      
      private var §[!'§:Vector.<Array>;
      
      private var §`L§:Vector.<§4F§>;
      
      private var §!w§:Boolean = false;
      
      private var §'B§:Boolean = false;
      
      public function §#Z§(param1:Stage)
      {
         super();
         this.§=v§ = param1;
         this.§,d§ = 0;
         this.§5! § = 0;
         this.§`s§ = new Vector.<§4F§>(0);
         this.§[!'§ = new Vector.<Array>(0);
         this.§`L§ = new Vector.<§4F§>(0);
         this.§=v§.addEventListener(KeyboardEvent.KEY_DOWN,this.§?J§);
         this.§=v§.addEventListener(KeyboardEvent.KEY_UP,this.§?J§);
      }
      
      public function dispose() : void
      {
         this.§=v§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§?J§);
         this.§=v§.removeEventListener(KeyboardEvent.KEY_UP,this.§?J§);
         if(this.§@!0§)
         {
            this.§@!0§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§4F§ = null;
         var _loc5_:§4F§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§5! § += param1;
         this.§,d§ = 0;
         if(this.§`L§.length > 0)
         {
            _loc2_ = this.§`L§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§5! § - this.§`L§[_loc2_].timestamp > §9Y§)
               {
                  this.§`L§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§[!'§.length > 0)
         {
            §3!G§.length = §#!C§.length = 0;
            for each(_loc5_ in this.§`s§)
            {
               if(_loc5_.phase == §+G§.§ !G§ || _loc5_.phase == §+G§.§4c§)
               {
                  _loc5_.§+!%§(§+G§.§%X§);
               }
            }
            while(this.§[!'§.length > 0 && §3!G§.indexOf(this.§[!'§[this.§[!'§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§[!'§.pop())[0] as int;
               if((_loc4_ = this.§7r§(_loc3_)) && _loc4_.phase == §+G§.§!q§ && _loc4_.target)
               {
                  §#!C§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§[!G§.apply(this,_loc7_);
               §3!G§.push(_loc3_);
            }
            for each(_loc6_ in §#!C§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§[m§,this.§`s§,this.§!w§,this.§'B§));
               }
            }
            for each(_loc3_ in §3!G§)
            {
               if((_loc4_ = this.§7r§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§[m§,this.§`s§,this.§!w§,this.§'B§));
               }
            }
            _loc2_ = this.§`s§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§`s§[_loc2_].phase == §+G§.§<N§)
               {
                  this.§`s§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§,d§ += 0.00001;
         }
      }
      
      public function §[V§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§[!'§.unshift(arguments);
         if(this.§'B§ && this.§-m§ && param1 == 0)
         {
            this.§@!0§.§#9§(param3,param4,this.§!w§);
            this.§[!'§.unshift([1,param2,this.§@!0§.§<>§,this.§@!0§.§3u§]);
         }
      }
      
      private function §[!G§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§4F§;
         if((_loc6_ = this.§7r§(param1)) == null)
         {
            _loc6_ = new §4F§(param1,param3,param4,param2,null);
            this.§<!3§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§+!%§(param2);
         _loc6_.§;!M§(this.§5! § + this.§,d§);
         if(param2 == §+G§.§!q§ || param2 == §+G§.§ !G§)
         {
            _loc6_.§[v§(this.§=v§.hitTest(_loc5_,true));
         }
         if(param2 == §+G§.§ !G§)
         {
            this.§%!F§(_loc6_);
         }
      }
      
      private function §?J§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§4F§ = null;
         var _loc4_:§4F§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§'B§;
            this.§'B§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§-m§ && _loc2_ != this.§'B§)
            {
               this.§@!0§.visible = this.§'B§;
               this.§@!0§.§`-§(this.§=v§.stageWidth / 2,this.§=v§.stageHeight / 2);
               _loc3_ = this.§7r§(0);
               _loc4_ = this.§7r§(1);
               if(_loc3_)
               {
                  this.§@!0§.§#9§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §+G§.§<N§)
               {
                  this.§[!'§.unshift([1,§+G§.§<N§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§'B§ && _loc3_)
               {
                  if(_loc3_.phase == §+G§.§ !G§ || _loc3_.phase == §+G§.§4c§)
                  {
                     this.§[!'§.unshift([1,§+G§.§ !G§,this.§@!0§.§<>§,this.§@!0§.§3u§]);
                  }
                  else
                  {
                     this.§[!'§.unshift([1,§+G§.§!q§,this.§@!0§.§<>§,this.§@!0§.§3u§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!w§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §%!F§(param1:§4F§) : void
      {
         var _loc4_:§4F§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§4F§ = null;
         var _loc3_:Number = §'j§ * §'j§;
         for each(_loc4_ in this.§`L§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§9m§(_loc2_.§6!Q§ + 1);
            this.§`L§.splice(this.§`L§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§9m§(1);
         }
         this.§`L§.push(param1.clone());
      }
      
      private function §<!3§(param1:§4F§) : void
      {
         var _loc2_:int = this.§`s§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§`s§[_loc2_].id == param1.id)
            {
               this.§`s§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§`s§.push(param1);
      }
      
      private function §7r§(param1:int) : §4F§
      {
         var _loc2_:§4F§ = null;
         for each(_loc2_ in this.§`s§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §-m§() : Boolean
      {
         return this.§@!0§ != null;
      }
      
      public function set §-m§(param1:Boolean) : void
      {
         if(this.§-m§ == param1)
         {
            return;
         }
      }
   }
}
