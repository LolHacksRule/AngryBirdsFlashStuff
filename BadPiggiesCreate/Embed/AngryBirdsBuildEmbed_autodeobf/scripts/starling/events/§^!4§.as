package starling.events
{
   import §-!`§.Stage;
   import flash.geom.Point;
   
   public class §^!4§
   {
      
      private static const §1p§:Number = 0.3;
      
      private static const §=4§:Number = 25;
      
      private static var §&o§:Vector.<int> = new Vector.<int>(0);
      
      private static var §&!n§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §"$§:Stage;
      
      private var §3!q§:Number;
      
      private var §1_§:Number;
      
      private var §-X§:§!!]§;
      
      private var §9!N§:Vector.<§,s§>;
      
      private var §]-§:Vector.<Array>;
      
      private var §]!m§:Vector.<§,s§>;
      
      private var §;!c§:Boolean = false;
      
      private var § in§:Boolean = false;
      
      public function §^!4§(param1:Stage)
      {
         super();
         this.§"$§ = param1;
         this.§1_§ = 0;
         this.§3!q§ = 0;
         this.§9!N§ = new Vector.<§,s§>(0);
         this.§]-§ = new Vector.<Array>(0);
         this.§]!m§ = new Vector.<§,s§>(0);
         this.§"$§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§"$§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§"$§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§"$§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§-X§)
         {
            this.§-X§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§,s§ = null;
         var _loc5_:§,s§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§3!q§ += param1;
         this.§1_§ = 0;
         if(this.§]!m§.length > 0)
         {
            _loc2_ = this.§]!m§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§3!q§ - this.§]!m§[_loc2_].timestamp > §1p§)
               {
                  this.§]!m§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§]-§.length > 0)
         {
            §&o§.length = §&!n§.length = 0;
            for each(_loc5_ in this.§9!N§)
            {
               if(_loc5_.phase == §21§.§%@§ || _loc5_.phase == §21§.§#!`§)
               {
                  _loc5_.§4!n§(§21§.§2m§);
               }
            }
            while(this.§]-§.length > 0 && §&o§.indexOf(this.§]-§[this.§]-§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§]-§.pop())[0] as int;
               if((_loc4_ = this.§"!I§(_loc3_)) && _loc4_.phase == §21§.§&i§ && _loc4_.target)
               {
                  §&!n§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§;Z§.apply(this,_loc7_);
               §&o§.push(_loc3_);
            }
            for each(_loc6_ in §&!n§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§1C§,this.§9!N§,this.§;!c§,this.§ in§));
               }
            }
            for each(_loc3_ in §&o§)
            {
               if((_loc4_ = this.§"!I§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§1C§,this.§9!N§,this.§;!c§,this.§ in§));
               }
            }
            _loc2_ = this.§9!N§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§9!N§[_loc2_].phase == §21§.§<w§)
               {
                  this.§9!N§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§1_§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§]-§.unshift(arguments);
         if(this.§ in§ && this.§^8§ && param1 == 0)
         {
            this.§-X§.§9!l§(param3,param4,this.§;!c§);
            this.§]-§.unshift([1,param2,this.§-X§.§[g§,this.§-X§.§2!b§]);
         }
      }
      
      private function §;Z§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§,s§;
         if((_loc6_ = this.§"!I§(param1)) == null)
         {
            _loc6_ = new §,s§(param1,param3,param4,param2,null);
            this.§function§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§4!n§(param2);
         _loc6_.§!!B§(this.§3!q§ + this.§1_§);
         if(param2 == §21§.§&i§ || param2 == §21§.§%@§)
         {
            _loc6_.§#!0§(this.§"$§.hitTest(_loc5_,true));
         }
         if(param2 == §21§.§%@§)
         {
            this.§ !_§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§,s§ = null;
         var _loc4_:§,s§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§ in§;
            this.§ in§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§^8§ && _loc2_ != this.§ in§)
            {
               this.§-X§.visible = this.§ in§;
               this.§-X§.§!!'§(this.§"$§.stageWidth / 2,this.§"$§.stageHeight / 2);
               _loc3_ = this.§"!I§(0);
               _loc4_ = this.§"!I§(1);
               if(_loc3_)
               {
                  this.§-X§.§9!l§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §21§.§<w§)
               {
                  this.§]-§.unshift([1,§21§.§<w§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§ in§ && _loc3_)
               {
                  if(_loc3_.phase == §21§.§%@§ || _loc3_.phase == §21§.§#!`§)
                  {
                     this.§]-§.unshift([1,§21§.§%@§,this.§-X§.§[g§,this.§-X§.§2!b§]);
                  }
                  else
                  {
                     this.§]-§.unshift([1,§21§.§&i§,this.§-X§.§[g§,this.§-X§.§2!b§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§;!c§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function § !_§(param1:§,s§) : void
      {
         var _loc4_:§,s§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§,s§ = null;
         var _loc3_:Number = §=4§ * §=4§;
         for each(_loc4_ in this.§]!m§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§%M§(_loc2_.§=!u§ + 1);
            this.§]!m§.splice(this.§]!m§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§%M§(1);
         }
         this.§]!m§.push(param1.clone());
      }
      
      private function §function§(param1:§,s§) : void
      {
         var _loc2_:int = this.§9!N§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§9!N§[_loc2_].id == param1.id)
            {
               this.§9!N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§9!N§.push(param1);
      }
      
      private function §"!I§(param1:int) : §,s§
      {
         var _loc2_:§,s§ = null;
         for each(_loc2_ in this.§9!N§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §^8§() : Boolean
      {
         return this.§-X§ != null;
      }
      
      public function set §^8§(param1:Boolean) : void
      {
         if(this.§^8§ == param1)
         {
            return;
         }
      }
   }
}
