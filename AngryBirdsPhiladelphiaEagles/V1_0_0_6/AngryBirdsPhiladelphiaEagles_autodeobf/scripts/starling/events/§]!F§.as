package starling.events
{
   import §86§.Stage;
   import flash.geom.Point;
   
   public class §]!F§
   {
      
      private static const §^!1§:Number = 0.3;
      
      private static const §;H§:Number = 25;
      
      private static var §;q§:Vector.<int> = new Vector.<int>(0);
      
      private static var §9W§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §,^§:Stage;
      
      private var §@!-§:Number;
      
      private var §11§:Number;
      
      private var §1J§:§,a§;
      
      private var §"!8§:Vector.<§?!?§>;
      
      private var §;B§:Vector.<Array>;
      
      private var §^x§:Vector.<§?!?§>;
      
      private var §07§:Boolean = false;
      
      private var §<!#§:Boolean = false;
      
      public function §]!F§(param1:Stage)
      {
         super();
         this.§,^§ = param1;
         this.§11§ = 0;
         this.§@!-§ = 0;
         this.§"!8§ = new Vector.<§?!?§>(0);
         this.§;B§ = new Vector.<Array>(0);
         this.§^x§ = new Vector.<§?!?§>(0);
         this.§,^§.addEventListener(KeyboardEvent.KEY_DOWN,this.§0K§);
         this.§,^§.addEventListener(KeyboardEvent.KEY_UP,this.§0K§);
      }
      
      public function dispose() : void
      {
         this.§,^§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0K§);
         this.§,^§.removeEventListener(KeyboardEvent.KEY_UP,this.§0K§);
         if(this.§1J§)
         {
            this.§1J§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§?!?§ = null;
         var _loc5_:§?!?§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§@!-§ += param1;
         this.§11§ = 0;
         if(this.§^x§.length > 0)
         {
            _loc2_ = this.§^x§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§@!-§ - this.§^x§[_loc2_].timestamp > §^!1§)
               {
                  this.§^x§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§;B§.length > 0)
         {
            §;q§.length = §9W§.length = 0;
            for each(_loc5_ in this.§"!8§)
            {
               if(_loc5_.phase == §9^§.§83§ || _loc5_.phase == §9^§.§ v§)
               {
                  _loc5_.§`!L§(§9^§.§3!J§);
               }
            }
            while(this.§;B§.length > 0 && §;q§.indexOf(this.§;B§[this.§;B§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§;B§.pop())[0] as int;
               if((_loc4_ = this.§5r§(_loc3_)) && _loc4_.phase == §9^§.§]!#§ && _loc4_.target)
               {
                  §9W§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§+!+§.apply(this,_loc7_);
               §;q§.push(_loc3_);
            }
            for each(_loc6_ in §9W§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§+l§,this.§"!8§,this.§07§,this.§<!#§));
               }
            }
            for each(_loc3_ in §;q§)
            {
               if((_loc4_ = this.§5r§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§+l§,this.§"!8§,this.§07§,this.§<!#§));
               }
            }
            _loc2_ = this.§"!8§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§"!8§[_loc2_].phase == §9^§.§'R§)
               {
                  this.§"!8§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§11§ += 0.00001;
         }
      }
      
      public function §?o§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§;B§.unshift(arguments);
         if(this.§<!#§ && this.§1!7§ && param1 == 0)
         {
            this.§1J§.§3z§(param3,param4,this.§07§);
            this.§;B§.unshift([1,param2,this.§1J§.§8A§,this.§1J§.§9?§]);
         }
      }
      
      private function §+!+§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§?!?§;
         if((_loc6_ = this.§5r§(param1)) == null)
         {
            _loc6_ = new §?!?§(param1,param3,param4,param2,null);
            this.§4$§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§`!L§(param2);
         _loc6_.§9!F§(this.§@!-§ + this.§11§);
         if(param2 == §9^§.§]!#§ || param2 == §9^§.§83§)
         {
            _loc6_.§5-§(this.§,^§.hitTest(_loc5_,true));
         }
         if(param2 == §9^§.§83§)
         {
            this.§<!L§(_loc6_);
         }
      }
      
      private function §0K§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§?!?§ = null;
         var _loc4_:§?!?§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§<!#§;
            this.§<!#§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§1!7§ && _loc2_ != this.§<!#§)
            {
               this.§1J§.visible = this.§<!#§;
               this.§1J§.§-b§(this.§,^§.stageWidth / 2,this.§,^§.stageHeight / 2);
               _loc3_ = this.§5r§(0);
               _loc4_ = this.§5r§(1);
               if(_loc3_)
               {
                  this.§1J§.§3z§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §9^§.§'R§)
               {
                  this.§;B§.unshift([1,§9^§.§'R§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§<!#§ && _loc3_)
               {
                  if(_loc3_.phase == §9^§.§83§ || _loc3_.phase == §9^§.§ v§)
                  {
                     this.§;B§.unshift([1,§9^§.§83§,this.§1J§.§8A§,this.§1J§.§9?§]);
                  }
                  else
                  {
                     this.§;B§.unshift([1,§9^§.§]!#§,this.§1J§.§8A§,this.§1J§.§9?§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§07§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §<!L§(param1:§?!?§) : void
      {
         var _loc4_:§?!?§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§?!?§ = null;
         var _loc3_:Number = §;H§ * §;H§;
         for each(_loc4_ in this.§^x§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§"?§(_loc2_.§6o§ + 1);
            this.§^x§.splice(this.§^x§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§"?§(1);
         }
         this.§^x§.push(param1.clone());
      }
      
      private function §4$§(param1:§?!?§) : void
      {
         var _loc2_:int = this.§"!8§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§"!8§[_loc2_].id == param1.id)
            {
               this.§"!8§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§"!8§.push(param1);
      }
      
      private function §5r§(param1:int) : §?!?§
      {
         var _loc2_:§?!?§ = null;
         for each(_loc2_ in this.§"!8§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §1!7§() : Boolean
      {
         return this.§1J§ != null;
      }
      
      public function set §1!7§(param1:Boolean) : void
      {
         if(this.§1!7§ == param1)
         {
            return;
         }
      }
   }
}
