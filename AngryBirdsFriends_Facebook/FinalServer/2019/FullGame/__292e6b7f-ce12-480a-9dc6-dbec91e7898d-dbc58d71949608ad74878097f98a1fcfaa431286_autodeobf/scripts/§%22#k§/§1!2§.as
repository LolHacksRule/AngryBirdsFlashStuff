package §"#k§
{
   import §,#e§.Stage;
   import §,$&§.§-"E§;
   import §,$&§.§4"i§;
   import §,$&§.KeyboardEvent;
   import §,$&§.TouchEvent;
   import flash.geom.Point;
   import flash.utils.getDefinitionByName;
   
   class §1!2§
   {
      
      private static const §[!N§:Number = 0.3;
      
      private static const § n§:Number = 25;
      
      private static var § #[§:Vector.<int> = new Vector.<int>(0);
      
      private static var §+N§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §6$ §:Stage;
      
      private var §^#i§:Number;
      
      private var §@"U§:§+y§;
      
      private var §[#[§:Vector.<§4"i§>;
      
      private var §9#4§:Vector.<Array>;
      
      private var §9#n§:Vector.<§4"i§>;
      
      private var §0#g§:Boolean = false;
      
      private var §`$>§:Boolean = false;
      
      private var §;"s§:Number = NaN;
      
      function §1!2§(param1:Stage)
      {
         super();
         this.§6$ § = param1;
         this.§^#i§ = 0;
         this.§[#[§ = new Vector.<§4"i§>(0);
         this.§9#4§ = new Vector.<Array>(0);
         this.§9#n§ = new Vector.<§4"i§>(0);
         this.§6$ §.addEventListener(KeyboardEvent.KEY_DOWN,this.§ #L§);
         this.§6$ §.addEventListener(KeyboardEvent.KEY_UP,this.§ #L§);
         this.§2q§(true);
      }
      
      public function dispose() : void
      {
         this.§2q§(false);
         this.§6$ §.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ #L§);
         this.§6$ §.removeEventListener(KeyboardEvent.KEY_UP,this.§ #L§);
         if(this.§@"U§)
         {
            this.§@"U§.dispose();
         }
      }
      
      public function set §6$"§(param1:Number) : void
      {
         this.§;"s§ = param1 / 1000;
      }
      
      public function §]W§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§4"i§ = null;
         var _loc5_:TouchEvent = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§^#i§ += param1;
         if(this.§9#n§.length > 0)
         {
            _loc2_ = this.§9#n§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^#i§ - this.§9#n§[_loc2_].timestamp > §[!N§)
               {
                  this.§9#n§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         do
         {
            § #[§.length = §+N§.length = 0;
            for each(_loc4_ in this.§[#[§)
            {
               if(_loc4_.phase == §-"E§.§@"Y§ || _loc4_.phase == §-"E§.§"E§)
               {
                  _loc4_.§7Z§(§-"E§.§<"V§);
               }
            }
            while(this.§9#4§.length > 0 && § #[§.indexOf(this.§9#4§[this.§9#4§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§9#4§.pop())[0] as int;
               if((_loc4_ = this.§3!>§(_loc3_)) && _loc4_.phase == §-"E§.§]!D§ && _loc4_.target)
               {
                  §+N§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target,
                     "bubbleChain":_loc4_.bubbleChain
                  });
               }
               this.§#!2§.apply(this,_loc7_);
               § #[§.push(_loc3_);
            }
            for each(_loc4_ in this.§[#[§)
            {
               if(_loc4_.phase == §-"E§.§<"V§)
               {
                  _loc4_.§^E§(this.§^#i§);
                  if(!isNaN(this.§;"s§) && this.§[#[§.length > 1)
                  {
                     if(this.§^#i§ > _loc4_.§ #Y§ + this.§;"s§)
                     {
                        _loc4_.§7Z§(§-"E§.ENDED);
                     }
                  }
                  if(§ #[§.indexOf(_loc4_.id) < 0)
                  {
                     § #[§.push(_loc4_.id);
                  }
               }
            }
            _loc5_ = new TouchEvent(TouchEvent.§"x§,this.§[#[§,this.§0#g§,this.§`$>§);
            for each(_loc6_ in §+N§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc5_.§'!I§(_loc6_.bubbleChain);
               }
            }
            for each(_loc3_ in § #[§)
            {
               this.§3!>§(_loc3_).dispatchEvent(_loc5_);
            }
            _loc2_ = this.§[#[§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[#[§[_loc2_].phase == §-"E§.ENDED)
               {
                  this.§[#[§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§9#4§.length > 0);
         
      }
      
      public function §for§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         this.§9#4§.unshift(arguments);
         if(this.§`$>§ && this.§['§ && param1 == 0)
         {
            this.§@"U§.§4#2§(param3,param4,this.§0#g§);
            this.§9#4§.unshift([1,param2,this.§@"U§.§%!A§,this.§@"U§.§1#d§]);
         }
      }
      
      public function §1"=§() : void
      {
         var _loc1_:§4"i§ = this.§3!>§(0);
         if(_loc1_ == null || _loc1_.phase != §-"E§.§]!D§)
         {
            return;
         }
         var _loc3_:Number = _loc1_.globalX;
         var _loc4_:Number = _loc1_.globalY;
         var _loc5_:Number = _loc1_.globalX;
         var _loc6_:Number = this.§6$ §.stageWidth - _loc5_;
         var _loc7_:Number = _loc1_.globalY;
         var _loc8_:Number = this.§6$ §.stageHeight - _loc7_;
         var _loc9_:Number;
         if((_loc9_ = Math.min(_loc5_,_loc6_,_loc7_,_loc8_)) == _loc5_)
         {
            _loc3_ = -1;
         }
         else if(_loc9_ == _loc6_)
         {
            _loc3_ = this.§6$ §.stageWidth + 1;
         }
         else if(_loc9_ == _loc7_)
         {
            _loc4_ = -1;
         }
         else
         {
            _loc4_ = this.§6$ §.stageHeight + 1;
         }
         this.§for§(0,§-"E§.§]!D§,_loc3_,_loc4_);
      }
      
      private function §#!2§(param1:int, param2:String, param3:Number, param4:Number, param5:Number = 1.0, param6:Number = 1.0, param7:Number = 1.0) : void
      {
         var _loc8_:Point = new Point(param3,param4);
         var _loc9_:§4"i§;
         if((_loc9_ = this.§3!>§(param1)) == null)
         {
            _loc9_ = new §4"i§(param1,param3,param4,param2,null);
            this.§%!`§(_loc9_);
         }
         _loc9_.setPosition(param3,param4);
         _loc9_.§7Z§(param2);
         _loc9_.§^E§(this.§^#i§);
         _loc9_.§'!x§(param5);
         _loc9_.setSize(param6,param7);
         if(param2 == §-"E§.§]!D§ || param2 == §-"E§.§@"Y§)
         {
            _loc9_.§'2§(this.§6$ §.hitTest(_loc8_,true));
         }
         if(param2 == §-"E§.§@"Y§)
         {
            this.§?"S§(_loc9_);
         }
      }
      
      private function § #L§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§4"i§ = null;
         var _loc4_:§4"i§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§`$>§;
            this.§`$>§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§['§ && _loc2_ != this.§`$>§)
            {
               this.§@"U§.visible = this.§`$>§;
               this.§@"U§.§5#N§(this.§6$ §.stageWidth / 2,this.§6$ §.stageHeight / 2);
               _loc3_ = this.§3!>§(0);
               _loc4_ = this.§3!>§(1);
               if(_loc3_)
               {
                  this.§@"U§.§4#2§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §-"E§.ENDED)
               {
                  this.§9#4§.unshift([1,§-"E§.ENDED,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§`$>§ && _loc3_)
               {
                  if(_loc3_.phase == §-"E§.§]!D§ || _loc3_.phase == §-"E§.ENDED)
                  {
                     this.§9#4§.unshift([1,§-"E§.§]!D§,this.§@"U§.§%!A§,this.§@"U§.§1#d§]);
                  }
                  else
                  {
                     this.§9#4§.unshift([1,§-"E§.§@"Y§,this.§@"U§.§%!A§,this.§@"U§.§1#d§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§0#g§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §?"S§(param1:§4"i§) : void
      {
         var _loc4_:§4"i§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§4"i§ = null;
         var _loc3_:Number = § n§ * § n§;
         for each(_loc4_ in this.§9#n§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§9"i§(_loc2_.§5-§ + 1);
            this.§9#n§.splice(this.§9#n§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§9"i§(1);
         }
         this.§9#n§.push(param1.clone());
      }
      
      private function §%!`§(param1:§4"i§) : void
      {
         var _loc2_:int = this.§[#[§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[#[§[_loc2_].id == param1.id)
            {
               this.§[#[§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[#[§.push(param1);
      }
      
      private function §3!>§(param1:int) : §4"i§
      {
         var _loc2_:§4"i§ = null;
         for each(_loc2_ in this.§[#[§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §['§() : Boolean
      {
         return this.§@"U§ != null;
      }
      
      public function set §['§(param1:Boolean) : void
      {
         if(this.§['§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§@"U§ = new §+y§(Starling.context);
            this.§@"U§.visible = false;
            this.§6$ §.addChild(this.§@"U§);
         }
         else
         {
            this.§@"U§.removeFromParent(true);
            this.§@"U§ = null;
         }
      }
      
      private function §2q§(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         try
         {
            _loc2_ = getDefinitionByName("flash.desktop::NativeApplication");
            _loc3_ = _loc2_["nativeApplication"];
            if(param1)
            {
               _loc3_.addEventListener("deactivate",this.§1"L§,false,0,true);
            }
            else
            {
               _loc3_.removeEventListener("activate",this.§1"L§);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function §1"L§(param1:Object) : void
      {
         var _loc2_:§4"i§ = null;
         var _loc3_:TouchEvent = null;
         for each(_loc2_ in this.§[#[§)
         {
            if(_loc2_.phase == §-"E§.§@"Y§ || _loc2_.phase == §-"E§.§"E§ || _loc2_.phase == §-"E§.§<"V§)
            {
               _loc2_.§7Z§(§-"E§.ENDED);
            }
         }
         _loc3_ = new TouchEvent(TouchEvent.§"x§,this.§[#[§,this.§0#g§,this.§`$>§);
         for each(_loc2_ in this.§[#[§)
         {
            _loc2_.dispatchEvent(_loc3_);
         }
         this.§[#[§.length = 0;
      }
   }
}
