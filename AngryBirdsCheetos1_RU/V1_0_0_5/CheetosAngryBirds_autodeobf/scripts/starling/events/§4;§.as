package starling.events
{
   import flash.geom.Point;
   import §null §.Stage;
   
   public class §4;§
   {
      
      private static const §&§:Number = 0.3;
      
      private static const §]D§:Number = 25;
      
      private static var §-!N§:Vector.<int> = new Vector.<int>(0);
      
      private static var §[9§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §%V§:Stage;
      
      private var §=_§:Number;
      
      private var §@!E§:Number;
      
      private var §-!=§:§5!&§;
      
      private var §4!&§:Vector.<§0!^§>;
      
      private var §=!Q§:Vector.<Array>;
      
      private var § try§:Vector.<§0!^§>;
      
      private var § @§:Boolean = false;
      
      private var §,!;§:Boolean = false;
      
      public function §4;§(param1:Stage)
      {
         super();
         this.§%V§ = param1;
         this.§@!E§ = 0;
         this.§=_§ = 0;
         this.§4!&§ = new Vector.<§0!^§>(0);
         this.§=!Q§ = new Vector.<Array>(0);
         this.§ try§ = new Vector.<§0!^§>(0);
         this.§%V§.addEventListener(KeyboardEvent.KEY_DOWN,this.§@!#§);
         this.§%V§.addEventListener(KeyboardEvent.KEY_UP,this.§@!#§);
      }
      
      public function dispose() : void
      {
         this.§%V§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§@!#§);
         this.§%V§.removeEventListener(KeyboardEvent.KEY_UP,this.§@!#§);
         if(this.§-!=§)
         {
            this.§-!=§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§0!^§ = null;
         var _loc5_:§0!^§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§=_§ += param1;
         this.§@!E§ = 0;
         if(this.§ try§.length > 0)
         {
            _loc2_ = this.§ try§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=_§ - this.§ try§[_loc2_].timestamp > §&§)
               {
                  this.§ try§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§=!Q§.length > 0)
         {
            §-!N§.length = §[9§.length = 0;
            for each(_loc5_ in this.§4!&§)
            {
               if(_loc5_.phase == §<n§.§2![§ || _loc5_.phase == §<n§.§#c§)
               {
                  _loc5_.§?5§(§<n§.§+!D§);
               }
            }
            while(this.§=!Q§.length > 0 && §-!N§.indexOf(this.§=!Q§[this.§=!Q§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§=!Q§.pop())[0] as int;
               if((_loc4_ = this.§=!0§(_loc3_)) && _loc4_.phase == §<n§.§ N§ && _loc4_.target)
               {
                  §[9§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§0M§.apply(this,_loc7_);
               §-!N§.push(_loc3_);
            }
            for each(_loc6_ in §[9§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§%w§,this.§4!&§,this.§ @§,this.§,!;§));
               }
            }
            for each(_loc3_ in §-!N§)
            {
               if((_loc4_ = this.§=!0§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§%w§,this.§4!&§,this.§ @§,this.§,!;§));
               }
            }
            _loc2_ = this.§4!&§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4!&§[_loc2_].phase == §<n§.§"Z§)
               {
                  this.§4!&§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§@!E§ += 0.00001;
         }
      }
      
      public function §%u§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§=!Q§.unshift(arguments);
         if(this.§,!;§ && this.§0;§ && param1 == 0)
         {
            this.§-!=§.§4n§(param3,param4,this.§ @§);
            this.§=!Q§.unshift([1,param2,this.§-!=§.§"E§,this.§-!=§.§!u§]);
         }
      }
      
      private function §0M§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§0!^§;
         if((_loc6_ = this.§=!0§(param1)) == null)
         {
            _loc6_ = new §0!^§(param1,param3,param4,param2,null);
            this.§-!"§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§?5§(param2);
         _loc6_.§3_§(this.§=_§ + this.§@!E§);
         if(param2 == §<n§.§ N§ || param2 == §<n§.§2![§)
         {
            _loc6_.§@F§(this.§%V§.hitTest(_loc5_,true));
         }
         if(param2 == §<n§.§2![§)
         {
            this.§-x§(_loc6_);
         }
      }
      
      private function §@!#§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§0!^§ = null;
         var _loc4_:§0!^§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§,!;§;
            this.§,!;§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§0;§ && _loc2_ != this.§,!;§)
            {
               this.§-!=§.visible = this.§,!;§;
               this.§-!=§.§'§(this.§%V§.stageWidth / 2,this.§%V§.stageHeight / 2);
               _loc3_ = this.§=!0§(0);
               _loc4_ = this.§=!0§(1);
               if(_loc3_)
               {
                  this.§-!=§.§4n§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §<n§.§"Z§)
               {
                  this.§=!Q§.unshift([1,§<n§.§"Z§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§,!;§ && _loc3_)
               {
                  if(_loc3_.phase == §<n§.§2![§ || _loc3_.phase == §<n§.§#c§)
                  {
                     this.§=!Q§.unshift([1,§<n§.§2![§,this.§-!=§.§"E§,this.§-!=§.§!u§]);
                  }
                  else
                  {
                     this.§=!Q§.unshift([1,§<n§.§ N§,this.§-!=§.§"E§,this.§-!=§.§!u§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§ @§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §-x§(param1:§0!^§) : void
      {
         var _loc4_:§0!^§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§0!^§ = null;
         var _loc3_:Number = §]D§ * §]D§;
         for each(_loc4_ in this.§ try§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§4-§(_loc2_.§6%§ + 1);
            this.§ try§.splice(this.§ try§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§4-§(1);
         }
         this.§ try§.push(param1.clone());
      }
      
      private function §-!"§(param1:§0!^§) : void
      {
         var _loc2_:int = this.§4!&§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§4!&§[_loc2_].id == param1.id)
            {
               this.§4!&§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§4!&§.push(param1);
      }
      
      private function §=!0§(param1:int) : §0!^§
      {
         var _loc2_:§0!^§ = null;
         for each(_loc2_ in this.§4!&§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §0;§() : Boolean
      {
         return this.§-!=§ != null;
      }
      
      public function set §0;§(param1:Boolean) : void
      {
         if(this.§0;§ == param1)
         {
            return;
         }
      }
   }
}
