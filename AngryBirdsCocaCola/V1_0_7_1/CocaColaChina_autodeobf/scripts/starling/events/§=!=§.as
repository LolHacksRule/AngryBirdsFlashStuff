package starling.events
{
   import §,!Q§.Stage;
   import flash.geom.Point;
   
   public class §=!=§
   {
      
      private static const §'A§:Number = 0.3;
      
      private static const §;u§:Number = 25;
      
      private static var §8d§:Vector.<int> = new Vector.<int>(0);
      
      private static var §#7§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §@c§:Stage;
      
      private var §4!=§:Number;
      
      private var §9!%§:Number;
      
      private var §'!!§:§8I§;
      
      private var §'6§:Vector.<§&!7§>;
      
      private var §1-§:Vector.<Array>;
      
      private var §>E§:Vector.<§&!7§>;
      
      private var §^!#§:Boolean = false;
      
      private var §>Z§:Boolean = false;
      
      public function §=!=§(param1:Stage)
      {
         super();
         this.§@c§ = param1;
         this.§9!%§ = 0;
         this.§4!=§ = 0;
         this.§'6§ = new Vector.<§&!7§>(0);
         this.§1-§ = new Vector.<Array>(0);
         this.§>E§ = new Vector.<§&!7§>(0);
         this.§@c§.addEventListener(KeyboardEvent.KEY_DOWN,this.§"!J§);
         this.§@c§.addEventListener(KeyboardEvent.KEY_UP,this.§"!J§);
      }
      
      public function dispose() : void
      {
         this.§@c§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§"!J§);
         this.§@c§.removeEventListener(KeyboardEvent.KEY_UP,this.§"!J§);
         if(this.§'!!§)
         {
            this.§'!!§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§&!7§ = null;
         var _loc5_:§&!7§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§4!=§ += param1;
         this.§9!%§ = 0;
         if(this.§>E§.length > 0)
         {
            _loc2_ = this.§>E§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4!=§ - this.§>E§[_loc2_].timestamp > §'A§)
               {
                  this.§>E§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§1-§.length > 0)
         {
            §8d§.length = §#7§.length = 0;
            for each(_loc5_ in this.§'6§)
            {
               if(_loc5_.phase == §!!S§.§,![§ || _loc5_.phase == §!!S§.§9!K§)
               {
                  _loc5_.§4g§(§!!S§.§#!_§);
               }
            }
            while(this.§1-§.length > 0 && §8d§.indexOf(this.§1-§[this.§1-§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§1-§.pop())[0] as int;
               if((_loc4_ = this.§+C§(_loc3_)) && _loc4_.phase == §!!S§.§54§ && _loc4_.target)
               {
                  §#7§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§?h§.apply(this,_loc7_);
               §8d§.push(_loc3_);
            }
            for each(_loc6_ in §#7§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§8X§,this.§'6§,this.§^!#§,this.§>Z§));
               }
            }
            for each(_loc3_ in §8d§)
            {
               if((_loc4_ = this.§+C§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§8X§,this.§'6§,this.§^!#§,this.§>Z§));
               }
            }
            _loc2_ = this.§'6§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§'6§[_loc2_].phase == §!!S§.§3§)
               {
                  this.§'6§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§9!%§ += 0.00001;
         }
      }
      
      public function §&!<§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§1-§.unshift(arguments);
         if(this.§>Z§ && this.simulateMultitouch && param1 == 0)
         {
            this.§'!!§.§3! §(param3,param4,this.§^!#§);
            this.§1-§.unshift([1,param2,this.§'!!§.§@Z§,this.§'!!§.§88§]);
         }
      }
      
      private function §?h§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§&!7§;
         if((_loc6_ = this.§+C§(param1)) == null)
         {
            _loc6_ = new §&!7§(param1,param3,param4,param2,null);
            this.§>8§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§4g§(param2);
         _loc6_.§%!a§(this.§4!=§ + this.§9!%§);
         if(param2 == §!!S§.§54§ || param2 == §!!S§.§,![§)
         {
            _loc6_.§2%§(this.§@c§.hitTest(_loc5_,true));
         }
         if(param2 == §!!S§.§,![§)
         {
            this.§;!a§(_loc6_);
         }
      }
      
      private function §"!J§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§&!7§ = null;
         var _loc4_:§&!7§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§>Z§;
            this.§>Z§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§>Z§)
            {
               this.§'!!§.visible = this.§>Z§;
               this.§'!!§.§+n§(this.§@c§.stageWidth / 2,this.§@c§.stageHeight / 2);
               _loc3_ = this.§+C§(0);
               _loc4_ = this.§+C§(1);
               if(_loc3_)
               {
                  this.§'!!§.§3! §(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §!!S§.§3§)
               {
                  this.§1-§.unshift([1,§!!S§.§3§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§>Z§ && _loc3_)
               {
                  if(_loc3_.phase == §!!S§.§,![§ || _loc3_.phase == §!!S§.§9!K§)
                  {
                     this.§1-§.unshift([1,§!!S§.§,![§,this.§'!!§.§@Z§,this.§'!!§.§88§]);
                  }
                  else
                  {
                     this.§1-§.unshift([1,§!!S§.§54§,this.§'!!§.§@Z§,this.§'!!§.§88§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§^!#§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §;!a§(param1:§&!7§) : void
      {
         var _loc4_:§&!7§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§&!7§ = null;
         var _loc3_:Number = §;u§ * §;u§;
         for each(_loc4_ in this.§>E§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§-!U§(_loc2_.§'i§ + 1);
            this.§>E§.splice(this.§>E§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§-!U§(1);
         }
         this.§>E§.push(param1.clone());
      }
      
      private function §>8§(param1:§&!7§) : void
      {
         var _loc2_:int = this.§'6§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§'6§[_loc2_].id == param1.id)
            {
               this.§'6§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§'6§.push(param1);
      }
      
      private function §+C§(param1:int) : §&!7§
      {
         var _loc2_:§&!7§ = null;
         for each(_loc2_ in this.§'6§)
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
         return this.§'!!§ != null;
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
