package starling.events
{
   import §^V§.Stage;
   import flash.geom.Point;
   
   public class §0!?§
   {
      
      private static const §4&§:Number = 0.3;
      
      private static const §%!3§:Number = 25;
      
      private static var §`!G§:Vector.<int> = new Vector.<int>(0);
      
      private static var §!4§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §8!G§:Stage;
      
      private var §^w§:Number;
      
      private var §'!@§:Number;
      
      private var §1!"§:§6p§;
      
      private var §4!,§:Vector.<§ K§>;
      
      private var §"^§:Vector.<Array>;
      
      private var §3!6§:Vector.<§ K§>;
      
      private var §use §:Boolean = false;
      
      private var §+Q§:Boolean = false;
      
      public function §0!?§(param1:Stage)
      {
         super();
         this.§8!G§ = param1;
         this.§'!@§ = 0;
         this.§^w§ = 0;
         this.§4!,§ = new Vector.<§ K§>(0);
         this.§"^§ = new Vector.<Array>(0);
         this.§3!6§ = new Vector.<§ K§>(0);
         this.§8!G§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§8!G§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§8!G§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§8!G§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§1!"§)
         {
            this.§1!"§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§ K§ = null;
         var _loc5_:§ K§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§^w§ += param1;
         this.§'!@§ = 0;
         if(this.§3!6§.length > 0)
         {
            _loc2_ = this.§3!6§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^w§ - this.§3!6§[_loc2_].timestamp > §4&§)
               {
                  this.§3!6§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§"^§.length > 0)
         {
            §`!G§.length = §!4§.length = 0;
            for each(_loc5_ in this.§4!,§)
            {
               if(_loc5_.phase == §"e§.§'D§ || _loc5_.phase == §"e§.§76§)
               {
                  _loc5_.§5!>§(§"e§.§0e§);
               }
            }
            while(this.§"^§.length > 0 && §`!G§.indexOf(this.§"^§[this.§"^§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§"^§.pop())[0] as int;
               if((_loc4_ = this.§1>§(_loc3_)) && _loc4_.phase == §"e§.§2!7§ && _loc4_.target)
               {
                  §!4§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§?r§.apply(this,_loc7_);
               §`!G§.push(_loc3_);
            }
            for each(_loc6_ in §!4§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§[<§,this.§4!,§,this.§use §,this.§+Q§));
               }
            }
            for each(_loc3_ in §`!G§)
            {
               if((_loc4_ = this.§1>§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§[<§,this.§4!,§,this.§use §,this.§+Q§));
               }
            }
            _loc2_ = this.§4!,§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4!,§[_loc2_].phase == §"e§.§"m§)
               {
                  this.§4!,§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§'!@§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§"^§.unshift(arguments);
         if(this.§+Q§ && this.§5U§ && param1 == 0)
         {
            this.§1!"§.§?G§(param3,param4,this.§use §);
            this.§"^§.unshift([1,param2,this.§1!"§.§-!<§,this.§1!"§.§ [§]);
         }
      }
      
      private function §?r§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§ K§;
         if((_loc6_ = this.§1>§(param1)) == null)
         {
            _loc6_ = new § K§(param1,param3,param4,param2,null);
            this.§3w§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§5!>§(param2);
         _loc6_.§2!C§(this.§^w§ + this.§'!@§);
         if(param2 == §"e§.§2!7§ || param2 == §"e§.§'D§)
         {
            _loc6_.§!g§(this.§8!G§.hitTest(_loc5_,true));
         }
         if(param2 == §"e§.§'D§)
         {
            this.§'?§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§ K§ = null;
         var _loc4_:§ K§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§+Q§;
            this.§+Q§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§5U§ && _loc2_ != this.§+Q§)
            {
               this.§1!"§.visible = this.§+Q§;
               this.§1!"§.§!=§(this.§8!G§.stageWidth / 2,this.§8!G§.stageHeight / 2);
               _loc3_ = this.§1>§(0);
               _loc4_ = this.§1>§(1);
               if(_loc3_)
               {
                  this.§1!"§.§?G§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §"e§.§"m§)
               {
                  this.§"^§.unshift([1,§"e§.§"m§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§+Q§ && _loc3_)
               {
                  if(_loc3_.phase == §"e§.§'D§ || _loc3_.phase == §"e§.§76§)
                  {
                     this.§"^§.unshift([1,§"e§.§'D§,this.§1!"§.§-!<§,this.§1!"§.§ [§]);
                  }
                  else
                  {
                     this.§"^§.unshift([1,§"e§.§2!7§,this.§1!"§.§-!<§,this.§1!"§.§ [§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§use § = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §'?§(param1:§ K§) : void
      {
         var _loc4_:§ K§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§ K§ = null;
         var _loc3_:Number = §%!3§ * §%!3§;
         for each(_loc4_ in this.§3!6§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§[>§(_loc2_.§#'§ + 1);
            this.§3!6§.splice(this.§3!6§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§[>§(1);
         }
         this.§3!6§.push(param1.clone());
      }
      
      private function §3w§(param1:§ K§) : void
      {
         var _loc2_:int = this.§4!,§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§4!,§[_loc2_].id == param1.id)
            {
               this.§4!,§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§4!,§.push(param1);
      }
      
      private function §1>§(param1:int) : § K§
      {
         var _loc2_:§ K§ = null;
         for each(_loc2_ in this.§4!,§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §5U§() : Boolean
      {
         return this.§1!"§ != null;
      }
      
      public function set §5U§(param1:Boolean) : void
      {
         if(this.§5U§ == param1)
         {
            return;
         }
      }
   }
}
