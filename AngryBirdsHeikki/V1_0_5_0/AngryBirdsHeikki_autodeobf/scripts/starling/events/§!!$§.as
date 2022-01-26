package starling.events
{
   import §[=§.Stage;
   import flash.geom.Point;
   
   public class §!!$§
   {
      
      private static const §-%§:Number = 0.3;
      
      private static const §+P§:Number = 25;
      
      private static var §#f§:Vector.<int> = new Vector.<int>(0);
      
      private static var §7Q§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §8I§:Stage;
      
      private var §0q§:Number;
      
      private var §9z§:Number;
      
      private var §1!R§:§ "§;
      
      private var §=y§:Vector.<§ Y§>;
      
      private var §?i§:Vector.<Array>;
      
      private var §?p§:Vector.<§ Y§>;
      
      private var § 7§:Boolean = false;
      
      private var §-z§:Boolean = false;
      
      public function §!!$§(param1:Stage)
      {
         super();
         this.§8I§ = param1;
         this.§9z§ = 0;
         this.§0q§ = 0;
         this.§=y§ = new Vector.<§ Y§>(0);
         this.§?i§ = new Vector.<Array>(0);
         this.§?p§ = new Vector.<§ Y§>(0);
         this.§8I§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[k§);
         this.§8I§.addEventListener(KeyboardEvent.KEY_UP,this.§[k§);
      }
      
      public function dispose() : void
      {
         this.§8I§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[k§);
         this.§8I§.removeEventListener(KeyboardEvent.KEY_UP,this.§[k§);
         if(this.§1!R§)
         {
            this.§1!R§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§ Y§ = null;
         var _loc5_:§ Y§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§0q§ += param1;
         this.§9z§ = 0;
         if(this.§?p§.length > 0)
         {
            _loc2_ = this.§?p§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§0q§ - this.§?p§[_loc2_].timestamp > §-%§)
               {
                  this.§?p§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§?i§.length > 0)
         {
            §#f§.length = §7Q§.length = 0;
            for each(_loc5_ in this.§=y§)
            {
               if(_loc5_.phase == §9T§.§-0§ || _loc5_.phase == §9T§.§!!d§)
               {
                  _loc5_.§#!M§(§9T§.§ d§);
               }
            }
            while(this.§?i§.length > 0 && §#f§.indexOf(this.§?i§[this.§?i§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§?i§.pop())[0] as int;
               if((_loc4_ = this.§0!B§(_loc3_)) && _loc4_.phase == §9T§.§9,§ && _loc4_.target)
               {
                  §7Q§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§&M§.apply(this,_loc7_);
               §#f§.push(_loc3_);
            }
            for each(_loc6_ in §7Q§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§8!!§,this.§=y§,this.§ 7§,this.§-z§));
               }
            }
            for each(_loc3_ in §#f§)
            {
               if((_loc4_ = this.§0!B§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§8!!§,this.§=y§,this.§ 7§,this.§-z§));
               }
            }
            _loc2_ = this.§=y§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=y§[_loc2_].phase == §9T§.§"d§)
               {
                  this.§=y§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§9z§ += 0.00001;
         }
      }
      
      public function §,!S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§?i§.unshift(arguments);
         if(this.§-z§ && this.simulateMultitouch && param1 == 0)
         {
            this.§1!R§.§-!A§(param3,param4,this.§ 7§);
            this.§?i§.unshift([1,param2,this.§1!R§.§^O§,this.§1!R§.§3!#§]);
         }
      }
      
      private function §&M§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§ Y§;
         if((_loc6_ = this.§0!B§(param1)) == null)
         {
            _loc6_ = new § Y§(param1,param3,param4,param2,null);
            this.§&B§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§#!M§(param2);
         _loc6_.§]!K§(this.§0q§ + this.§9z§);
         if(param2 == §9T§.§9,§ || param2 == §9T§.§-0§)
         {
            _loc6_.§^!M§(this.§8I§.hitTest(_loc5_,true));
         }
         if(param2 == §9T§.§-0§)
         {
            this.§[%§(_loc6_);
         }
      }
      
      private function §[k§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§ Y§ = null;
         var _loc4_:§ Y§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§-z§;
            this.§-z§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§-z§)
            {
               this.§1!R§.visible = this.§-z§;
               this.§1!R§.§1x§(this.§8I§.stageWidth / 2,this.§8I§.stageHeight / 2);
               _loc3_ = this.§0!B§(0);
               _loc4_ = this.§0!B§(1);
               if(_loc3_)
               {
                  this.§1!R§.§-!A§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §9T§.§"d§)
               {
                  this.§?i§.unshift([1,§9T§.§"d§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§-z§ && _loc3_)
               {
                  if(_loc3_.phase == §9T§.§-0§ || _loc3_.phase == §9T§.§!!d§)
                  {
                     this.§?i§.unshift([1,§9T§.§-0§,this.§1!R§.§^O§,this.§1!R§.§3!#§]);
                  }
                  else
                  {
                     this.§?i§.unshift([1,§9T§.§9,§,this.§1!R§.§^O§,this.§1!R§.§3!#§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§ 7§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §[%§(param1:§ Y§) : void
      {
         var _loc4_:§ Y§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§ Y§ = null;
         var _loc3_:Number = §+P§ * §+P§;
         for each(_loc4_ in this.§?p§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§<a§(_loc2_.§5e§ + 1);
            this.§?p§.splice(this.§?p§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§<a§(1);
         }
         this.§?p§.push(param1.clone());
      }
      
      private function §&B§(param1:§ Y§) : void
      {
         var _loc2_:int = this.§=y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§=y§[_loc2_].id == param1.id)
            {
               this.§=y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§=y§.push(param1);
      }
      
      private function §0!B§(param1:int) : § Y§
      {
         var _loc2_:§ Y§ = null;
         for each(_loc2_ in this.§=y§)
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
         return this.§1!R§ != null;
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
