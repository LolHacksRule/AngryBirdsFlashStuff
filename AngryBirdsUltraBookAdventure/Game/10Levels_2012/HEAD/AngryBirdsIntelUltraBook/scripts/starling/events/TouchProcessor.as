package starling.events
{
   import §1!&§.Stage;
   import flash.geom.Point;
   
   public class TouchProcessor
   {
      
      private static const §&§:Number = 0.3;
      
      private static const §=a§:Number = 25;
      
      private static var §@R§:Vector.<int> = new Vector.<int>(0);
      
      private static var §-!8§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §?_§:Stage;
      
      private var §9%§:Number;
      
      private var §1!9§:Number;
      
      private var §2p§:§7!J§;
      
      private var §4!;§:Vector.<§1B§>;
      
      private var §]J§:Vector.<Array>;
      
      private var §;!7§:Vector.<§1B§>;
      
      private var §5]§:Boolean = false;
      
      private var §5A§:Boolean = false;
      
      public function TouchProcessor(param1:Stage)
      {
         super();
         this.§?_§ = param1;
         this.§1!9§ = 0;
         this.§9%§ = 0;
         this.§4!;§ = new Vector.<§1B§>(0);
         this.§]J§ = new Vector.<Array>(0);
         this.§;!7§ = new Vector.<§1B§>(0);
         this.§?_§.addEventListener(KeyboardEvent.KEY_DOWN,this.§@!,§);
         this.§?_§.addEventListener(KeyboardEvent.KEY_UP,this.§@!,§);
      }
      
      public function dispose() : void
      {
         this.§?_§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§@!,§);
         this.§?_§.removeEventListener(KeyboardEvent.KEY_UP,this.§@!,§);
         if(this.§2p§)
         {
            this.§2p§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§1B§ = null;
         var _loc5_:§1B§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§9%§ += param1;
         this.§1!9§ = 0;
         if(this.§;!7§.length > 0)
         {
            _loc2_ = this.§;!7§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§9%§ - this.§;!7§[_loc2_].timestamp > §&§)
               {
                  this.§;!7§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§]J§.length > 0)
         {
            §@R§.length = §-!8§.length = 0;
            for each(_loc5_ in this.§4!;§)
            {
               if(_loc5_.phase == §0M§.§+!$§ || _loc5_.phase == §0M§.§-!Y§)
               {
                  _loc5_.§ A§(§0M§.§]x§);
               }
            }
            while(this.§]J§.length > 0 && §@R§.indexOf(this.§]J§[this.§]J§.length - 1][0]) == -1)
            {
               _loc7_ = this.§]J§.pop();
               _loc3_ = _loc7_[0] as int;
               _loc4_ = this.§>G§(_loc3_);
               if(_loc4_ && _loc4_.phase == §0M§.§'p§ && _loc4_.target)
               {
                  §-!8§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§7n§.apply(this,_loc7_);
               §@R§.push(_loc3_);
            }
            for each(_loc6_ in §-!8§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§@!;§,this.§4!;§,this.§5]§,this.§5A§));
               }
            }
            for each(_loc3_ in §@R§)
            {
               _loc4_ = this.§>G§(_loc3_);
               if(_loc4_.target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§@!;§,this.§4!;§,this.§5]§,this.§5A§));
               }
            }
            _loc2_ = this.§4!;§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4!;§[_loc2_].phase == §0M§.§!!C§)
               {
                  this.§4!;§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§1!9§ += 0.00001;
         }
      }
      
      public function §9y§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§]J§.unshift(arguments);
         if(this.§5A§ && this.§]<§ && param1 == 0)
         {
            this.§2p§.§]3§(param3,param4,this.§5]§);
            this.§]J§.unshift([1,param2,this.§2p§.§^u§,this.§2p§.§@F§]);
         }
      }
      
      private function §7n§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§1B§ = this.§>G§(param1);
         if(_loc6_ == null)
         {
            _loc6_ = new §1B§(param1,param3,param4,param2,null);
            this.§4;§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§ A§(param2);
         _loc6_.§>! §(this.§9%§ + this.§1!9§);
         if(param2 == §0M§.§'p§ || param2 == §0M§.§+!$§)
         {
            _loc6_.§&z§(this.§?_§.hitTest(_loc5_,true));
         }
         if(param2 == §0M§.§+!$§)
         {
            this.§^!§(_loc6_);
         }
      }
      
      private function §@!,§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§1B§ = null;
         var _loc4_:§1B§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§5A§;
            this.§5A§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§]<§ && _loc2_ != this.§5A§)
            {
               this.§2p§.visible = this.§5A§;
               this.§2p§.§-!j§(this.§?_§.stageWidth / 2,this.§?_§.stageHeight / 2);
               _loc3_ = this.§>G§(0);
               _loc4_ = this.§>G§(1);
               if(_loc3_)
               {
                  this.§2p§.§]3§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §0M§.§!!C§)
               {
                  this.§]J§.unshift([1,§0M§.§!!C§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§5A§ && _loc3_)
               {
                  if(_loc3_.phase == §0M§.§+!$§ || _loc3_.phase == §0M§.§-!Y§)
                  {
                     this.§]J§.unshift([1,§0M§.§+!$§,this.§2p§.§^u§,this.§2p§.§@F§]);
                  }
                  else
                  {
                     this.§]J§.unshift([1,§0M§.§'p§,this.§2p§.§^u§,this.§2p§.§@F§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§5]§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §^!§(param1:§1B§) : void
      {
         var _loc4_:§1B§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§1B§ = null;
         var _loc3_:Number = §=a§ * §=a§;
         for each(_loc4_ in this.§;!7§)
         {
            _loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2);
            if(_loc5_ <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§9C§(_loc2_.§'!c§ + 1);
            this.§;!7§.splice(this.§;!7§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§9C§(1);
         }
         this.§;!7§.push(param1.clone());
      }
      
      private function §4;§(param1:§1B§) : void
      {
         var _loc2_:int = this.§4!;§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§4!;§[_loc2_].id == param1.id)
            {
               this.§4!;§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§4!;§.push(param1);
      }
      
      private function §>G§(param1:int) : §1B§
      {
         var _loc2_:§1B§ = null;
         for each(_loc2_ in this.§4!;§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §]<§() : Boolean
      {
         return this.§2p§ != null;
      }
      
      public function set §]<§(param1:Boolean) : void
      {
         if(this.§]<§ == param1)
         {
            return;
         }
      }
   }
}
