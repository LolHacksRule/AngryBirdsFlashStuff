package starling.events
{
   import §`!n§.Stage;
   import flash.geom.Point;
   
   public class §'!f§
   {
      
      private static const §?L§:Number = 0.3;
      
      private static const §?l§:Number = 25;
      
      private static var §><§:Vector.<int> = new Vector.<int>(0);
      
      private static var §do§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §]4§:Stage;
      
      private var §`C§:Number;
      
      private var §`i§:Number;
      
      private var §"b§:§5!F§;
      
      private var §[7§:Vector.<§!4§>;
      
      private var §@!b§:Vector.<Array>;
      
      private var §5!=§:Vector.<§!4§>;
      
      private var §'!0§:Boolean = false;
      
      private var §2!E§:Boolean = false;
      
      public function §'!f§(param1:Stage)
      {
         super();
         this.§]4§ = param1;
         this.§`i§ = 0;
         this.§`C§ = 0;
         this.§[7§ = new Vector.<§!4§>(0);
         this.§@!b§ = new Vector.<Array>(0);
         this.§5!=§ = new Vector.<§!4§>(0);
         this.§]4§.addEventListener(KeyboardEvent.KEY_DOWN,this.§!>§);
         this.§]4§.addEventListener(KeyboardEvent.KEY_UP,this.§!>§);
      }
      
      public function dispose() : void
      {
         this.§]4§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!>§);
         this.§]4§.removeEventListener(KeyboardEvent.KEY_UP,this.§!>§);
         if(this.§"b§)
         {
            this.§"b§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§!4§ = null;
         var _loc5_:§!4§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§`C§ += param1;
         this.§`i§ = 0;
         if(this.§5!=§.length > 0)
         {
            _loc2_ = this.§5!=§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§`C§ - this.§5!=§[_loc2_].timestamp > §?L§)
               {
                  this.§5!=§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§@!b§.length > 0)
         {
            §><§.length = §do§.length = 0;
            for each(_loc5_ in this.§[7§)
            {
               if(_loc5_.phase == §=b§.§;i§ || _loc5_.phase == §=b§.§`U§)
               {
                  _loc5_.§`!O§(§=b§.§&!!§);
               }
            }
            while(this.§@!b§.length > 0 && §><§.indexOf(this.§@!b§[this.§@!b§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§@!b§.pop())[0] as int;
               if((_loc4_ = this.§3!-§(_loc3_)) && _loc4_.phase == §=b§.§0k§ && _loc4_.target)
               {
                  §do§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§94§.apply(this,_loc7_);
               §><§.push(_loc3_);
            }
            for each(_loc6_ in §do§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§,!E§,this.§[7§,this.§'!0§,this.§2!E§));
               }
            }
            for each(_loc3_ in §><§)
            {
               if((_loc4_ = this.§3!-§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§,!E§,this.§[7§,this.§'!0§,this.§2!E§));
               }
            }
            _loc2_ = this.§[7§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[7§[_loc2_].phase == §=b§.§'q§)
               {
                  this.§[7§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§`i§ += 0.00001;
         }
      }
      
      public function §-!m§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§@!b§.unshift(arguments);
         if(this.§2!E§ && this.simulateMultitouch && param1 == 0)
         {
            this.§"b§.§4!8§(param3,param4,this.§'!0§);
            this.§@!b§.unshift([1,param2,this.§"b§.§0s§,this.§"b§.§[!-§]);
         }
      }
      
      private function §94§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§!4§;
         if((_loc6_ = this.§3!-§(param1)) == null)
         {
            _loc6_ = new §!4§(param1,param3,param4,param2,null);
            this.§#;§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§`!O§(param2);
         _loc6_.override(this.§`C§ + this.§`i§);
         if(param2 == §=b§.§0k§ || param2 == §=b§.§;i§)
         {
            _loc6_.§ !+§(this.§]4§.hitTest(_loc5_,true));
         }
         if(param2 == §=b§.§;i§)
         {
            this.§;?§(_loc6_);
         }
      }
      
      private function §!>§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§!4§ = null;
         var _loc4_:§!4§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§2!E§;
            this.§2!E§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§2!E§)
            {
               this.§"b§.visible = this.§2!E§;
               this.§"b§.§-!?§(this.§]4§.stageWidth / 2,this.§]4§.stageHeight / 2);
               _loc3_ = this.§3!-§(0);
               _loc4_ = this.§3!-§(1);
               if(_loc3_)
               {
                  this.§"b§.§4!8§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §=b§.§'q§)
               {
                  this.§@!b§.unshift([1,§=b§.§'q§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§2!E§ && _loc3_)
               {
                  if(_loc3_.phase == §=b§.§;i§ || _loc3_.phase == §=b§.§`U§)
                  {
                     this.§@!b§.unshift([1,§=b§.§;i§,this.§"b§.§0s§,this.§"b§.§[!-§]);
                  }
                  else
                  {
                     this.§@!b§.unshift([1,§=b§.§0k§,this.§"b§.§0s§,this.§"b§.§[!-§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§'!0§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §;?§(param1:§!4§) : void
      {
         var _loc4_:§!4§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§!4§ = null;
         var _loc3_:Number = §?l§ * §?l§;
         for each(_loc4_ in this.§5!=§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§++§(_loc2_.§#!l§ + 1);
            this.§5!=§.splice(this.§5!=§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§++§(1);
         }
         this.§5!=§.push(param1.clone());
      }
      
      private function §#;§(param1:§!4§) : void
      {
         var _loc2_:int = this.§[7§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[7§[_loc2_].id == param1.id)
            {
               this.§[7§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[7§.push(param1);
      }
      
      private function §3!-§(param1:int) : §!4§
      {
         var _loc2_:§!4§ = null;
         for each(_loc2_ in this.§[7§)
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
         return this.§"b§ != null;
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
