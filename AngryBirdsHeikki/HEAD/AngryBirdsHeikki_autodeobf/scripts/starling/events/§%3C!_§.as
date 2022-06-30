package starling.events
{
   import §6!;§.Stage;
   import flash.geom.Point;
   
   public class §<!_§
   {
      
      private static const §]l§:Number = 0.3;
      
      private static const §>!&§:Number = 25;
      
      private static var §'@§:Vector.<int> = new Vector.<int>(0);
      
      private static var §9;§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §"!J§:Stage;
      
      private var §8!C§:Number;
      
      private var §0a§:Number;
      
      private var §"n§:§0w§;
      
      private var §=§:Vector.<§;!c§>;
      
      private var §"u§:Vector.<Array>;
      
      private var § $§:Vector.<§;!c§>;
      
      private var §;]§:Boolean = false;
      
      private var §<<§:Boolean = false;
      
      public function §<!_§(param1:Stage)
      {
         super();
         this.§"!J§ = param1;
         this.§0a§ = 0;
         this.§8!C§ = 0;
         this.§=§ = new Vector.<§;!c§>(0);
         this.§"u§ = new Vector.<Array>(0);
         this.§ $§ = new Vector.<§;!c§>(0);
         this.§"!J§.addEventListener(KeyboardEvent.KEY_DOWN,this.§0!`§);
         this.§"!J§.addEventListener(KeyboardEvent.KEY_UP,this.§0!`§);
      }
      
      public function dispose() : void
      {
         this.§"!J§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0!`§);
         this.§"!J§.removeEventListener(KeyboardEvent.KEY_UP,this.§0!`§);
         if(this.§"n§)
         {
            this.§"n§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§;!c§ = null;
         var _loc5_:§;!c§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§8!C§ += param1;
         this.§0a§ = 0;
         if(this.§ $§.length > 0)
         {
            _loc2_ = this.§ $§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§8!C§ - this.§ $§[_loc2_].timestamp > §]l§)
               {
                  this.§ $§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§"u§.length > 0)
         {
            §'@§.length = §9;§.length = 0;
            for each(_loc5_ in this.§=§)
            {
               if(_loc5_.phase == §;!#§.§[Q§ || _loc5_.phase == §;!#§.§^?§)
               {
                  _loc5_.§>!+§(§;!#§.§?!`§);
               }
            }
            while(this.§"u§.length > 0 && §'@§.indexOf(this.§"u§[this.§"u§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§"u§.pop())[0] as int;
               if((_loc4_ = this.§,G§(_loc3_)) && _loc4_.phase == §;!#§.§5Y§ && _loc4_.target)
               {
                  §9;§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§2j§.apply(this,_loc7_);
               §'@§.push(_loc3_);
            }
            for each(_loc6_ in §9;§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§9q§,this.§=§,this.§;]§,this.§<<§));
               }
            }
            for each(_loc3_ in §'@§)
            {
               if((_loc4_ = this.§,G§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§9q§,this.§=§,this.§;]§,this.§<<§));
               }
            }
            _loc2_ = this.§=§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=§[_loc2_].phase == §;!#§.§2c§)
               {
                  this.§=§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§0a§ += 0.00001;
         }
      }
      
      public function §?!F§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§"u§.unshift(arguments);
         if(this.§<<§ && this.simulateMultitouch && param1 == 0)
         {
            this.§"n§.§?<§(param3,param4,this.§;]§);
            this.§"u§.unshift([1,param2,this.§"n§.§1=§,this.§"n§.§+!3§]);
         }
      }
      
      private function §2j§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;!c§;
         if((_loc6_ = this.§,G§(param1)) == null)
         {
            _loc6_ = new §;!c§(param1,param3,param4,param2,null);
            this.§[7§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§>!+§(param2);
         _loc6_.§0!!§(this.§8!C§ + this.§0a§);
         if(param2 == §;!#§.§5Y§ || param2 == §;!#§.§[Q§)
         {
            _loc6_.§^!Y§(this.§"!J§.hitTest(_loc5_,true));
         }
         if(param2 == §;!#§.§[Q§)
         {
            this.§'!b§(_loc6_);
         }
      }
      
      private function §0!`§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;!c§ = null;
         var _loc4_:§;!c§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§<<§;
            this.§<<§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§<<§)
            {
               this.§"n§.visible = this.§<<§;
               this.§"n§.§>!8§(this.§"!J§.stageWidth / 2,this.§"!J§.stageHeight / 2);
               _loc3_ = this.§,G§(0);
               _loc4_ = this.§,G§(1);
               if(_loc3_)
               {
                  this.§"n§.§?<§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §;!#§.§2c§)
               {
                  this.§"u§.unshift([1,§;!#§.§2c§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§<<§ && _loc3_)
               {
                  if(_loc3_.phase == §;!#§.§[Q§ || _loc3_.phase == §;!#§.§^?§)
                  {
                     this.§"u§.unshift([1,§;!#§.§[Q§,this.§"n§.§1=§,this.§"n§.§+!3§]);
                  }
                  else
                  {
                     this.§"u§.unshift([1,§;!#§.§5Y§,this.§"n§.§1=§,this.§"n§.§+!3§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§;]§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §'!b§(param1:§;!c§) : void
      {
         var _loc4_:§;!c§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§;!c§ = null;
         var _loc3_:Number = §>!&§ * §>!&§;
         for each(_loc4_ in this.§ $§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§1!#§(_loc2_.§9P§ + 1);
            this.§ $§.splice(this.§ $§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§1!#§(1);
         }
         this.§ $§.push(param1.clone());
      }
      
      private function §[7§(param1:§;!c§) : void
      {
         var _loc2_:int = this.§=§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§=§[_loc2_].id == param1.id)
            {
               this.§=§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§=§.push(param1);
      }
      
      private function §,G§(param1:int) : §;!c§
      {
         var _loc2_:§;!c§ = null;
         for each(_loc2_ in this.§=§)
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
         return this.§"n§ != null;
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
