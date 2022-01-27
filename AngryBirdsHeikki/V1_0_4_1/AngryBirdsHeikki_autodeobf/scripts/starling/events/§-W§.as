package starling.events
{
   import §<!-§.Stage;
   import flash.geom.Point;
   
   public class §-W§
   {
      
      private static const §"7§:Number = 0.3;
      
      private static const §;T§:Number = 25;
      
      private static var §9j§:Vector.<int> = new Vector.<int>(0);
      
      private static var §>!V§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §>>§:Stage;
      
      private var §=§:Number;
      
      private var §4s§:Number;
      
      private var §+!%§:§"k§;
      
      private var §&w§:Vector.<§9!;§>;
      
      private var §8i§:Vector.<Array>;
      
      private var §7!_§:Vector.<§9!;§>;
      
      private var §@X§:Boolean = false;
      
      private var §,!0§:Boolean = false;
      
      public function §-W§(param1:Stage)
      {
         super();
         this.§>>§ = param1;
         this.§4s§ = 0;
         this.§=§ = 0;
         this.§&w§ = new Vector.<§9!;§>(0);
         this.§8i§ = new Vector.<Array>(0);
         this.§7!_§ = new Vector.<§9!;§>(0);
         this.§>>§.addEventListener(KeyboardEvent.KEY_DOWN,this.§3!B§);
         this.§>>§.addEventListener(KeyboardEvent.KEY_UP,this.§3!B§);
      }
      
      public function dispose() : void
      {
         this.§>>§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§3!B§);
         this.§>>§.removeEventListener(KeyboardEvent.KEY_UP,this.§3!B§);
         if(this.§+!%§)
         {
            this.§+!%§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§9!;§ = null;
         var _loc5_:§9!;§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§=§ += param1;
         this.§4s§ = 0;
         if(this.§7!_§.length > 0)
         {
            _loc2_ = this.§7!_§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=§ - this.§7!_§[_loc2_].timestamp > §"7§)
               {
                  this.§7!_§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§8i§.length > 0)
         {
            §9j§.length = §>!V§.length = 0;
            for each(_loc5_ in this.§&w§)
            {
               if(_loc5_.phase == set.§!n§ || _loc5_.phase == set.§#!2§)
               {
                  _loc5_.§#!,§(set.§14§);
               }
            }
            while(this.§8i§.length > 0 && §9j§.indexOf(this.§8i§[this.§8i§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§8i§.pop())[0] as int;
               if((_loc4_ = this.§%s§(_loc3_)) && _loc4_.phase == set.§2!A§ && _loc4_.target)
               {
                  §>!V§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§+!E§.apply(this,_loc7_);
               §9j§.push(_loc3_);
            }
            for each(_loc6_ in §>!V§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§^! §,this.§&w§,this.§@X§,this.§,!0§));
               }
            }
            for each(_loc3_ in §9j§)
            {
               if((_loc4_ = this.§%s§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§^! §,this.§&w§,this.§@X§,this.§,!0§));
               }
            }
            _loc2_ = this.§&w§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&w§[_loc2_].phase == set.§!!]§)
               {
                  this.§&w§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§4s§ += 0.00001;
         }
      }
      
      public function § 1§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§8i§.unshift(arguments);
         if(this.§,!0§ && this.simulateMultitouch && param1 == 0)
         {
            this.§+!%§.§`!;§(param3,param4,this.§@X§);
            this.§8i§.unshift([1,param2,this.§+!%§.§;!,§,this.§+!%§.§&!+§]);
         }
      }
      
      private function §+!E§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§9!;§;
         if((_loc6_ = this.§%s§(param1)) == null)
         {
            _loc6_ = new §9!;§(param1,param3,param4,param2,null);
            this.§3a§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§#!,§(param2);
         _loc6_.§0K§(this.§=§ + this.§4s§);
         if(param2 == set.§2!A§ || param2 == set.§!n§)
         {
            _loc6_.§<!P§(this.§>>§.hitTest(_loc5_,true));
         }
         if(param2 == set.§!n§)
         {
            this.§+,§(_loc6_);
         }
      }
      
      private function §3!B§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§9!;§ = null;
         var _loc4_:§9!;§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§,!0§;
            this.§,!0§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§,!0§)
            {
               this.§+!%§.visible = this.§,!0§;
               this.§+!%§.§5!I§(this.§>>§.stageWidth / 2,this.§>>§.stageHeight / 2);
               _loc3_ = this.§%s§(0);
               _loc4_ = this.§%s§(1);
               if(_loc3_)
               {
                  this.§+!%§.§`!;§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != set.§!!]§)
               {
                  this.§8i§.unshift([1,set.§!!]§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§,!0§ && _loc3_)
               {
                  if(_loc3_.phase == set.§!n§ || _loc3_.phase == set.§#!2§)
                  {
                     this.§8i§.unshift([1,set.§!n§,this.§+!%§.§;!,§,this.§+!%§.§&!+§]);
                  }
                  else
                  {
                     this.§8i§.unshift([1,set.§2!A§,this.§+!%§.§;!,§,this.§+!%§.§&!+§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§@X§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §+,§(param1:§9!;§) : void
      {
         var _loc4_:§9!;§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§9!;§ = null;
         var _loc3_:Number = §;T§ * §;T§;
         for each(_loc4_ in this.§7!_§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§26§(_loc2_.§=!J§ + 1);
            this.§7!_§.splice(this.§7!_§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§26§(1);
         }
         this.§7!_§.push(param1.clone());
      }
      
      private function §3a§(param1:§9!;§) : void
      {
         var _loc2_:int = this.§&w§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§&w§[_loc2_].id == param1.id)
            {
               this.§&w§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&w§.push(param1);
      }
      
      private function §%s§(param1:int) : §9!;§
      {
         var _loc2_:§9!;§ = null;
         for each(_loc2_ in this.§&w§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§+!%§ != null;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         if(this.simulateMultitouch == param1)
         {
            return;
         }
      }
   }
}
