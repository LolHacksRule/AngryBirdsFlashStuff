package §&§#8
{
   import §#Z§.Stage;
   import §<!S§.§2w§;
   import §<!S§.§?"^§;
   import §<!S§.KeyboardEvent;
   import §<!S§.TouchEvent;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   
   class §+!U§
   {
      
      private static const §0"q§:Number = 0.3;
      
      private static const §2"z§:Number = 25;
      
      private static var §,"#§:Vector.<int> = new Vector.<int>(0);
      
      private static var §="^§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §1!f§:Stage;
      
      private var §1#h§:Number;
      
      private var §#"Y§:§#"C§;
      
      private var §[N§:Vector.<§?"^§>;
      
      private var §["6§:Vector.<Array>;
      
      private var §="9§:Vector.<§?"^§>;
      
      private var § #5§:Boolean = false;
      
      private var §?i§:Boolean = false;
      
      private var §6$;§:Number = NaN;
      
      function §+!U§(param1:Stage)
      {
         super();
         this.§1!f§ = param1;
         this.§1#h§ = 0;
         this.§[N§ = new Vector.<§?"^§>(0);
         this.§["6§ = new Vector.<Array>(0);
         this.§="9§ = new Vector.<§?"^§>(0);
         this.§1!f§.addEventListener(KeyboardEvent.KEY_DOWN,this.§!#V§);
         this.§1!f§.addEventListener(KeyboardEvent.KEY_UP,this.§!#V§);
         this.§8#I§(true);
      }
      
      public function dispose() : void
      {
         this.§8#I§(false);
         this.§1!f§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!#V§);
         this.§1!f§.removeEventListener(KeyboardEvent.KEY_UP,this.§!#V§);
         if(this.§#"Y§)
         {
            this.§#"Y§.dispose();
         }
      }
      
      public function set §;#u§(param1:Number) : void
      {
         this.§6$;§ = param1 / 1000;
      }
      
      public function §["[§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§?"^§ = null;
         var _loc5_:TouchEvent = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§1#h§ += param1;
         if(this.§="9§.length > 0)
         {
            _loc2_ = this.§="9§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§1#h§ - this.§="9§[_loc2_].timestamp > §0"q§)
               {
                  this.§="9§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         do
         {
            §,"#§.length = §="^§.length = 0;
            for each(_loc4_ in this.§[N§)
            {
               if(_loc4_.phase == §2w§.§@$;§ || _loc4_.phase == §2w§.§<#F§)
               {
                  _loc4_.§%$A§(§2w§.§]#C§);
               }
            }
            while(this.§["6§.length > 0 && §,"#§.indexOf(this.§["6§[this.§["6§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§["6§.pop())[0] as int;
               if((_loc4_ = this.§<+§(_loc3_)) && _loc4_.phase == §2w§.§3"X§ && _loc4_.target)
               {
                  §="^§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target,
                     "bubbleChain":_loc4_.bubbleChain
                  });
               }
               this.§ !Y§.apply(this,_loc7_);
               §,"#§.push(_loc3_);
            }
            for each(_loc4_ in this.§[N§)
            {
               if(_loc4_.phase == §2w§.§]#C§)
               {
                  _loc4_.§-!z§(this.§1#h§);
                  if(!isNaN(this.§6$;§) && this.§[N§.length > 1)
                  {
                     if(this.§1#h§ > _loc4_.§^"6§ + this.§6$;§)
                     {
                        _loc4_.§%$A§(§2w§.ENDED);
                     }
                  }
                  if(§,"#§.indexOf(_loc4_.id) < 0)
                  {
                     §,"#§.push(_loc4_.id);
                  }
               }
            }
            _loc5_ = new TouchEvent(TouchEvent.§-X§,this.§[N§,this.§ #5§,this.§?i§);
            for each(_loc6_ in §="^§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc5_.§'$<§(_loc6_.bubbleChain);
               }
            }
            for each(_loc3_ in §,"#§)
            {
               this.§<+§(_loc3_).dispatchEvent(_loc5_);
            }
            _loc2_ = this.§[N§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[N§[_loc2_].phase == §2w§.ENDED)
               {
                  this.§[N§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§["6§.length > 0);
         
      }
      
      public function §&$6§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         this.§["6§.unshift(arguments);
         if(this.§?i§ && this.§+#8§ && param1 == 0)
         {
            this.§#"Y§.§0#U§(param3,param4,this.§ #5§);
            this.§["6§.unshift([1,param2,this.§#"Y§.§3#j§,this.§#"Y§.§&"j§]);
         }
      }
      
      public function §<"0§() : void
      {
         var _loc1_:§?"^§ = this.§<+§(0);
         if(_loc1_ == null || _loc1_.phase != §2w§.§3"X§)
         {
            return;
         }
         var _loc3_:Number = _loc1_.globalX;
         var _loc4_:Number = _loc1_.globalY;
         var _loc5_:Number = _loc1_.globalX;
         var _loc6_:Number = this.§1!f§.stageWidth - _loc5_;
         var _loc7_:Number = _loc1_.globalY;
         var _loc8_:Number = this.§1!f§.stageHeight - _loc7_;
         var _loc9_:Number;
         if((_loc9_ = Math.min(_loc5_,_loc6_,_loc7_,_loc8_)) == _loc5_)
         {
            _loc3_ = -1;
         }
         else if(_loc9_ == _loc6_)
         {
            _loc3_ = this.§1!f§.stageWidth + 1;
         }
         else if(_loc9_ == _loc7_)
         {
            _loc4_ = -1;
         }
         else
         {
            _loc4_ = this.§1!f§.stageHeight + 1;
         }
         this.§&$6§(0,§2w§.§3"X§,_loc3_,_loc4_);
      }
      
      private function § !Y§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         var _loc8_:Point = new Point(param3,param4);
         var _loc9_:§?"^§;
         if((_loc9_ = this.§<+§(param1)) == null)
         {
            _loc9_ = new §?"^§(param1,param3,param4,param2,null);
            this.§ #b§(_loc9_);
         }
         _loc9_.setPosition(param3,param4);
         _loc9_.§%$A§(param2);
         _loc9_.§-!z§(this.§1#h§);
         _loc9_.§>!Q§(param5);
         _loc9_.setSize(param6,param7);
         if(param2 == §2w§.§3"X§ || param2 == §2w§.§@$;§)
         {
            _loc9_.§7"I§(this.§1!f§.hitTest(_loc8_,true));
         }
         if(param2 == §2w§.§@$;§)
         {
            this.§@!o§(_loc9_);
         }
      }
      
      private function §!#V§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§?"^§ = null;
         var _loc4_:§?"^§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§?i§;
            this.§?i§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§+#8§ && _loc2_ != this.§?i§)
            {
               this.§#"Y§.visible = this.§?i§;
               this.§#"Y§.§9q§(this.§1!f§.stageWidth / 2,this.§1!f§.stageHeight / 2);
               _loc3_ = this.§<+§(0);
               _loc4_ = this.§<+§(1);
               if(_loc3_)
               {
                  this.§#"Y§.§0#U§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §2w§.ENDED)
               {
                  this.§["6§.unshift([1,§2w§.ENDED,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§?i§ && _loc3_)
               {
                  if(_loc3_.phase == §2w§.§3"X§ || _loc3_.phase == §2w§.ENDED)
                  {
                     this.§["6§.unshift([1,§2w§.§3"X§,this.§#"Y§.§3#j§,this.§#"Y§.§&"j§]);
                  }
                  else
                  {
                     this.§["6§.unshift([1,§2w§.§@$;§,this.§#"Y§.§3#j§,this.§#"Y§.§&"j§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§ #5§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §@!o§(param1:§?"^§) : void
      {
         var _loc4_:§?"^§ = null;
         var _loc2_:§?"^§ = null;
         var _loc3_:Number = §2"z§ * §2"z§;
         for each(_loc4_ in this.§="9§)
         {
            if(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§0"j§(_loc2_.§>#F§ + 1);
            this.§="9§.splice(this.§="9§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§0"j§(1);
         }
         this.§="9§.push(param1.clone());
      }
      
      private function § #b§(param1:§?"^§) : void
      {
         var _loc2_:int = this.§[N§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[N§[_loc2_].id == param1.id)
            {
               this.§[N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[N§.push(param1);
      }
      
      private function §<+§(param1:int) : §?"^§
      {
         var _loc2_:§?"^§ = null;
         for each(_loc2_ in this.§[N§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §+#8§() : Boolean
      {
         return this.§#"Y§ != null;
      }
      
      public function set §+#8§(param1:Boolean) : void
      {
         if(this.§+#8§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§#"Y§ = new §#"C§(Starling.context);
            this.§#"Y§.visible = false;
            this.§1!f§.addChild(this.§#"Y§);
         }
         else
         {
            this.§#"Y§.removeFromParent(true);
            this.§#"Y§ = null;
         }
      }
      
      private function §8#I§(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         try
         {
            _loc2_ = getDefinitionByName("flash.desktop::NativeApplication");
            _loc3_ = _loc2_["nativeApplication"];
            if(param1)
            {
               _loc3_.addEventListener("deactivate",this.§^"+§,false,0,true);
            }
            else
            {
               _loc3_.removeEventListener("activate",this.§^"+§);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §^"+§(param1:Object) : void
      {
         var _loc2_:§?"^§ = null;
         var _loc3_:TouchEvent = null;
         for each(_loc2_ in this.§[N§)
         {
            if(_loc2_.phase == §2w§.§@$;§ || _loc2_.phase == §2w§.§<#F§ || _loc2_.phase == §2w§.§]#C§)
            {
               _loc2_.§%$A§(§2w§.ENDED);
            }
         }
         _loc3_ = new TouchEvent(TouchEvent.§-X§,this.§[N§,this.§ #5§,this.§?i§);
         for each(_loc2_ in this.§[N§)
         {
            _loc2_.dispatchEvent(_loc3_);
         }
         this.§[N§.length = 0;
      }
   }
}
