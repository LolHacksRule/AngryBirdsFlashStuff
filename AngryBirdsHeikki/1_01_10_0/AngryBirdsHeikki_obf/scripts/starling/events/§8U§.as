package starling.events
{
   import §2Y§.Stage;
   import flash.geom.Point;
   
   public class §8U§
   {
      
      private static const §9!R§:Number = 0.3;
      
      private static const §+p§:Number = 25;
      
      private static var §4[§:Vector.<int> = new Vector.<int>(0);
      
      private static var §2b§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §18§:Stage;
      
      private var §=u§:Number;
      
      private var § !!§:Number;
      
      private var § `§:§?!R§;
      
      private var §;H§:Vector.<§?X§>;
      
      private var §3D§:Vector.<Array>;
      
      private var §#!<§:Vector.<§?X§>;
      
      private var §9!V§:Boolean = false;
      
      private var §@D§:Boolean = false;
      
      public function §8U§(param1:Stage)
      {
         super();
         this.§18§ = param1;
         this.§ !!§ = 0;
         this.§=u§ = 0;
         this.§;H§ = new Vector.<§?X§>(0);
         this.§3D§ = new Vector.<Array>(0);
         this.§#!<§ = new Vector.<§?X§>(0);
         this.§18§.addEventListener(KeyboardEvent.KEY_DOWN,this.§'!7§);
         this.§18§.addEventListener(KeyboardEvent.KEY_UP,this.§'!7§);
      }
      
      public function dispose() : void
      {
         this.§18§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'!7§);
         this.§18§.removeEventListener(KeyboardEvent.KEY_UP,this.§'!7§);
         if(this.§ `§)
         {
            this.§ `§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§?X§ = null;
         var _loc5_:§?X§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§=u§ += param1;
         this.§ !!§ = 0;
         if(this.§#!<§.length > 0)
         {
            _loc2_ = this.§#!<§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=u§ - this.§#!<§[_loc2_].timestamp > §9!R§)
               {
                  this.§#!<§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§3D§.length > 0)
         {
            §4[§.length = §2b§.length = 0;
            for each(_loc5_ in this.§;H§)
            {
               if(_loc5_.phase == §9i§.§%J§ || _loc5_.phase == §9i§.§]W§)
               {
                  _loc5_.§3!1§(§9i§.§!!#§);
               }
            }
            while(this.§3D§.length > 0 && §4[§.indexOf(this.§3D§[this.§3D§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§3D§.pop())[0] as int;
               if((_loc4_ = this.§5,§(_loc3_)) && _loc4_.phase == §9i§.§'+§ && _loc4_.target)
               {
                  §2b§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§=;§.apply(this,_loc7_);
               §4[§.push(_loc3_);
            }
            for each(_loc6_ in §2b§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§]!-§,this.§;H§,this.§9!V§,this.§@D§));
               }
            }
            for each(_loc3_ in §4[§)
            {
               if((_loc4_ = this.§5,§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§]!-§,this.§;H§,this.§9!V§,this.§@D§));
               }
            }
            _loc2_ = this.§;H§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§;H§[_loc2_].phase == §9i§.§9a§)
               {
                  this.§;H§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§ !!§ += 0.00001;
         }
      }
      
      public function §&I§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§3D§.unshift(arguments);
         if(this.§@D§ && this.simulateMultitouch && param1 == 0)
         {
            this.§ `§.§case§(param3,param4,this.§9!V§);
            this.§3D§.unshift([1,param2,this.§ `§.§6P§,this.§ `§.§<I§]);
         }
      }
      
      private function §=;§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§?X§;
         if((_loc6_ = this.§5,§(param1)) == null)
         {
            _loc6_ = new §?X§(param1,param3,param4,param2,null);
            this.§74§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§3!1§(param2);
         _loc6_.§^!C§(this.§=u§ + this.§ !!§);
         if(param2 == §9i§.§'+§ || param2 == §9i§.§%J§)
         {
            _loc6_.§&z§(this.§18§.hitTest(_loc5_,true));
         }
         if(param2 == §9i§.§%J§)
         {
            this.§`Q§(_loc6_);
         }
      }
      
      private function §'!7§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§?X§ = null;
         var _loc4_:§?X§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§@D§;
            this.§@D§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§@D§)
            {
               this.§ `§.visible = this.§@D§;
               this.§ `§.§`!§(this.§18§.stageWidth / 2,this.§18§.stageHeight / 2);
               _loc3_ = this.§5,§(0);
               _loc4_ = this.§5,§(1);
               if(_loc3_)
               {
                  this.§ `§.§case§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §9i§.§9a§)
               {
                  this.§3D§.unshift([1,§9i§.§9a§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§@D§ && _loc3_)
               {
                  if(_loc3_.phase == §9i§.§%J§ || _loc3_.phase == §9i§.§]W§)
                  {
                     this.§3D§.unshift([1,§9i§.§%J§,this.§ `§.§6P§,this.§ `§.§<I§]);
                  }
                  else
                  {
                     this.§3D§.unshift([1,§9i§.§'+§,this.§ `§.§6P§,this.§ `§.§<I§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§9!V§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §`Q§(param1:§?X§) : void
      {
         var _loc4_:§?X§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§?X§ = null;
         var _loc3_:Number = §+p§ * §+p§;
         for each(_loc4_ in this.§#!<§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§!!Y§(_loc2_.§#X§ + 1);
            this.§#!<§.splice(this.§#!<§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§!!Y§(1);
         }
         this.§#!<§.push(param1.clone());
      }
      
      private function §74§(param1:§?X§) : void
      {
         var _loc2_:int = this.§;H§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§;H§[_loc2_].id == param1.id)
            {
               this.§;H§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;H§.push(param1);
      }
      
      private function §5,§(param1:int) : §?X§
      {
         var _loc2_:§?X§ = null;
         for each(_loc2_ in this.§;H§)
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
         return this.§ `§ != null;
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
