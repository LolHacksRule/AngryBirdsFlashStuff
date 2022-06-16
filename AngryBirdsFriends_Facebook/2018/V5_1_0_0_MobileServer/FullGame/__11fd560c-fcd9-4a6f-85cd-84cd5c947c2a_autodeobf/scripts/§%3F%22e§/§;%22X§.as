package §?"e§
{
   import §5#m§.§,o§;
   import §5#m§.§6a§;
   import §5#m§.KeyboardEvent;
   import §5#m§.TouchEvent;
   import §^"S§.Stage;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   
   class §;"X§
   {
      
      private static const §8!w§:Number = 0.3;
      
      private static const §?#[§:Number = 25;
      
      private static var §@!u§:Vector.<int> = new Vector.<int>(0);
      
      private static var §+#!§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §!#^§:Stage;
      
      private var §7p§:Number;
      
      private var §["?§:§!!R§;
      
      private var §@"`§:Vector.<§,o§>;
      
      private var §"!S§:Vector.<Array>;
      
      private var §-#X§:Vector.<§,o§>;
      
      private var §@#h§:Boolean = false;
      
      private var §'#B§:Boolean = false;
      
      private var §""R§:Number = NaN;
      
      function §;"X§(param1:Stage)
      {
         super();
         this.§!#^§ = param1;
         this.§7p§ = 0;
         this.§@"`§ = new Vector.<§,o§>(0);
         this.§"!S§ = new Vector.<Array>(0);
         this.§-#X§ = new Vector.<§,o§>(0);
         this.§!#^§.addEventListener(KeyboardEvent.KEY_DOWN,this.§%#i§);
         this.§!#^§.addEventListener(KeyboardEvent.KEY_UP,this.§%#i§);
         this.§["A§(true);
      }
      
      public function dispose() : void
      {
         this.§["A§(false);
         this.§!#^§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§%#i§);
         this.§!#^§.removeEventListener(KeyboardEvent.KEY_UP,this.§%#i§);
         if(this.§["?§)
         {
            this.§["?§.dispose();
         }
      }
      
      public function set §`#w§(param1:Number) : void
      {
         this.§""R§ = param1 / 1000;
      }
      
      public function §'#F§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§,o§ = null;
         var _loc5_:TouchEvent = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§7p§ += param1;
         if(this.§-#X§.length > 0)
         {
            _loc2_ = this.§-#X§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7p§ - this.§-#X§[_loc2_].timestamp > §8!w§)
               {
                  this.§-#X§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         do
         {
            §@!u§.length = §+#!§.length = 0;
            for each(_loc4_ in this.§@"`§)
            {
               if(_loc4_.phase == §6a§.§+#Q§ || _loc4_.phase == §6a§.§7#k§)
               {
                  _loc4_.§8"q§(§6a§.§-#<§);
               }
            }
            while(this.§"!S§.length > 0 && §@!u§.indexOf(this.§"!S§[this.§"!S§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§"!S§.pop())[0] as int;
               if((_loc4_ = this.§+"h§(_loc3_)) && _loc4_.phase == §6a§.§-#B§ && _loc4_.target)
               {
                  §+#!§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target,
                     "bubbleChain":_loc4_.bubbleChain
                  });
               }
               this.§]!Z§.apply(this,_loc7_);
               §@!u§.push(_loc3_);
            }
            for each(_loc4_ in this.§@"`§)
            {
               if(_loc4_.phase == §6a§.§-#<§)
               {
                  _loc4_.§ M§(this.§7p§);
                  if(!isNaN(this.§""R§) && this.§@"`§.length > 1)
                  {
                     if(this.§7p§ > _loc4_.§<P§ + this.§""R§)
                     {
                        _loc4_.§8"q§(§6a§.§5#L§);
                     }
                  }
                  if(§@!u§.indexOf(_loc4_.id) < 0)
                  {
                     §@!u§.push(_loc4_.id);
                  }
               }
            }
            _loc5_ = new TouchEvent(TouchEvent.§2"H§,this.§@"`§,this.§@#h§,this.§'#B§);
            for each(_loc6_ in §+#!§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc5_.§9m§(_loc6_.bubbleChain);
               }
            }
            for each(_loc3_ in §@!u§)
            {
               this.§+"h§(_loc3_).dispatchEvent(_loc5_);
            }
            _loc2_ = this.§@"`§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§@"`§[_loc2_].phase == §6a§.§5#L§)
               {
                  this.§@"`§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§"!S§.length > 0);
         
      }
      
      public function §[#1§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         this.§"!S§.unshift(arguments);
         if(this.§'#B§ && this.§;#%§ && param1 == 0)
         {
            this.§["?§.§;"y§(param3,param4,this.§@#h§);
            this.§"!S§.unshift([1,param2,this.§["?§.§@"1§,this.§["?§.§'"Y§]);
         }
      }
      
      public function §4#E§() : void
      {
         var _loc1_:§,o§ = this.§+"h§(0);
         if(_loc1_ == null || _loc1_.phase != §6a§.§-#B§)
         {
            return;
         }
         var _loc3_:Number = _loc1_.globalX;
         var _loc4_:Number = _loc1_.globalY;
         var _loc5_:Number = _loc1_.globalX;
         var _loc6_:Number = this.§!#^§.stageWidth - _loc5_;
         var _loc7_:Number = _loc1_.globalY;
         var _loc8_:Number = this.§!#^§.stageHeight - _loc7_;
         var _loc9_:Number;
         if((_loc9_ = Math.min(_loc5_,_loc6_,_loc7_,_loc8_)) == _loc5_)
         {
            _loc3_ = -1;
         }
         else if(_loc9_ == _loc6_)
         {
            _loc3_ = this.§!#^§.stageWidth + 1;
         }
         else if(_loc9_ == _loc7_)
         {
            _loc4_ = -1;
         }
         else
         {
            _loc4_ = this.§!#^§.stageHeight + 1;
         }
         this.§[#1§(0,§6a§.§-#B§,_loc3_,_loc4_);
      }
      
      private function §]!Z§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         var _loc8_:Point = new Point(param3,param4);
         var _loc9_:§,o§;
         if((_loc9_ = this.§+"h§(param1)) == null)
         {
            _loc9_ = new §,o§(param1,param3,param4,param2,null);
            this.§1!2§(_loc9_);
         }
         _loc9_.setPosition(param3,param4);
         _loc9_.§8"q§(param2);
         _loc9_.§ M§(this.§7p§);
         _loc9_.§<">§(param5);
         _loc9_.setSize(param6,param7);
         if(param2 == §6a§.§-#B§ || param2 == §6a§.§+#Q§)
         {
            _loc9_.§<"v§(this.§!#^§.hitTest(_loc8_,true));
         }
         if(param2 == §6a§.§+#Q§)
         {
            this.§@"q§(_loc9_);
         }
      }
      
      private function §%#i§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§,o§ = null;
         var _loc4_:§,o§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§'#B§;
            this.§'#B§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§;#%§ && _loc2_ != this.§'#B§)
            {
               this.§["?§.visible = this.§'#B§;
               this.§["?§.§'!p§(this.§!#^§.stageWidth / 2,this.§!#^§.stageHeight / 2);
               _loc3_ = this.§+"h§(0);
               _loc4_ = this.§+"h§(1);
               if(_loc3_)
               {
                  this.§["?§.§;"y§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §6a§.§5#L§)
               {
                  this.§"!S§.unshift([1,§6a§.§5#L§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§'#B§ && _loc3_)
               {
                  if(_loc3_.phase == §6a§.§-#B§ || _loc3_.phase == §6a§.§5#L§)
                  {
                     this.§"!S§.unshift([1,§6a§.§-#B§,this.§["?§.§@"1§,this.§["?§.§'"Y§]);
                  }
                  else
                  {
                     this.§"!S§.unshift([1,§6a§.§+#Q§,this.§["?§.§@"1§,this.§["?§.§'"Y§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§@#h§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §@"q§(param1:§,o§) : void
      {
         var _loc4_:§,o§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§,o§ = null;
         var _loc3_:Number = §?#[§ * §?#[§;
         for each(_loc4_ in this.§-#X§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§#"F§(_loc2_.§&!;§ + 1);
            this.§-#X§.splice(this.§-#X§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§#"F§(1);
         }
         this.§-#X§.push(param1.clone());
      }
      
      private function §1!2§(param1:§,o§) : void
      {
         var _loc2_:int = this.§@"`§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§@"`§[_loc2_].id == param1.id)
            {
               this.§@"`§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§@"`§.push(param1);
      }
      
      private function §+"h§(param1:int) : §,o§
      {
         var _loc2_:§,o§ = null;
         for each(_loc2_ in this.§@"`§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §;#%§() : Boolean
      {
         return this.§["?§ != null;
      }
      
      public function set §;#%§(param1:Boolean) : void
      {
         if(this.§;#%§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§["?§ = new §!!R§(Starling.context);
            this.§["?§.visible = false;
            this.§!#^§.addChild(this.§["?§);
         }
         else
         {
            this.§["?§.removeFromParent(true);
            this.§["?§ = null;
         }
      }
      
      private function §["A§(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         try
         {
            _loc2_ = getDefinitionByName("flash.desktop::NativeApplication");
            _loc3_ = _loc2_["nativeApplication"];
            if(param1)
            {
               _loc3_.addEventListener("deactivate",this.§4R§,false,0,true);
            }
            else
            {
               _loc3_.removeEventListener("activate",this.§4R§);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §4R§(param1:Object) : void
      {
         var _loc2_:§,o§ = null;
         var _loc3_:TouchEvent = null;
         for each(_loc2_ in this.§@"`§)
         {
            if(_loc2_.phase == §6a§.§+#Q§ || _loc2_.phase == §6a§.§7#k§ || _loc2_.phase == §6a§.§-#<§)
            {
               _loc2_.§8"q§(§6a§.§5#L§);
            }
         }
         _loc3_ = new TouchEvent(TouchEvent.§2"H§,this.§@"`§,this.§@#h§,this.§'#B§);
         for each(_loc2_ in this.§@"`§)
         {
            _loc2_.dispatchEvent(_loc3_);
         }
         this.§@"`§.length = 0;
      }
   }
}
