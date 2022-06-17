package §]"P§
{
   import §!#`§.§"$D§;
   import §!#`§.KeyboardEvent;
   import §!#`§.TouchEvent;
   import §!#`§.§^"e§;
   import §!6§.Stage;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   
   class §#&§
   {
      
      private static const §>!t§:Number = 0.3;
      
      private static const §;$0§:Number = 25;
      
      private static var §<b§:Vector.<int> = new Vector.<int>(0);
      
      private static var §?$,§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var § #z§:Stage;
      
      private var §<#x§:Number;
      
      private var §7!z§:§4"'§;
      
      private var §3"j§:Vector.<§^"e§>;
      
      private var §^f§:Vector.<Array>;
      
      private var §?#%§:Vector.<§^"e§>;
      
      private var §="B§:Boolean = false;
      
      private var §`!9§:Boolean = false;
      
      private var §[!&§:Number = NaN;
      
      function §#&§(param1:Stage)
      {
         super();
         this.§ #z§ = param1;
         this.§<#x§ = 0;
         this.§3"j§ = new Vector.<§^"e§>(0);
         this.§^f§ = new Vector.<Array>(0);
         this.§?#%§ = new Vector.<§^"e§>(0);
         this.§ #z§.addEventListener(KeyboardEvent.KEY_DOWN,this.§=!o§);
         this.§ #z§.addEventListener(KeyboardEvent.KEY_UP,this.§=!o§);
         this.§@#U§(true);
      }
      
      public function dispose() : void
      {
         this.§@#U§(false);
         this.§ #z§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§=!o§);
         this.§ #z§.removeEventListener(KeyboardEvent.KEY_UP,this.§=!o§);
         if(this.§7!z§)
         {
            this.§7!z§.dispose();
         }
      }
      
      public function set §##2§(param1:Number) : void
      {
         this.§[!&§ = param1 / 1000;
      }
      
      public function §#+§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§^"e§ = null;
         var _loc5_:TouchEvent = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§<#x§ += param1;
         if(this.§?#%§.length > 0)
         {
            _loc2_ = this.§?#%§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§<#x§ - this.§?#%§[_loc2_].timestamp > §>!t§)
               {
                  this.§?#%§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         do
         {
            §<b§.length = §?$,§.length = 0;
            for each(_loc4_ in this.§3"j§)
            {
               if(_loc4_.phase == §"$D§.§<#B§ || _loc4_.phase == §"$D§.§,+§)
               {
                  _loc4_.§6";§(§"$D§.§in §);
               }
            }
            while(this.§^f§.length > 0 && §<b§.indexOf(this.§^f§[this.§^f§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§^f§.pop())[0] as int;
               if((_loc4_ = this.§<#m§(_loc3_)) && _loc4_.phase == §"$D§.§^!D§ && _loc4_.target)
               {
                  §?$,§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target,
                     "bubbleChain":_loc4_.bubbleChain
                  });
               }
               this.§<"w§.apply(this,_loc7_);
               §<b§.push(_loc3_);
            }
            for each(_loc4_ in this.§3"j§)
            {
               if(_loc4_.phase == §"$D§.§in §)
               {
                  _loc4_.§7#&§(this.§<#x§);
                  if(!isNaN(this.§[!&§) && this.§3"j§.length > 1)
                  {
                     if(this.§<#x§ > _loc4_.§#$9§ + this.§[!&§)
                     {
                        _loc4_.§6";§(§"$D§.§!+§);
                     }
                  }
                  if(§<b§.indexOf(_loc4_.id) < 0)
                  {
                     §<b§.push(_loc4_.id);
                  }
               }
            }
            _loc5_ = new TouchEvent(TouchEvent.§`#b§,this.§3"j§,this.§="B§,this.§`!9§);
            for each(_loc6_ in §?$,§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc5_.§1#6§(_loc6_.bubbleChain);
               }
            }
            for each(_loc3_ in §<b§)
            {
               this.§<#m§(_loc3_).dispatchEvent(_loc5_);
            }
            _loc2_ = this.§3"j§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§3"j§[_loc2_].phase == §"$D§.§!+§)
               {
                  this.§3"j§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§^f§.length > 0);
         
      }
      
      public function §4v§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         this.§^f§.unshift(arguments);
         if(this.§`!9§ && this.§=#t§ && param1 == 0)
         {
            this.§7!z§.§3#G§(param3,param4,this.§="B§);
            this.§^f§.unshift([1,param2,this.§7!z§.§1$?§,this.§7!z§.§>!C§]);
         }
      }
      
      public function §##i§() : void
      {
         var _loc1_:§^"e§ = this.§<#m§(0);
         if(_loc1_ == null || _loc1_.phase != §"$D§.§^!D§)
         {
            return;
         }
         var _loc3_:Number = _loc1_.globalX;
         var _loc4_:Number = _loc1_.globalY;
         var _loc5_:Number = _loc1_.globalX;
         var _loc6_:Number = this.§ #z§.stageWidth - _loc5_;
         var _loc7_:Number = _loc1_.globalY;
         var _loc8_:Number = this.§ #z§.stageHeight - _loc7_;
         var _loc9_:Number;
         if((_loc9_ = Math.min(_loc5_,_loc6_,_loc7_,_loc8_)) == _loc5_)
         {
            _loc3_ = -1;
         }
         else if(_loc9_ == _loc6_)
         {
            _loc3_ = this.§ #z§.stageWidth + 1;
         }
         else if(_loc9_ == _loc7_)
         {
            _loc4_ = -1;
         }
         else
         {
            _loc4_ = this.§ #z§.stageHeight + 1;
         }
         this.§4v§(0,§"$D§.§^!D§,_loc3_,_loc4_);
      }
      
      private function §<"w§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         var _loc8_:Point = new Point(param3,param4);
         var _loc9_:§^"e§;
         if((_loc9_ = this.§<#m§(param1)) == null)
         {
            _loc9_ = new §^"e§(param1,param3,param4,param2,null);
            this.§#$<§(_loc9_);
         }
         _loc9_.setPosition(param3,param4);
         _loc9_.§6";§(param2);
         _loc9_.§7#&§(this.§<#x§);
         _loc9_.§%#<§(param5);
         _loc9_.setSize(param6,param7);
         if(param2 == §"$D§.§^!D§ || param2 == §"$D§.§<#B§)
         {
            _loc9_.§3#I§(this.§ #z§.hitTest(_loc8_,true));
         }
         if(param2 == §"$D§.§<#B§)
         {
            this.§!$3§(_loc9_);
         }
      }
      
      private function §=!o§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§^"e§ = null;
         var _loc4_:§^"e§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§`!9§;
            this.§`!9§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§=#t§ && _loc2_ != this.§`!9§)
            {
               this.§7!z§.visible = this.§`!9§;
               this.§7!z§.§!#2§(this.§ #z§.stageWidth / 2,this.§ #z§.stageHeight / 2);
               _loc3_ = this.§<#m§(0);
               _loc4_ = this.§<#m§(1);
               if(_loc3_)
               {
                  this.§7!z§.§3#G§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §"$D§.§!+§)
               {
                  this.§^f§.unshift([1,§"$D§.§!+§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§`!9§ && _loc3_)
               {
                  if(_loc3_.phase == §"$D§.§^!D§ || _loc3_.phase == §"$D§.§!+§)
                  {
                     this.§^f§.unshift([1,§"$D§.§^!D§,this.§7!z§.§1$?§,this.§7!z§.§>!C§]);
                  }
                  else
                  {
                     this.§^f§.unshift([1,§"$D§.§<#B§,this.§7!z§.§1$?§,this.§7!z§.§>!C§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§="B§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §!$3§(param1:§^"e§) : void
      {
         var _loc4_:§^"e§ = null;
         var _loc2_:§^"e§ = null;
         var _loc3_:Number = §;$0§ * §;$0§;
         for each(_loc4_ in this.§?#%§)
         {
            if(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§'#q§(_loc2_.§;$-§ + 1);
            this.§?#%§.splice(this.§?#%§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§'#q§(1);
         }
         this.§?#%§.push(param1.clone());
      }
      
      private function §#$<§(param1:§^"e§) : void
      {
         var _loc2_:int = this.§3"j§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§3"j§[_loc2_].id == param1.id)
            {
               this.§3"j§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§3"j§.push(param1);
      }
      
      private function §<#m§(param1:int) : §^"e§
      {
         var _loc2_:§^"e§ = null;
         for each(_loc2_ in this.§3"j§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §=#t§() : Boolean
      {
         return this.§7!z§ != null;
      }
      
      public function set §=#t§(param1:Boolean) : void
      {
         if(this.§=#t§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§7!z§ = new §4"'§(Starling.context);
            this.§7!z§.visible = false;
            this.§ #z§.addChild(this.§7!z§);
         }
         else
         {
            this.§7!z§.removeFromParent(true);
            this.§7!z§ = null;
         }
      }
      
      private function §@#U§(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         try
         {
            _loc2_ = getDefinitionByName("flash.desktop::NativeApplication");
            _loc3_ = _loc2_["nativeApplication"];
            if(param1)
            {
               _loc3_.addEventListener("deactivate",this.§"!V§,false,0,true);
            }
            else
            {
               _loc3_.removeEventListener("activate",this.§"!V§);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §"!V§(param1:Object) : void
      {
         var _loc2_:§^"e§ = null;
         var _loc3_:TouchEvent = null;
         for each(_loc2_ in this.§3"j§)
         {
            if(_loc2_.phase == §"$D§.§<#B§ || _loc2_.phase == §"$D§.§,+§ || _loc2_.phase == §"$D§.§in §)
            {
               _loc2_.§6";§(§"$D§.§!+§);
            }
         }
         _loc3_ = new TouchEvent(TouchEvent.§`#b§,this.§3"j§,this.§="B§,this.§`!9§);
         for each(_loc2_ in this.§3"j§)
         {
            _loc2_.dispatchEvent(_loc3_);
         }
         this.§3"j§.length = 0;
      }
   }
}
