package §^a§
{
   import §9$§.Stage;
   import §?a§.§2#n§;
   import §?a§.§=!U§;
   import §?a§.KeyboardEvent;
   import §?a§.TouchEvent;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   
   class §<#p§
   {
      
      private static const §[1§:Number = 0.3;
      
      private static const §`#s§:Number = 25;
      
      private static var §1!g§:Vector.<int> = new Vector.<int>(0);
      
      private static var §;"7§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §>A§:Stage;
      
      private var §?b§:Number;
      
      private var dynamic:§`$'§;
      
      private var §,!2§:Vector.<§=!U§>;
      
      private var §7"+§:Vector.<Array>;
      
      private var §"#2§:Vector.<§=!U§>;
      
      private var §8s§:Boolean = false;
      
      private var §6"a§:Boolean = false;
      
      private var § "k§:Number = NaN;
      
      function §<#p§(param1:Stage)
      {
         super();
         this.§>A§ = param1;
         this.§?b§ = 0;
         this.§,!2§ = new Vector.<§=!U§>(0);
         this.§7"+§ = new Vector.<Array>(0);
         this.§"#2§ = new Vector.<§=!U§>(0);
         this.§>A§.addEventListener(KeyboardEvent.KEY_DOWN,this.§ #=§);
         this.§>A§.addEventListener(KeyboardEvent.KEY_UP,this.§ #=§);
         this.§["&§(true);
      }
      
      public function dispose() : void
      {
         this.§["&§(false);
         this.§>A§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ #=§);
         this.§>A§.removeEventListener(KeyboardEvent.KEY_UP,this.§ #=§);
         if(this.dynamic)
         {
            this.dynamic.dispose();
         }
      }
      
      public function set §"!L§(param1:Number) : void
      {
         this.§ "k§ = param1 / 1000;
      }
      
      public function §%"f§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§=!U§ = null;
         var _loc5_:TouchEvent = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§?b§ += param1;
         if(this.§"#2§.length > 0)
         {
            _loc2_ = this.§"#2§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§?b§ - this.§"#2§[_loc2_].timestamp > §[1§)
               {
                  this.§"#2§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         do
         {
            §1!g§.length = §;"7§.length = 0;
            for each(_loc4_ in this.§,!2§)
            {
               if(_loc4_.phase == §2#n§.§2X§ || _loc4_.phase == §2#n§.§'$!§)
               {
                  _loc4_.§6$&§(§2#n§.§"%§);
               }
            }
            while(this.§7"+§.length > 0 && §1!g§.indexOf(this.§7"+§[this.§7"+§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§7"+§.pop())[0] as int;
               if((_loc4_ = this.§6#P§(_loc3_)) && _loc4_.phase == §2#n§.§9#0§ && _loc4_.target)
               {
                  §;"7§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target,
                     "bubbleChain":_loc4_.bubbleChain
                  });
               }
               this.§]#+§.apply(this,_loc7_);
               §1!g§.push(_loc3_);
            }
            for each(_loc4_ in this.§,!2§)
            {
               if(_loc4_.phase == §2#n§.§"%§)
               {
                  _loc4_.§]#z§(this.§?b§);
                  if(!isNaN(this.§ "k§) && this.§,!2§.length > 1)
                  {
                     if(this.§?b§ > _loc4_.§<"U§ + this.§ "k§)
                     {
                        _loc4_.§6$&§(§2#n§.§<#D§);
                     }
                  }
                  if(§1!g§.indexOf(_loc4_.id) < 0)
                  {
                     §1!g§.push(_loc4_.id);
                  }
               }
            }
            _loc5_ = new TouchEvent(TouchEvent.§#q§,this.§,!2§,this.§8s§,this.§6"a§);
            for each(_loc6_ in §;"7§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc5_.§2"=§(_loc6_.bubbleChain);
               }
            }
            for each(_loc3_ in §1!g§)
            {
               this.§6#P§(_loc3_).dispatchEvent(_loc5_);
            }
            _loc2_ = this.§,!2§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§,!2§[_loc2_].phase == §2#n§.§<#D§)
               {
                  this.§,!2§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§7"+§.length > 0);
         
      }
      
      public function §"$%§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         this.§7"+§.unshift(arguments);
         if(this.§6"a§ && this.§?n§ && param1 == 0)
         {
            this.dynamic.§23§(param3,param4,this.§8s§);
            this.§7"+§.unshift([1,param2,this.dynamic.§%"@§,this.dynamic.§8r§]);
         }
      }
      
      public function §&#7§() : void
      {
         var _loc1_:§=!U§ = this.§6#P§(0);
         if(_loc1_ == null || _loc1_.phase != §2#n§.§9#0§)
         {
            return;
         }
         var _loc2_:int = 1;
         var _loc3_:Number = _loc1_.globalX;
         var _loc4_:Number = _loc1_.globalY;
         var _loc5_:Number = _loc1_.globalX;
         var _loc6_:Number = this.§>A§.stageWidth - _loc5_;
         var _loc7_:Number = _loc1_.globalY;
         var _loc8_:Number = this.§>A§.stageHeight - _loc7_;
         var _loc9_:Number;
         if((_loc9_ = Math.min(_loc5_,_loc6_,_loc7_,_loc8_)) == _loc5_)
         {
            _loc3_ = -_loc2_;
         }
         else if(_loc9_ == _loc6_)
         {
            _loc3_ = this.§>A§.stageWidth + _loc2_;
         }
         else if(_loc9_ == _loc7_)
         {
            _loc4_ = -_loc2_;
         }
         else
         {
            _loc4_ = this.§>A§.stageHeight + _loc2_;
         }
         this.§"$%§(0,§2#n§.§9#0§,_loc3_,_loc4_);
      }
      
      private function §]#+§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         var _loc8_:Point = new Point(param3,param4);
         var _loc9_:§=!U§;
         if((_loc9_ = this.§6#P§(param1)) == null)
         {
            _loc9_ = new §=!U§(param1,param3,param4,param2,null);
            this.§-#l§(_loc9_);
         }
         _loc9_.setPosition(param3,param4);
         _loc9_.§6$&§(param2);
         _loc9_.§]#z§(this.§?b§);
         _loc9_.§7"j§(param5);
         _loc9_.setSize(param6,param7);
         if(param2 == §2#n§.§9#0§ || param2 == §2#n§.§2X§)
         {
            _loc9_.§@"^§(this.§>A§.hitTest(_loc8_,true));
         }
         if(param2 == §2#n§.§2X§)
         {
            this.§+U§(_loc9_);
         }
      }
      
      private function § #=§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§=!U§ = null;
         var _loc4_:§=!U§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§6"a§;
            this.§6"a§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§?n§ && _loc2_ != this.§6"a§)
            {
               this.dynamic.visible = this.§6"a§;
               this.dynamic.§,!d§(this.§>A§.stageWidth / 2,this.§>A§.stageHeight / 2);
               _loc3_ = this.§6#P§(0);
               _loc4_ = this.§6#P§(1);
               if(_loc3_)
               {
                  this.dynamic.§23§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §2#n§.§<#D§)
               {
                  this.§7"+§.unshift([1,§2#n§.§<#D§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§6"a§ && _loc3_)
               {
                  if(_loc3_.phase == §2#n§.§9#0§ || _loc3_.phase == §2#n§.§<#D§)
                  {
                     this.§7"+§.unshift([1,§2#n§.§9#0§,this.dynamic.§%"@§,this.dynamic.§8r§]);
                  }
                  else
                  {
                     this.§7"+§.unshift([1,§2#n§.§2X§,this.dynamic.§%"@§,this.dynamic.§8r§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§8s§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §+U§(param1:§=!U§) : void
      {
         var _loc4_:§=!U§ = null;
         var _loc2_:§=!U§ = null;
         var _loc3_:Number = §`#s§ * §`#s§;
         for each(_loc4_ in this.§"#2§)
         {
            if(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§2j§(_loc2_.§,$6§ + 1);
            this.§"#2§.splice(this.§"#2§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§2j§(1);
         }
         this.§"#2§.push(param1.clone());
      }
      
      private function §-#l§(param1:§=!U§) : void
      {
         var _loc2_:int = this.§,!2§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§,!2§[_loc2_].id == param1.id)
            {
               this.§,!2§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,!2§.push(param1);
      }
      
      private function §6#P§(param1:int) : §=!U§
      {
         var _loc2_:§=!U§ = null;
         for each(_loc2_ in this.§,!2§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §?n§() : Boolean
      {
         return this.dynamic != null;
      }
      
      public function set §?n§(param1:Boolean) : void
      {
         if(this.§?n§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.dynamic = new §`$'§(Starling.context);
            this.dynamic.visible = false;
            this.§>A§.addChild(this.dynamic);
         }
         else
         {
            this.dynamic.removeFromParent(true);
            this.dynamic = null;
         }
      }
      
      private function §["&§(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         try
         {
            _loc2_ = getDefinitionByName("flash.desktop::NativeApplication");
            _loc3_ = _loc2_["nativeApplication"];
            if(param1)
            {
               _loc3_.addEventListener("deactivate",this.§;h§,false,0,true);
            }
            else
            {
               _loc3_.removeEventListener("activate",this.§;h§);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §;h§(param1:Object) : void
      {
         var _loc2_:§=!U§ = null;
         var _loc3_:TouchEvent = null;
         for each(_loc2_ in this.§,!2§)
         {
            if(_loc2_.phase == §2#n§.§2X§ || _loc2_.phase == §2#n§.§'$!§ || _loc2_.phase == §2#n§.§"%§)
            {
               _loc2_.§6$&§(§2#n§.§<#D§);
            }
         }
         _loc3_ = new TouchEvent(TouchEvent.§#q§,this.§,!2§,this.§8s§,this.§6"a§);
         for each(_loc2_ in this.§,!2§)
         {
            _loc2_.dispatchEvent(_loc3_);
         }
         this.§,!2§.length = 0;
      }
   }
}
