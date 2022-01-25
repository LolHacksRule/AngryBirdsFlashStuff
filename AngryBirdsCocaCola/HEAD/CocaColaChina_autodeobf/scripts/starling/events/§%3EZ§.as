package starling.events
{
   import § !K§.Stage;
   import flash.geom.Point;
   
   public class §>Z§
   {
      
      private static const §6!X§:Number = 0.3;
      
      private static const §"!-§:Number = 25;
      
      private static var §8$§:Vector.<int> = new Vector.<int>(0);
      
      private static var §8X§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §@c§:Stage;
      
      private var §+5§:Number;
      
      private var §&!<§:Number;
      
      private var §?h§:§`3§;
      
      private var §;!a§:Vector.<§;!J§>;
      
      private var §>8§:Vector.<Array>;
      
      private var §+C§:Vector.<§;!J§>;
      
      private var §'A§:Boolean = false;
      
      private var §;u§:Boolean = false;
      
      public function §>Z§(param1:Stage)
      {
         super();
         this.§@c§ = param1;
         this.§&!<§ = 0;
         this.§+5§ = 0;
         this.§;!a§ = new Vector.<§;!J§>(0);
         this.§>8§ = new Vector.<Array>(0);
         this.§+C§ = new Vector.<§;!J§>(0);
         this.§@c§.addEventListener(KeyboardEvent.KEY_DOWN,this.§#!6§);
         this.§@c§.addEventListener(KeyboardEvent.KEY_UP,this.§#!6§);
      }
      
      public function dispose() : void
      {
         this.§@c§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§#!6§);
         this.§@c§.removeEventListener(KeyboardEvent.KEY_UP,this.§#!6§);
         if(this.§?h§)
         {
            this.§?h§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§;!J§ = null;
         var _loc5_:§;!J§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§+5§ += param1;
         this.§&!<§ = 0;
         if(this.§+C§.length > 0)
         {
            _loc2_ = this.§+C§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§+5§ - this.§+C§[_loc2_].timestamp > §6!X§)
               {
                  this.§+C§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§>8§.length > 0)
         {
            §8$§.length = §8X§.length = 0;
            for each(_loc5_ in this.§;!a§)
            {
               if(_loc5_.phase == §9!%§.§'6§ || _loc5_.phase == §9!%§.§1-§)
               {
                  _loc5_.§+n§(§9!%§.§>E§);
               }
            }
            while(this.§>8§.length > 0 && §8$§.indexOf(this.§>8§[this.§>8§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§>8§.pop())[0] as int;
               if((_loc4_ = this.§;0§(_loc3_)) && _loc4_.phase == §9!%§.§'!!§ && _loc4_.target)
               {
                  §8X§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§#7§.apply(this,_loc7_);
               §8$§.push(_loc3_);
            }
            for each(_loc6_ in §8X§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§6K§,this.§;!a§,this.§'A§,this.§;u§));
               }
            }
            for each(_loc3_ in §8$§)
            {
               if((_loc4_ = this.§;0§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§6K§,this.§;!a§,this.§'A§,this.§;u§));
               }
            }
            _loc2_ = this.§;!a§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§;!a§[_loc2_].phase == §9!%§.§^!#§)
               {
                  this.§;!a§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§&!<§ += 0.00001;
         }
      }
      
      public function §8d§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§>8§.unshift(arguments);
         if(this.§;u§ && this.simulateMultitouch && param1 == 0)
         {
            this.§?h§.§88§(param3,param4,this.§'A§);
            this.§>8§.unshift([1,param2,this.§?h§.§1! §,this.§?h§.§!g§]);
         }
      }
      
      private function §#7§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;!J§;
         if((_loc6_ = this.§;0§(param1)) == null)
         {
            _loc6_ = new §;!J§(param1,param3,param4,param2,null);
            this.§7?§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§+n§(param2);
         _loc6_.§#>§(this.§+5§ + this.§&!<§);
         if(param2 == §9!%§.§'!!§ || param2 == §9!%§.§'6§)
         {
            _loc6_.§3C§(this.§@c§.hitTest(_loc5_,true));
         }
         if(param2 == §9!%§.§'6§)
         {
            this.§%$§(_loc6_);
         }
      }
      
      private function §#!6§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;!J§ = null;
         var _loc4_:§;!J§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§;u§;
            this.§;u§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§;u§)
            {
               this.§?h§.visible = this.§;u§;
               this.§?h§.§&j§(this.§@c§.stageWidth / 2,this.§@c§.stageHeight / 2);
               _loc3_ = this.§;0§(0);
               _loc4_ = this.§;0§(1);
               if(_loc3_)
               {
                  this.§?h§.§88§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §9!%§.§^!#§)
               {
                  this.§>8§.unshift([1,§9!%§.§^!#§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§;u§ && _loc3_)
               {
                  if(_loc3_.phase == §9!%§.§'6§ || _loc3_.phase == §9!%§.§1-§)
                  {
                     this.§>8§.unshift([1,§9!%§.§'6§,this.§?h§.§1! §,this.§?h§.§!g§]);
                  }
                  else
                  {
                     this.§>8§.unshift([1,§9!%§.§'!!§,this.§?h§.§1! §,this.§?h§.§!g§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§'A§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §%$§(param1:§;!J§) : void
      {
         var _loc4_:§;!J§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§;!J§ = null;
         var _loc3_:Number = §"!-§ * §"!-§;
         for each(_loc4_ in this.§+C§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§;!U§(_loc2_.§3! § + 1);
            this.§+C§.splice(this.§+C§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§;!U§(1);
         }
         this.§+C§.push(param1.clone());
      }
      
      private function §7?§(param1:§;!J§) : void
      {
         var _loc2_:int = this.§;!a§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§;!a§[_loc2_].id == param1.id)
            {
               this.§;!a§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;!a§.push(param1);
      }
      
      private function §;0§(param1:int) : §;!J§
      {
         var _loc2_:§;!J§ = null;
         for each(_loc2_ in this.§;!a§)
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
         return this.§?h§ != null;
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
