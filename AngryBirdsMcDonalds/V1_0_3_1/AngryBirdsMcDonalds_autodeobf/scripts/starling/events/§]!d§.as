package starling.events
{
   import §&c§.Stage;
   import flash.geom.Point;
   
   public class §]!d§
   {
      
      private static const §@[§:Number = 0.3;
      
      private static const §?t§:Number = 25;
      
      private static var §&!;§:Vector.<int> = new Vector.<int>(0);
      
      private static var §"!$§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §=n§:Stage;
      
      private var §,!F§:Number;
      
      private var §`@§:Number;
      
      private var § u§:§,p§;
      
      private var §7!,§:Vector.<§@!B§>;
      
      private var §"^§:Vector.<Array>;
      
      private var §!!T§:Vector.<§@!B§>;
      
      private var §[!`§:Boolean = false;
      
      private var §7!3§:Boolean = false;
      
      public function §]!d§(param1:Stage)
      {
         super();
         this.§=n§ = param1;
         this.§`@§ = 0;
         this.§,!F§ = 0;
         this.§7!,§ = new Vector.<§@!B§>(0);
         this.§"^§ = new Vector.<Array>(0);
         this.§!!T§ = new Vector.<§@!B§>(0);
         this.§=n§.addEventListener(KeyboardEvent.KEY_DOWN,this.§5"§);
         this.§=n§.addEventListener(KeyboardEvent.KEY_UP,this.§5"§);
      }
      
      public function dispose() : void
      {
         this.§=n§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§5"§);
         this.§=n§.removeEventListener(KeyboardEvent.KEY_UP,this.§5"§);
         if(this.§ u§)
         {
            this.§ u§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§@!B§ = null;
         var _loc5_:§@!B§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§,!F§ += param1;
         this.§`@§ = 0;
         if(this.§!!T§.length > 0)
         {
            _loc2_ = this.§!!T§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§,!F§ - this.§!!T§[_loc2_].timestamp > §@[§)
               {
                  this.§!!T§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§"^§.length > 0)
         {
            §&!;§.length = §"!$§.length = 0;
            for each(_loc5_ in this.§7!,§)
            {
               if(_loc5_.phase == §7!6§.§>! § || _loc5_.phase == §7!6§.§+9§)
               {
                  _loc5_.§!!#§(§7!6§.§^M§);
               }
            }
            while(this.§"^§.length > 0 && §&!;§.indexOf(this.§"^§[this.§"^§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§"^§.pop())[0] as int;
               if((_loc4_ = this.§5l§(_loc3_)) && _loc4_.phase == §7!6§.§`P§ && _loc4_.target)
               {
                  §"!$§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§#!!§.apply(this,_loc7_);
               §&!;§.push(_loc3_);
            }
            for each(_loc6_ in §"!$§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§6A§,this.§7!,§,this.§[!`§,this.§7!3§));
               }
            }
            for each(_loc3_ in §&!;§)
            {
               if((_loc4_ = this.§5l§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§6A§,this.§7!,§,this.§[!`§,this.§7!3§));
               }
            }
            _loc2_ = this.§7!,§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7!,§[_loc2_].phase == §7!6§.§!-§)
               {
                  this.§7!,§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§`@§ += 0.00001;
         }
      }
      
      public function §catch§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§"^§.unshift(arguments);
         if(this.§7!3§ && this.simulateMultitouch && param1 == 0)
         {
            this.§ u§.§0E§(param3,param4,this.§[!`§);
            this.§"^§.unshift([1,param2,this.§ u§.§'!8§,this.§ u§.§+!Y§]);
         }
      }
      
      private function §#!!§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§@!B§;
         if((_loc6_ = this.§5l§(param1)) == null)
         {
            _loc6_ = new §@!B§(param1,param3,param4,param2,null);
            this.§%@§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§!!#§(param2);
         _loc6_.§1'§(this.§,!F§ + this.§`@§);
         if(param2 == §7!6§.§`P§ || param2 == §7!6§.§>! §)
         {
            _loc6_.§?!]§(this.§=n§.hitTest(_loc5_,true));
         }
         if(param2 == §7!6§.§>! §)
         {
            this.§1R§(_loc6_);
         }
      }
      
      private function §5"§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§@!B§ = null;
         var _loc4_:§@!B§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§7!3§;
            this.§7!3§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§7!3§)
            {
               this.§ u§.visible = this.§7!3§;
               this.§ u§.§3!6§(this.§=n§.stageWidth / 2,this.§=n§.stageHeight / 2);
               _loc3_ = this.§5l§(0);
               _loc4_ = this.§5l§(1);
               if(_loc3_)
               {
                  this.§ u§.§0E§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §7!6§.§!-§)
               {
                  this.§"^§.unshift([1,§7!6§.§!-§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§7!3§ && _loc3_)
               {
                  if(_loc3_.phase == §7!6§.§>! § || _loc3_.phase == §7!6§.§+9§)
                  {
                     this.§"^§.unshift([1,§7!6§.§>! §,this.§ u§.§'!8§,this.§ u§.§+!Y§]);
                  }
                  else
                  {
                     this.§"^§.unshift([1,§7!6§.§`P§,this.§ u§.§'!8§,this.§ u§.§+!Y§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§[!`§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §1R§(param1:§@!B§) : void
      {
         var _loc4_:§@!B§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§@!B§ = null;
         var _loc3_:Number = §?t§ * §?t§;
         for each(_loc4_ in this.§!!T§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§#M§(_loc2_.§6!3§ + 1);
            this.§!!T§.splice(this.§!!T§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§#M§(1);
         }
         this.§!!T§.push(param1.clone());
      }
      
      private function §%@§(param1:§@!B§) : void
      {
         var _loc2_:int = this.§7!,§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§7!,§[_loc2_].id == param1.id)
            {
               this.§7!,§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7!,§.push(param1);
      }
      
      private function §5l§(param1:int) : §@!B§
      {
         var _loc2_:§@!B§ = null;
         for each(_loc2_ in this.§7!,§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§ u§ != null;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         if(this.simulateMultitouch == param1)
         {
            return;
         }
      }
   }
}
