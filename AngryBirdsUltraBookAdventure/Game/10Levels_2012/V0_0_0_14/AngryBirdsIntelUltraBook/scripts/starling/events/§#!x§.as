package starling.events
{
   import §9E§.Stage;
   import flash.geom.Point;
   
   public class §#!x§
   {
      
      private static const §#T§:Number = 0.3;
      
      private static const §<y§:Number = 25;
      
      private static var §#b§:Vector.<int> = new Vector.<int>(0);
      
      private static var §&!T§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §24§:Stage;
      
      private var §@!w§:Number;
      
      private var §[!7§:Number;
      
      private var §-!§:§]e§;
      
      private var §[!v§:Vector.<§<Q§>;
      
      private var §8!>§:Vector.<Array>;
      
      private var §;9§:Vector.<§<Q§>;
      
      private var §86§:Boolean = false;
      
      private var §6!B§:Boolean = false;
      
      public function §#!x§(param1:Stage)
      {
         super();
         this.§24§ = param1;
         this.§[!7§ = 0;
         this.§@!w§ = 0;
         this.§[!v§ = new Vector.<§<Q§>(0);
         this.§8!>§ = new Vector.<Array>(0);
         this.§;9§ = new Vector.<§<Q§>(0);
         this.§24§.addEventListener(KeyboardEvent.KEY_DOWN,this.§7p§);
         this.§24§.addEventListener(KeyboardEvent.KEY_UP,this.§7p§);
      }
      
      public function dispose() : void
      {
         this.§24§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§7p§);
         this.§24§.removeEventListener(KeyboardEvent.KEY_UP,this.§7p§);
         if(this.§-!§)
         {
            this.§-!§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§<Q§ = null;
         var _loc5_:§<Q§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§@!w§ += param1;
         this.§[!7§ = 0;
         if(this.§;9§.length > 0)
         {
            _loc2_ = this.§;9§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§@!w§ - this.§;9§[_loc2_].timestamp > §#T§)
               {
                  this.§;9§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§8!>§.length > 0)
         {
            §#b§.length = §&!T§.length = 0;
            for each(_loc5_ in this.§[!v§)
            {
               if(_loc5_.phase == §=<§.§4c§ || _loc5_.phase == §=<§.§!!x§)
               {
                  _loc5_.§;B§(§=<§.§![§);
               }
            }
            while(this.§8!>§.length > 0 && §#b§.indexOf(this.§8!>§[this.§8!>§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§8!>§.pop())[0] as int;
               if((_loc4_ = this.§7!h§(_loc3_)) && _loc4_.phase == §=<§.§+!+§ && _loc4_.target)
               {
                  §&!T§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§^!m§.apply(this,_loc7_);
               §#b§.push(_loc3_);
            }
            for each(_loc6_ in §&!T§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§`!t§,this.§[!v§,this.§86§,this.§6!B§));
               }
            }
            for each(_loc3_ in §#b§)
            {
               if((_loc4_ = this.§7!h§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§`!t§,this.§[!v§,this.§86§,this.§6!B§));
               }
            }
            _loc2_ = this.§[!v§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[!v§[_loc2_].phase == §=<§.§<%§)
               {
                  this.§[!v§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§[!7§ += 0.00001;
         }
      }
      
      public function §!4§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§8!>§.unshift(arguments);
         if(this.§6!B§ && this.§`!1§ && param1 == 0)
         {
            this.§-!§.§7!^§(param3,param4,this.§86§);
            this.§8!>§.unshift([1,param2,this.§-!§.§!!n§,this.§-!§.§1C§]);
         }
      }
      
      private function §^!m§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§<Q§;
         if((_loc6_ = this.§7!h§(param1)) == null)
         {
            _loc6_ = new §<Q§(param1,param3,param4,param2,null);
            this.§6!S§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§;B§(param2);
         _loc6_.§+!,§(this.§@!w§ + this.§[!7§);
         if(param2 == §=<§.§+!+§ || param2 == §=<§.§4c§)
         {
            _loc6_.§ 7§(this.§24§.hitTest(_loc5_,true));
         }
         if(param2 == §=<§.§4c§)
         {
            this.§7!H§(_loc6_);
         }
      }
      
      private function §7p§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§<Q§ = null;
         var _loc4_:§<Q§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§6!B§;
            this.§6!B§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§`!1§ && _loc2_ != this.§6!B§)
            {
               this.§-!§.visible = this.§6!B§;
               this.§-!§.§ !A§(this.§24§.stageWidth / 2,this.§24§.stageHeight / 2);
               _loc3_ = this.§7!h§(0);
               _loc4_ = this.§7!h§(1);
               if(_loc3_)
               {
                  this.§-!§.§7!^§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §=<§.§<%§)
               {
                  this.§8!>§.unshift([1,§=<§.§<%§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§6!B§ && _loc3_)
               {
                  if(_loc3_.phase == §=<§.§4c§ || _loc3_.phase == §=<§.§!!x§)
                  {
                     this.§8!>§.unshift([1,§=<§.§4c§,this.§-!§.§!!n§,this.§-!§.§1C§]);
                  }
                  else
                  {
                     this.§8!>§.unshift([1,§=<§.§+!+§,this.§-!§.§!!n§,this.§-!§.§1C§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§86§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §7!H§(param1:§<Q§) : void
      {
         var _loc4_:§<Q§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§<Q§ = null;
         var _loc3_:Number = §<y§ * §<y§;
         for each(_loc4_ in this.§;9§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§7!n§(_loc2_.§6n§ + 1);
            this.§;9§.splice(this.§;9§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§7!n§(1);
         }
         this.§;9§.push(param1.clone());
      }
      
      private function §6!S§(param1:§<Q§) : void
      {
         var _loc2_:int = this.§[!v§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[!v§[_loc2_].id == param1.id)
            {
               this.§[!v§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[!v§.push(param1);
      }
      
      private function §7!h§(param1:int) : §<Q§
      {
         var _loc2_:§<Q§ = null;
         for each(_loc2_ in this.§[!v§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §`!1§() : Boolean
      {
         return this.§-!§ != null;
      }
      
      public function set §`!1§(param1:Boolean) : void
      {
         if(this.§`!1§ == param1)
         {
            return;
         }
      }
   }
}
