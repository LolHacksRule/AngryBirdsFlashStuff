package starling.events
{
   import §]@§.Stage;
   import flash.geom.Point;
   
   public class §-,§
   {
      
      private static const §6i§:Number = 0.3;
      
      private static const §4Q§:Number = 25;
      
      private static var §&6§:Vector.<int> = new Vector.<int>(0);
      
      private static var §[c§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §6$§:Stage;
      
      private var §-$§:Number;
      
      private var §7!$§:Number;
      
      private var §01§:§5!"§;
      
      private var §[T§:Vector.<§5v§>;
      
      private var §"!W§:Vector.<Array>;
      
      private var §!'§:Vector.<§5v§>;
      
      private var §?R§:Boolean = false;
      
      private var §7W§:Boolean = false;
      
      public function §-,§(param1:Stage)
      {
         super();
         this.§6$§ = param1;
         this.§7!$§ = 0;
         this.§-$§ = 0;
         this.§[T§ = new Vector.<§5v§>(0);
         this.§"!W§ = new Vector.<Array>(0);
         this.§!'§ = new Vector.<§5v§>(0);
         this.§6$§.addEventListener(KeyboardEvent.KEY_DOWN,this.§&!^§);
         this.§6$§.addEventListener(KeyboardEvent.KEY_UP,this.§&!^§);
      }
      
      public function dispose() : void
      {
         this.§6$§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§&!^§);
         this.§6$§.removeEventListener(KeyboardEvent.KEY_UP,this.§&!^§);
         if(this.§01§)
         {
            this.§01§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§5v§ = null;
         var _loc5_:§5v§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§-$§ += param1;
         this.§7!$§ = 0;
         if(this.§!'§.length > 0)
         {
            _loc2_ = this.§!'§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§-$§ - this.§!'§[_loc2_].timestamp > §6i§)
               {
                  this.§!'§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§"!W§.length > 0)
         {
            §&6§.length = §[c§.length = 0;
            for each(_loc5_ in this.§[T§)
            {
               if(_loc5_.phase == §3M§.§+c§ || _loc5_.phase == §3M§.§@!,§)
               {
                  _loc5_.§^E§(§3M§.§6n§);
               }
            }
            while(this.§"!W§.length > 0 && §&6§.indexOf(this.§"!W§[this.§"!W§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§"!W§.pop())[0] as int;
               if((_loc4_ = this.§0G§(_loc3_)) && _loc4_.phase == §3M§.§3!$§ && _loc4_.target)
               {
                  §[c§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§,! §.apply(this,_loc7_);
               §&6§.push(_loc3_);
            }
            for each(_loc6_ in §[c§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§"M§,this.§[T§,this.§?R§,this.§7W§));
               }
            }
            for each(_loc3_ in §&6§)
            {
               if((_loc4_ = this.§0G§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§"M§,this.§[T§,this.§?R§,this.§7W§));
               }
            }
            _loc2_ = this.§[T§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[T§[_loc2_].phase == §3M§.§"!,§)
               {
                  this.§[T§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§7!$§ += 0.00001;
         }
      }
      
      public function §,<§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§"!W§.unshift(arguments);
         if(this.§7W§ && this.§&?§ && param1 == 0)
         {
            this.§01§.§3k§(param3,param4,this.§?R§);
            this.§"!W§.unshift([1,param2,this.§01§.§&h§,this.§01§.§@Q§]);
         }
      }
      
      private function §,! §(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§5v§;
         if((_loc6_ = this.§0G§(param1)) == null)
         {
            _loc6_ = new §5v§(param1,param3,param4,param2,null);
            this.§08§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§^E§(param2);
         _loc6_.§^!3§(this.§-$§ + this.§7!$§);
         if(param2 == §3M§.§3!$§ || param2 == §3M§.§+c§)
         {
            _loc6_.§&2§(this.§6$§.hitTest(_loc5_,true));
         }
         if(param2 == §3M§.§+c§)
         {
            this.§2O§(_loc6_);
         }
      }
      
      private function §&!^§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§5v§ = null;
         var _loc4_:§5v§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§7W§;
            this.§7W§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§&?§ && _loc2_ != this.§7W§)
            {
               this.§01§.visible = this.§7W§;
               this.§01§.§+O§(this.§6$§.stageWidth / 2,this.§6$§.stageHeight / 2);
               _loc3_ = this.§0G§(0);
               _loc4_ = this.§0G§(1);
               if(_loc3_)
               {
                  this.§01§.§3k§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §3M§.§"!,§)
               {
                  this.§"!W§.unshift([1,§3M§.§"!,§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§7W§ && _loc3_)
               {
                  if(_loc3_.phase == §3M§.§+c§ || _loc3_.phase == §3M§.§@!,§)
                  {
                     this.§"!W§.unshift([1,§3M§.§+c§,this.§01§.§&h§,this.§01§.§@Q§]);
                  }
                  else
                  {
                     this.§"!W§.unshift([1,§3M§.§3!$§,this.§01§.§&h§,this.§01§.§@Q§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§?R§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §2O§(param1:§5v§) : void
      {
         var _loc4_:§5v§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§5v§ = null;
         var _loc3_:Number = §4Q§ * §4Q§;
         for each(_loc4_ in this.§!'§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§ N§(_loc2_.§!!8§ + 1);
            this.§!'§.splice(this.§!'§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§ N§(1);
         }
         this.§!'§.push(param1.clone());
      }
      
      private function §08§(param1:§5v§) : void
      {
         var _loc2_:int = this.§[T§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[T§[_loc2_].id == param1.id)
            {
               this.§[T§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[T§.push(param1);
      }
      
      private function §0G§(param1:int) : §5v§
      {
         var _loc2_:§5v§ = null;
         for each(_loc2_ in this.§[T§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §&?§() : Boolean
      {
         return this.§01§ != null;
      }
      
      public function set §&?§(param1:Boolean) : void
      {
         if(this.§&?§ == param1)
         {
            return;
         }
      }
   }
}
