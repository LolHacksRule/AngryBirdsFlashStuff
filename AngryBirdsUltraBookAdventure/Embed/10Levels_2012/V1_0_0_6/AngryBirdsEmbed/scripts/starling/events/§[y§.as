package starling.events
{
   import §,_§.Stage;
   import flash.geom.Point;
   
   public class §[y§
   {
      
      private static const §3!9§:Number = 0.3;
      
      private static const §;>§:Number = 25;
      
      private static var §,%§:Vector.<int> = new Vector.<int>(0);
      
      private static var § 4§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §?$§:Stage;
      
      private var §3[§:Number;
      
      private var §"!'§:Number;
      
      private var §>$§:§<^§;
      
      private var §2b§:Vector.<§+!§>;
      
      private var §`q§:Vector.<Array>;
      
      private var §-e§:Vector.<§+!§>;
      
      private var §8F§:Boolean = false;
      
      private var §?a§:Boolean = false;
      
      public function §[y§(param1:Stage)
      {
         super();
         this.§?$§ = param1;
         this.§"!'§ = 0;
         this.§3[§ = 0;
         this.§2b§ = new Vector.<§+!§>(0);
         this.§`q§ = new Vector.<Array>(0);
         this.§-e§ = new Vector.<§+!§>(0);
         this.§?$§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§?$§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§?$§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§?$§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§>$§)
         {
            this.§>$§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§+!§ = null;
         var _loc5_:§+!§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§3[§ += param1;
         this.§"!'§ = 0;
         if(this.§-e§.length > 0)
         {
            _loc2_ = this.§-e§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§3[§ - this.§-e§[_loc2_].timestamp > §3!9§)
               {
                  this.§-e§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§`q§.length > 0)
         {
            §,%§.length = § 4§.length = 0;
            for each(_loc5_ in this.§2b§)
            {
               if(_loc5_.phase == §9j§.§3L§ || _loc5_.phase == §9j§.§#U§)
               {
                  _loc5_.§'r§(§9j§.§2c§);
               }
            }
            while(this.§`q§.length > 0 && §,%§.indexOf(this.§`q§[this.§`q§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§`q§.pop())[0] as int;
               if((_loc4_ = this.§`! §(_loc3_)) && _loc4_.phase == §9j§.§"s§ && _loc4_.target)
               {
                  § 4§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§6'§.apply(this,_loc7_);
               §,%§.push(_loc3_);
            }
            for each(_loc6_ in § 4§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§8m§,this.§2b§,this.§8F§,this.§?a§));
               }
            }
            for each(_loc3_ in §,%§)
            {
               if((_loc4_ = this.§`! §(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§8m§,this.§2b§,this.§8F§,this.§?a§));
               }
            }
            _loc2_ = this.§2b§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§2b§[_loc2_].phase == §9j§.§@q§)
               {
                  this.§2b§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§"!'§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§`q§.unshift(arguments);
         if(this.§?a§ && this.§1=§ && param1 == 0)
         {
            this.§>$§.§^"§(param3,param4,this.§8F§);
            this.§`q§.unshift([1,param2,this.§>$§.§-!?§,this.§>$§.§!M§]);
         }
      }
      
      private function §6'§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§+!§;
         if((_loc6_ = this.§`! §(param1)) == null)
         {
            _loc6_ = new §+!§(param1,param3,param4,param2,null);
            this.§[N§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§'r§(param2);
         _loc6_.§+!'§(this.§3[§ + this.§"!'§);
         if(param2 == §9j§.§"s§ || param2 == §9j§.§3L§)
         {
            _loc6_.§#^§(this.§?$§.hitTest(_loc5_,true));
         }
         if(param2 == §9j§.§3L§)
         {
            this.§4!$§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§+!§ = null;
         var _loc4_:§+!§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§?a§;
            this.§?a§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§1=§ && _loc2_ != this.§?a§)
            {
               this.§>$§.visible = this.§?a§;
               this.§>$§.§2n§(this.§?$§.stageWidth / 2,this.§?$§.stageHeight / 2);
               _loc3_ = this.§`! §(0);
               _loc4_ = this.§`! §(1);
               if(_loc3_)
               {
                  this.§>$§.§^"§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §9j§.§@q§)
               {
                  this.§`q§.unshift([1,§9j§.§@q§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§?a§ && _loc3_)
               {
                  if(_loc3_.phase == §9j§.§3L§ || _loc3_.phase == §9j§.§#U§)
                  {
                     this.§`q§.unshift([1,§9j§.§3L§,this.§>$§.§-!?§,this.§>$§.§!M§]);
                  }
                  else
                  {
                     this.§`q§.unshift([1,§9j§.§"s§,this.§>$§.§-!?§,this.§>$§.§!M§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§8F§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §4!$§(param1:§+!§) : void
      {
         var _loc4_:§+!§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§+!§ = null;
         var _loc3_:Number = §;>§ * §;>§;
         for each(_loc4_ in this.§-e§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§ s§(_loc2_.§1!B§ + 1);
            this.§-e§.splice(this.§-e§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§ s§(1);
         }
         this.§-e§.push(param1.clone());
      }
      
      private function §[N§(param1:§+!§) : void
      {
         var _loc2_:int = this.§2b§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§2b§[_loc2_].id == param1.id)
            {
               this.§2b§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2b§.push(param1);
      }
      
      private function §`! §(param1:int) : §+!§
      {
         var _loc2_:§+!§ = null;
         for each(_loc2_ in this.§2b§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §1=§() : Boolean
      {
         return this.§>$§ != null;
      }
      
      public function set §1=§(param1:Boolean) : void
      {
         if(this.§1=§ == param1)
         {
            return;
         }
      }
   }
}
