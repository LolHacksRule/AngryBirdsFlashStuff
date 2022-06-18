package §9+§
{
   import §&!v§.Stage;
   import §1P§.§&#V§;
   import §1P§.§-§;
   import §1P§.KeyboardEvent;
   import §1P§.TouchEvent;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   
   class §!#D§
   {
      
      private static const §-"x§:Number = 0.3;
      
      private static const §2#6§:Number = 25;
      
      private static var §^#9§:Vector.<int> = new Vector.<int>(0);
      
      private static var §6$$§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §^!8§:Stage;
      
      private var §!C§:Number;
      
      private var §3#H§:§+"8§;
      
      private var §7!w§:Vector.<§&#V§>;
      
      private var §!d§:Vector.<Array>;
      
      private var §+!u§:Vector.<§&#V§>;
      
      private var §%#0§:Boolean = false;
      
      private var §;#=§:Boolean = false;
      
      private var §>#h§:Number = NaN;
      
      function §!#D§(param1:Stage)
      {
         super();
         this.§^!8§ = param1;
         this.§!C§ = 0;
         this.§7!w§ = new Vector.<§&#V§>(0);
         this.§!d§ = new Vector.<Array>(0);
         this.§+!u§ = new Vector.<§&#V§>(0);
         this.§^!8§.addEventListener(KeyboardEvent.KEY_DOWN,this.§&#[§);
         this.§^!8§.addEventListener(KeyboardEvent.KEY_UP,this.§&#[§);
         this.§;"R§(true);
      }
      
      public function dispose() : void
      {
         this.§;"R§(false);
         this.§^!8§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&#[§);
         this.§^!8§.removeEventListener(KeyboardEvent.KEY_UP,this.§&#[§);
         if(this.§3#H§)
         {
            this.§3#H§.dispose();
         }
      }
      
      public function set §"!x§(param1:Number) : void
      {
         this.§>#h§ = param1 / 1000;
      }
      
      public function §2!X§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§&#V§ = null;
         var _loc5_:TouchEvent = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§!C§ += param1;
         if(this.§+!u§.length > 0)
         {
            _loc2_ = this.§+!u§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§!C§ - this.§+!u§[_loc2_].timestamp > §-"x§)
               {
                  this.§+!u§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         do
         {
            §^#9§.length = §6$$§.length = 0;
            for each(_loc4_ in this.§7!w§)
            {
               if(_loc4_.phase == §-§.§?#S§ || _loc4_.phase == §-§.§9$!§)
               {
                  _loc4_.§1"`§(§-§.§2V§);
               }
            }
            while(this.§!d§.length > 0 && §^#9§.indexOf(this.§!d§[this.§!d§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§!d§.pop())[0] as int;
               if((_loc4_ = this.§[Y§(_loc3_)) && _loc4_.phase == §-§.§""R§ && _loc4_.target)
               {
                  §6$$§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target,
                     "bubbleChain":_loc4_.bubbleChain
                  });
               }
               this.§;#f§.apply(this,_loc7_);
               §^#9§.push(_loc3_);
            }
            for each(_loc4_ in this.§7!w§)
            {
               if(_loc4_.phase == §-§.§2V§)
               {
                  _loc4_.§1#C§(this.§!C§);
                  if(!isNaN(this.§>#h§) && this.§7!w§.length > 1)
                  {
                     if(this.§!C§ > _loc4_.§0#y§ + this.§>#h§)
                     {
                        _loc4_.§1"`§(§-§.§&#d§);
                     }
                  }
                  if(§^#9§.indexOf(_loc4_.id) < 0)
                  {
                     §^#9§.push(_loc4_.id);
                  }
               }
            }
            _loc5_ = new TouchEvent(TouchEvent.§6f§,this.§7!w§,this.§%#0§,this.§;#=§);
            for each(_loc6_ in §6$$§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc5_.§+!p§(_loc6_.bubbleChain);
               }
            }
            for each(_loc3_ in §^#9§)
            {
               this.§[Y§(_loc3_).dispatchEvent(_loc5_);
            }
            _loc2_ = this.§7!w§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7!w§[_loc2_].phase == §-§.§&#d§)
               {
                  this.§7!w§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§!d§.length > 0);
         
      }
      
      public function §4!k§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         this.§!d§.unshift(arguments);
         if(this.§;#=§ && this.§3!>§ && param1 == 0)
         {
            this.§3#H§.§<d§(param3,param4,this.§%#0§);
            this.§!d§.unshift([1,param2,this.§3#H§.§0#M§,this.§3#H§.§6#P§]);
         }
      }
      
      public function §]!3§() : void
      {
         var _loc1_:§&#V§ = this.§[Y§(0);
         if(_loc1_ == null || _loc1_.phase != §-§.§""R§)
         {
            return;
         }
         var _loc3_:Number = _loc1_.globalX;
         var _loc4_:Number = _loc1_.globalY;
         var _loc5_:Number = _loc1_.globalX;
         var _loc6_:Number = this.§^!8§.stageWidth - _loc5_;
         var _loc7_:Number = _loc1_.globalY;
         var _loc8_:Number = this.§^!8§.stageHeight - _loc7_;
         var _loc9_:Number;
         if((_loc9_ = Math.min(_loc5_,_loc6_,_loc7_,_loc8_)) == _loc5_)
         {
            _loc3_ = -1;
         }
         else if(_loc9_ == _loc6_)
         {
            _loc3_ = this.§^!8§.stageWidth + 1;
         }
         else if(_loc9_ == _loc7_)
         {
            _loc4_ = -1;
         }
         else
         {
            _loc4_ = this.§^!8§.stageHeight + 1;
         }
         this.§4!k§(0,§-§.§""R§,_loc3_,_loc4_);
      }
      
      private function §;#f§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         var _loc8_:Point = new Point(param3,param4);
         var _loc9_:§&#V§;
         if((_loc9_ = this.§[Y§(param1)) == null)
         {
            _loc9_ = new §&#V§(param1,param3,param4,param2,null);
            this.§"!q§(_loc9_);
         }
         _loc9_.setPosition(param3,param4);
         _loc9_.§1"`§(param2);
         _loc9_.§1#C§(this.§!C§);
         _loc9_.§?i§(param5);
         _loc9_.setSize(param6,param7);
         if(param2 == §-§.§""R§ || param2 == §-§.§?#S§)
         {
            _loc9_.§"0§(this.§^!8§.hitTest(_loc8_,true));
         }
         if(param2 == §-§.§?#S§)
         {
            this.§4!T§(_loc9_);
         }
      }
      
      private function §&#[§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§&#V§ = null;
         var _loc4_:§&#V§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§;#=§;
            this.§;#=§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§3!>§ && _loc2_ != this.§;#=§)
            {
               this.§3#H§.visible = this.§;#=§;
               this.§3#H§.§4$6§(this.§^!8§.stageWidth / 2,this.§^!8§.stageHeight / 2);
               _loc3_ = this.§[Y§(0);
               _loc4_ = this.§[Y§(1);
               if(_loc3_)
               {
                  this.§3#H§.§<d§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §-§.§&#d§)
               {
                  this.§!d§.unshift([1,§-§.§&#d§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§;#=§ && _loc3_)
               {
                  if(_loc3_.phase == §-§.§""R§ || _loc3_.phase == §-§.§&#d§)
                  {
                     this.§!d§.unshift([1,§-§.§""R§,this.§3#H§.§0#M§,this.§3#H§.§6#P§]);
                  }
                  else
                  {
                     this.§!d§.unshift([1,§-§.§?#S§,this.§3#H§.§0#M§,this.§3#H§.§6#P§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§%#0§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §4!T§(param1:§&#V§) : void
      {
         var _loc4_:§&#V§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§&#V§ = null;
         var _loc3_:Number = §2#6§ * §2#6§;
         for each(_loc4_ in this.§+!u§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§`$8§(_loc2_.§@"j§ + 1);
            this.§+!u§.splice(this.§+!u§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§`$8§(1);
         }
         this.§+!u§.push(param1.clone());
      }
      
      private function §"!q§(param1:§&#V§) : void
      {
         var _loc2_:int = this.§7!w§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§7!w§[_loc2_].id == param1.id)
            {
               this.§7!w§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7!w§.push(param1);
      }
      
      private function §[Y§(param1:int) : §&#V§
      {
         var _loc2_:§&#V§ = null;
         for each(_loc2_ in this.§7!w§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §3!>§() : Boolean
      {
         return this.§3#H§ != null;
      }
      
      public function set §3!>§(param1:Boolean) : void
      {
         if(this.§3!>§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§3#H§ = new §+"8§(Starling.context);
            this.§3#H§.visible = false;
            this.§^!8§.addChild(this.§3#H§);
         }
         else
         {
            this.§3#H§.removeFromParent(true);
            this.§3#H§ = null;
         }
      }
      
      private function §;"R§(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         try
         {
            _loc2_ = getDefinitionByName("flash.desktop::NativeApplication");
            _loc3_ = _loc2_["nativeApplication"];
            if(param1)
            {
               _loc3_.addEventListener("deactivate",this.§3`§,false,0,true);
            }
            else
            {
               _loc3_.removeEventListener("activate",this.§3`§);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §3`§(param1:Object) : void
      {
         var _loc2_:§&#V§ = null;
         var _loc3_:TouchEvent = null;
         for each(_loc2_ in this.§7!w§)
         {
            if(_loc2_.phase == §-§.§?#S§ || _loc2_.phase == §-§.§9$!§ || _loc2_.phase == §-§.§2V§)
            {
               _loc2_.§1"`§(§-§.§&#d§);
            }
         }
         _loc3_ = new TouchEvent(TouchEvent.§6f§,this.§7!w§,this.§%#0§,this.§;#=§);
         for each(_loc2_ in this.§7!w§)
         {
            _loc2_.dispatchEvent(_loc3_);
         }
         this.§7!w§.length = 0;
      }
   }
}
