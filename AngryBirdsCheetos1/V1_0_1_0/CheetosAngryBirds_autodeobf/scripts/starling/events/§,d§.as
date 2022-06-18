package starling.events
{
   import §`a§.Stage;
   import flash.geom.Point;
   
   public class §,d§
   {
      
      private static const §'j§:Number = 0.3;
      
      private static const §3!G§:Number = 25;
      
      private static var §#!C§:Vector.<int> = new Vector.<int>(0);
      
      private static var §6H§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §-?§:Stage;
      
      private var §<y§:Number;
      
      private var §@!0§:Number;
      
      private var §`s§:§5!,§;
      
      private var §[!'§:Vector.<§"!D§>;
      
      private var §`L§:Vector.<Array>;
      
      private var §!w§:Vector.<§"!D§>;
      
      private var §'B§:Boolean = false;
      
      private var §[V§:Boolean = false;
      
      public function §,d§(param1:Stage)
      {
         super();
         this.§-?§ = param1;
         this.§@!0§ = 0;
         this.§<y§ = 0;
         this.§[!'§ = new Vector.<§"!D§>(0);
         this.§`L§ = new Vector.<Array>(0);
         this.§!w§ = new Vector.<§"!D§>(0);
         this.§-?§.addEventListener(KeyboardEvent.KEY_DOWN,this.§>-§);
         this.§-?§.addEventListener(KeyboardEvent.KEY_UP,this.§>-§);
      }
      
      public function dispose() : void
      {
         this.§-?§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§>-§);
         this.§-?§.removeEventListener(KeyboardEvent.KEY_UP,this.§>-§);
         if(this.§`s§)
         {
            this.§`s§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§"!D§ = null;
         var _loc5_:§"!D§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§<y§ += param1;
         this.§@!0§ = 0;
         if(this.§!w§.length > 0)
         {
            _loc2_ = this.§!w§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§<y§ - this.§!w§[_loc2_].timestamp > §'j§)
               {
                  this.§!w§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§`L§.length > 0)
         {
            §#!C§.length = §6H§.length = 0;
            for each(_loc5_ in this.§[!'§)
            {
               if(_loc5_.phase == §!q§.§4c§ || _loc5_.phase == §!q§.§%X§)
               {
                  _loc5_.§9m§(§!q§.§<N§);
               }
            }
            while(this.§`L§.length > 0 && §#!C§.indexOf(this.§`L§[this.§`L§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§`L§.pop())[0] as int;
               if((_loc4_ = this.§9Y§(_loc3_)) && _loc4_.phase == §!q§.§ !G§ && _loc4_.target)
               {
                  §6H§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§%!F§.apply(this,_loc7_);
               §#!C§.push(_loc3_);
            }
            for each(_loc6_ in §6H§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§4F§,this.§[!'§,this.§'B§,this.§[V§));
               }
            }
            for each(_loc3_ in §#!C§)
            {
               if((_loc4_ = this.§9Y§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§4F§,this.§[!'§,this.§'B§,this.§[V§));
               }
            }
            _loc2_ = this.§[!'§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[!'§[_loc2_].phase == §!q§.§#Z§)
               {
                  this.§[!'§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§@!0§ += 0.00001;
         }
      }
      
      public function §[!G§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§`L§.unshift(arguments);
         if(this.§[V§ && this.§4m§ && param1 == 0)
         {
            this.§`s§.§`-§(param3,param4,this.§'B§);
            this.§`L§.unshift([1,param2,this.§`s§.§3u§,this.§`s§.§]o§]);
         }
      }
      
      private function §%!F§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§"!D§;
         if((_loc6_ = this.§9Y§(param1)) == null)
         {
            _loc6_ = new §"!D§(param1,param3,param4,param2,null);
            this.§7r§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§9m§(param2);
         _loc6_.§9]§(this.§<y§ + this.§@!0§);
         if(param2 == §!q§.§ !G§ || param2 == §!q§.§4c§)
         {
            _loc6_.§%!;§(this.§-?§.hitTest(_loc5_,true));
         }
         if(param2 == §!q§.§4c§)
         {
            this.§<!3§(_loc6_);
         }
      }
      
      private function §>-§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§"!D§ = null;
         var _loc4_:§"!D§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§[V§;
            this.§[V§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§4m§ && _loc2_ != this.§[V§)
            {
               this.§`s§.visible = this.§[V§;
               this.§`s§.§8y§(this.§-?§.stageWidth / 2,this.§-?§.stageHeight / 2);
               _loc3_ = this.§9Y§(0);
               _loc4_ = this.§9Y§(1);
               if(_loc3_)
               {
                  this.§`s§.§`-§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §!q§.§#Z§)
               {
                  this.§`L§.unshift([1,§!q§.§#Z§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§[V§ && _loc3_)
               {
                  if(_loc3_.phase == §!q§.§4c§ || _loc3_.phase == §!q§.§%X§)
                  {
                     this.§`L§.unshift([1,§!q§.§4c§,this.§`s§.§3u§,this.§`s§.§]o§]);
                  }
                  else
                  {
                     this.§`L§.unshift([1,§!q§.§ !G§,this.§`s§.§3u§,this.§`s§.§]o§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§'B§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §<!3§(param1:§"!D§) : void
      {
         var _loc4_:§"!D§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§"!D§ = null;
         var _loc3_:Number = §3!G§ * §3!G§;
         for each(_loc4_ in this.§!w§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§;!M§(_loc2_.§+!%§ + 1);
            this.§!w§.splice(this.§!w§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§;!M§(1);
         }
         this.§!w§.push(param1.clone());
      }
      
      private function §7r§(param1:§"!D§) : void
      {
         var _loc2_:int = this.§[!'§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[!'§[_loc2_].id == param1.id)
            {
               this.§[!'§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[!'§.push(param1);
      }
      
      private function §9Y§(param1:int) : §"!D§
      {
         var _loc2_:§"!D§ = null;
         for each(_loc2_ in this.§[!'§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §4m§() : Boolean
      {
         return this.§`s§ != null;
      }
      
      public function set §4m§(param1:Boolean) : void
      {
         if(this.§4m§ == param1)
         {
            return;
         }
      }
   }
}
