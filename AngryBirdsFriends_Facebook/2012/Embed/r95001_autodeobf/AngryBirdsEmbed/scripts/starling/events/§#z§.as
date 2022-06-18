package starling.events
{
   import §<k§.Stage;
   import flash.geom.Point;
   
   public class §#z§
   {
      
      private static const §;;§:Number = 0.3;
      
      private static const §7%§:Number = 25;
      
      private static var §true§:Vector.<int> = new Vector.<int>(0);
      
      private static var §6o§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var § d§:Stage;
      
      private var §3Y§:Number;
      
      private var §=u§:Number;
      
      private var §1+§:§0i§;
      
      private var §^R§:Vector.<§84§>;
      
      private var §+<§:Vector.<Array>;
      
      private var §6N§:Vector.<§84§>;
      
      private var §5`§:Boolean = false;
      
      private var §4!6§:Boolean = false;
      
      public function §#z§(param1:Stage)
      {
         super();
         this.§ d§ = param1;
         this.§=u§ = 0;
         this.§3Y§ = 0;
         this.§^R§ = new Vector.<§84§>(0);
         this.§+<§ = new Vector.<Array>(0);
         this.§6N§ = new Vector.<§84§>(0);
         this.§ d§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§ d§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§ d§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§ d§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§1+§)
         {
            this.§1+§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§84§ = null;
         var _loc5_:§84§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§3Y§ += param1;
         this.§=u§ = 0;
         if(this.§6N§.length > 0)
         {
            _loc2_ = this.§6N§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§3Y§ - this.§6N§[_loc2_].timestamp > §;;§)
               {
                  this.§6N§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§+<§.length > 0)
         {
            §true§.length = §6o§.length = 0;
            for each(_loc5_ in this.§^R§)
            {
               if(_loc5_.phase == §8P§.§>[§ || _loc5_.phase == §8P§.§5x§)
               {
                  _loc5_.§]'§(§8P§.§#!-§);
               }
            }
            while(this.§+<§.length > 0 && §true§.indexOf(this.§+<§[this.§+<§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§+<§.pop())[0] as int;
               if((_loc4_ = this.§[9§(_loc3_)) && _loc4_.phase == §8P§.§5!"§ && _loc4_.target)
               {
                  §6o§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§?!@§.apply(this,_loc7_);
               §true§.push(_loc3_);
            }
            for each(_loc6_ in §6o§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§"+§,this.§^R§,this.§5`§,this.§4!6§));
               }
            }
            for each(_loc3_ in §true§)
            {
               if((_loc4_ = this.§[9§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§"+§,this.§^R§,this.§5`§,this.§4!6§));
               }
            }
            _loc2_ = this.§^R§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^R§[_loc2_].phase == §8P§.§ G§)
               {
                  this.§^R§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§=u§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§+<§.unshift(arguments);
         if(this.§4!6§ && this.§]l§ && param1 == 0)
         {
            this.§1+§.§'<§(param3,param4,this.§5`§);
            this.§+<§.unshift([1,param2,this.§1+§.§,_§,this.§1+§.§#!9§]);
         }
      }
      
      private function §?!@§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§84§;
         if((_loc6_ = this.§[9§(param1)) == null)
         {
            _loc6_ = new §84§(param1,param3,param4,param2,null);
            this.§"O§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§]'§(param2);
         _loc6_.§%z§(this.§3Y§ + this.§=u§);
         if(param2 == §8P§.§5!"§ || param2 == §8P§.§>[§)
         {
            _loc6_.§2n§(this.§ d§.hitTest(_loc5_,true));
         }
         if(param2 == §8P§.§>[§)
         {
            this.§"g§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§84§ = null;
         var _loc4_:§84§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§4!6§;
            this.§4!6§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§]l§ && _loc2_ != this.§4!6§)
            {
               this.§1+§.visible = this.§4!6§;
               this.§1+§.§^7§(this.§ d§.stageWidth / 2,this.§ d§.stageHeight / 2);
               _loc3_ = this.§[9§(0);
               _loc4_ = this.§[9§(1);
               if(_loc3_)
               {
                  this.§1+§.§'<§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §8P§.§ G§)
               {
                  this.§+<§.unshift([1,§8P§.§ G§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§4!6§ && _loc3_)
               {
                  if(_loc3_.phase == §8P§.§>[§ || _loc3_.phase == §8P§.§5x§)
                  {
                     this.§+<§.unshift([1,§8P§.§>[§,this.§1+§.§,_§,this.§1+§.§#!9§]);
                  }
                  else
                  {
                     this.§+<§.unshift([1,§8P§.§5!"§,this.§1+§.§,_§,this.§1+§.§#!9§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§5`§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §"g§(param1:§84§) : void
      {
         var _loc4_:§84§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§84§ = null;
         var _loc3_:Number = §7%§ * §7%§;
         for each(_loc4_ in this.§6N§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§"!4§(_loc2_.§0a§ + 1);
            this.§6N§.splice(this.§6N§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§"!4§(1);
         }
         this.§6N§.push(param1.clone());
      }
      
      private function §"O§(param1:§84§) : void
      {
         var _loc2_:int = this.§^R§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§^R§[_loc2_].id == param1.id)
            {
               this.§^R§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^R§.push(param1);
      }
      
      private function §[9§(param1:int) : §84§
      {
         var _loc2_:§84§ = null;
         for each(_loc2_ in this.§^R§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §]l§() : Boolean
      {
         return this.§1+§ != null;
      }
      
      public function set §]l§(param1:Boolean) : void
      {
         if(this.§]l§ == param1)
         {
            return;
         }
      }
   }
}
