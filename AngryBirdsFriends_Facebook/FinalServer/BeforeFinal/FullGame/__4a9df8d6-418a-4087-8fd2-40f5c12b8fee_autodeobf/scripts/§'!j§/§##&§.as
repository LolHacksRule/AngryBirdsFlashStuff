package §'!j§
{
   import §!$;§.§!r§;
   import §!$;§.§4$8§;
   import §!$;§.KeyboardEvent;
   import §!$;§.TouchEvent;
   import §6#H§.Stage;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   
   class §##&§
   {
      
      private static const §?#?§:Number = 0.3;
      
      private static const §%C§:Number = 25;
      
      private static var §"#I§:Vector.<int> = new Vector.<int>(0);
      
      private static var §@$'§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §3"K§:Stage;
      
      private var §@! §:Number;
      
      private var §-!p§:§]$@§;
      
      private var §var§:Vector.<§!r§>;
      
      private var § 3§:Vector.<Array>;
      
      private var §""1§:Vector.<§!r§>;
      
      private var § f§:Boolean = false;
      
      private var §#!0§:Boolean = false;
      
      private var § !L§:Number = NaN;
      
      function §##&§(param1:Stage)
      {
         super();
         this.§3"K§ = param1;
         this.§@! § = 0;
         this.§var§ = new Vector.<§!r§>(0);
         this.§ 3§ = new Vector.<Array>(0);
         this.§""1§ = new Vector.<§!r§>(0);
         this.§3"K§.addEventListener(KeyboardEvent.KEY_DOWN,this.§["1§);
         this.§3"K§.addEventListener(KeyboardEvent.KEY_UP,this.§["1§);
         this.§-"m§(true);
      }
      
      public function dispose() : void
      {
         this.§-"m§(false);
         this.§3"K§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§["1§);
         this.§3"K§.removeEventListener(KeyboardEvent.KEY_UP,this.§["1§);
         if(this.§-!p§)
         {
            this.§-!p§.dispose();
         }
      }
      
      public function set §7!6§(param1:Number) : void
      {
         this.§ !L§ = param1 / 1000;
      }
      
      public function §-"%§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§!r§ = null;
         var _loc5_:TouchEvent = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§@! § += param1;
         if(this.§""1§.length > 0)
         {
            _loc2_ = this.§""1§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§@! § - this.§""1§[_loc2_].timestamp > §?#?§)
               {
                  this.§""1§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         do
         {
            §"#I§.length = §@$'§.length = 0;
            for each(_loc4_ in this.§var§)
            {
               if(_loc4_.phase == §4$8§.§0E§ || _loc4_.phase == §4$8§.§4"^§)
               {
                  _loc4_.§[!5§(§4$8§.§5"-§);
               }
            }
            while(this.§ 3§.length > 0 && §"#I§.indexOf(this.§ 3§[this.§ 3§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§ 3§.pop())[0] as int;
               if((_loc4_ = this.§##K§(_loc3_)) && _loc4_.phase == §4$8§.§8"b§ && _loc4_.target)
               {
                  §@$'§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target,
                     "bubbleChain":_loc4_.bubbleChain
                  });
               }
               this.§6$"§.apply(this,_loc7_);
               §"#I§.push(_loc3_);
            }
            for each(_loc4_ in this.§var§)
            {
               if(_loc4_.phase == §4$8§.§5"-§)
               {
                  _loc4_.§`!6§(this.§@! §);
                  if(!isNaN(this.§ !L§) && this.§var§.length > 1)
                  {
                     if(this.§@! § > _loc4_.§!"R§ + this.§ !L§)
                     {
                        _loc4_.§[!5§(§4$8§.ENDED);
                     }
                  }
                  if(§"#I§.indexOf(_loc4_.id) < 0)
                  {
                     §"#I§.push(_loc4_.id);
                  }
               }
            }
            _loc5_ = new TouchEvent(TouchEvent.§3O§,this.§var§,this.§ f§,this.§#!0§);
            for each(_loc6_ in §@$'§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc5_.§&"U§(_loc6_.bubbleChain);
               }
            }
            for each(_loc3_ in §"#I§)
            {
               this.§##K§(_loc3_).dispatchEvent(_loc5_);
            }
            _loc2_ = this.§var§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§var§[_loc2_].phase == §4$8§.ENDED)
               {
                  this.§var§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§ 3§.length > 0);
         
      }
      
      public function §`!!§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         this.§ 3§.unshift(arguments);
         if(this.§#!0§ && this.§%"+§ && param1 == 0)
         {
            this.§-!p§.§<"j§(param3,param4,this.§ f§);
            this.§ 3§.unshift([1,param2,this.§-!p§.§;"V§,this.§-!p§.§8#A§]);
         }
      }
      
      public function §?#q§() : void
      {
         var _loc1_:§!r§ = this.§##K§(0);
         if(_loc1_ == null || _loc1_.phase != §4$8§.§8"b§)
         {
            return;
         }
         var _loc3_:Number = _loc1_.globalX;
         var _loc4_:Number = _loc1_.globalY;
         var _loc5_:Number = _loc1_.globalX;
         var _loc6_:Number = this.§3"K§.stageWidth - _loc5_;
         var _loc7_:Number = _loc1_.globalY;
         var _loc8_:Number = this.§3"K§.stageHeight - _loc7_;
         var _loc9_:Number;
         if((_loc9_ = Math.min(_loc5_,_loc6_,_loc7_,_loc8_)) == _loc5_)
         {
            _loc3_ = -1;
         }
         else if(_loc9_ == _loc6_)
         {
            _loc3_ = this.§3"K§.stageWidth + 1;
         }
         else if(_loc9_ == _loc7_)
         {
            _loc4_ = -1;
         }
         else
         {
            _loc4_ = this.§3"K§.stageHeight + 1;
         }
         this.§`!!§(0,§4$8§.§8"b§,_loc3_,_loc4_);
      }
      
      private function §6$"§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         var _loc8_:Point = new Point(param3,param4);
         var _loc9_:§!r§;
         if((_loc9_ = this.§##K§(param1)) == null)
         {
            _loc9_ = new §!r§(param1,param3,param4,param2,null);
            this.§5#S§(_loc9_);
         }
         _loc9_.setPosition(param3,param4);
         _loc9_.§[!5§(param2);
         _loc9_.§`!6§(this.§@! §);
         _loc9_.§3",§(param5);
         _loc9_.setSize(param6,param7);
         if(param2 == §4$8§.§8"b§ || param2 == §4$8§.§0E§)
         {
            _loc9_.§15§(this.§3"K§.hitTest(_loc8_,true));
         }
         if(param2 == §4$8§.§0E§)
         {
            this.§!"M§(_loc9_);
         }
      }
      
      private function §["1§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§!r§ = null;
         var _loc4_:§!r§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§#!0§;
            this.§#!0§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§%"+§ && _loc2_ != this.§#!0§)
            {
               this.§-!p§.visible = this.§#!0§;
               this.§-!p§.§+#g§(this.§3"K§.stageWidth / 2,this.§3"K§.stageHeight / 2);
               _loc3_ = this.§##K§(0);
               _loc4_ = this.§##K§(1);
               if(_loc3_)
               {
                  this.§-!p§.§<"j§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §4$8§.ENDED)
               {
                  this.§ 3§.unshift([1,§4$8§.ENDED,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§#!0§ && _loc3_)
               {
                  if(_loc3_.phase == §4$8§.§8"b§ || _loc3_.phase == §4$8§.ENDED)
                  {
                     this.§ 3§.unshift([1,§4$8§.§8"b§,this.§-!p§.§;"V§,this.§-!p§.§8#A§]);
                  }
                  else
                  {
                     this.§ 3§.unshift([1,§4$8§.§0E§,this.§-!p§.§;"V§,this.§-!p§.§8#A§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§ f§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §!"M§(param1:§!r§) : void
      {
         var _loc4_:§!r§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§!r§ = null;
         var _loc3_:Number = §%C§ * §%C§;
         for each(_loc4_ in this.§""1§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§+#§(_loc2_.§["P§ + 1);
            this.§""1§.splice(this.§""1§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§+#§(1);
         }
         this.§""1§.push(param1.clone());
      }
      
      private function §5#S§(param1:§!r§) : void
      {
         var _loc2_:int = this.§var§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§var§[_loc2_].id == param1.id)
            {
               this.§var§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§var§.push(param1);
      }
      
      private function §##K§(param1:int) : §!r§
      {
         var _loc2_:§!r§ = null;
         for each(_loc2_ in this.§var§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §%"+§() : Boolean
      {
         return this.§-!p§ != null;
      }
      
      public function set §%"+§(param1:Boolean) : void
      {
         if(this.§%"+§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§-!p§ = new §]$@§(Starling.context);
            this.§-!p§.visible = false;
            this.§3"K§.addChild(this.§-!p§);
         }
         else
         {
            this.§-!p§.removeFromParent(true);
            this.§-!p§ = null;
         }
      }
      
      private function §-"m§(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         try
         {
            _loc2_ = getDefinitionByName("flash.desktop::NativeApplication");
            _loc3_ = _loc2_["nativeApplication"];
            if(param1)
            {
               _loc3_.addEventListener("deactivate",this.§^"r§,false,0,true);
            }
            else
            {
               _loc3_.removeEventListener("activate",this.§^"r§);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §^"r§(param1:Object) : void
      {
         var _loc2_:§!r§ = null;
         var _loc3_:TouchEvent = null;
         for each(_loc2_ in this.§var§)
         {
            if(_loc2_.phase == §4$8§.§0E§ || _loc2_.phase == §4$8§.§4"^§ || _loc2_.phase == §4$8§.§5"-§)
            {
               _loc2_.§[!5§(§4$8§.ENDED);
            }
         }
         _loc3_ = new TouchEvent(TouchEvent.§3O§,this.§var§,this.§ f§,this.§#!0§);
         for each(_loc2_ in this.§var§)
         {
            _loc2_.dispatchEvent(_loc3_);
         }
         this.§var§.length = 0;
      }
   }
}
