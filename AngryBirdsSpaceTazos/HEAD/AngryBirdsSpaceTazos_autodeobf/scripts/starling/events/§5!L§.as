package starling.events
{
   import §&!]§.Stage;
   import flash.geom.Point;
   
   public class §5!L§
   {
      
      private static const §8V§:Number = 0.3;
      
      private static const §8%§:Number = 25;
      
      private static var §""<§:Vector.<int> = new Vector.<int>(0);
      
      private static var §4!e§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §6N§:Stage;
      
      private var § +§:Number;
      
      private var §9"D§:Number;
      
      private var §[!@§:§`=§;
      
      private var §2C§:Vector.<§%!T§>;
      
      private var §]!K§:Vector.<Array>;
      
      private var §3"$§:Vector.<§%!T§>;
      
      private var §+" §:Boolean = false;
      
      private var §-G§:Boolean = false;
      
      public function §5!L§(param1:Stage)
      {
         super();
         this.§6N§ = param1;
         this.§9"D§ = 0;
         this.§ +§ = 0;
         this.§2C§ = new Vector.<§%!T§>(0);
         this.§]!K§ = new Vector.<Array>(0);
         this.§3"$§ = new Vector.<§%!T§>(0);
         this.§6N§.addEventListener(KeyboardEvent.KEY_DOWN,this.§9!k§);
         this.§6N§.addEventListener(KeyboardEvent.KEY_UP,this.§9!k§);
      }
      
      public function dispose() : void
      {
         this.§6N§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§9!k§);
         this.§6N§.removeEventListener(KeyboardEvent.KEY_UP,this.§9!k§);
         if(this.§[!@§)
         {
            this.§[!@§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§%!T§ = null;
         var _loc5_:§%!T§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§ +§ += param1;
         this.§9"D§ = 0;
         if(this.§3"$§.length > 0)
         {
            _loc2_ = this.§3"$§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§ +§ - this.§3"$§[_loc2_].timestamp > §8V§)
               {
                  this.§3"$§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§]!K§.length > 0)
         {
            §""<§.length = §4!e§.length = 0;
            for each(_loc5_ in this.§2C§)
            {
               if(_loc5_.phase == §?=§.§8q§ || _loc5_.phase == §?=§.§2!&§)
               {
                  _loc5_.§-A§(§?=§.§-!s§);
               }
            }
            while(this.§]!K§.length > 0 && §""<§.indexOf(this.§]!K§[this.§]!K§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§]!K§.pop())[0] as int;
               if((_loc4_ = this.§1!o§(_loc3_)) && _loc4_.phase == §?=§.§'A§ && _loc4_.target)
               {
                  §4!e§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§,!S§.apply(this,_loc7_);
               §""<§.push(_loc3_);
            }
            for each(_loc6_ in §4!e§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§-!E§,this.§2C§,this.§+" §,this.§-G§));
               }
            }
            for each(_loc3_ in §""<§)
            {
               if((_loc4_ = this.§1!o§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§-!E§,this.§2C§,this.§+" §,this.§-G§));
               }
            }
            _loc2_ = this.§2C§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§2C§[_loc2_].phase == §?=§.§;!J§)
               {
                  this.§2C§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§9"D§ += 0.00001;
         }
      }
      
      public function §33§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§]!K§.unshift(arguments);
         if(this.§-G§ && this.§5,§ && param1 == 0)
         {
            this.§[!@§.§1!8§(param3,param4,this.§+" §);
            this.§]!K§.unshift([1,param2,this.§[!@§.§5!o§,this.§[!@§.§9!3§]);
         }
      }
      
      private function §,!S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§%!T§;
         if((_loc6_ = this.§1!o§(param1)) == null)
         {
            _loc6_ = new §%!T§(param1,param3,param4,param2,null);
            this.§<k§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§-A§(param2);
         _loc6_.§!w§(this.§ +§ + this.§9"D§);
         if(param2 == §?=§.§'A§ || param2 == §?=§.§8q§)
         {
            _loc6_.§!! §(this.§6N§.hitTest(_loc5_,true));
         }
         if(param2 == §?=§.§8q§)
         {
            this.§2!4§(_loc6_);
         }
      }
      
      private function §9!k§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§%!T§ = null;
         var _loc4_:§%!T§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§-G§;
            this.§-G§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§5,§ && _loc2_ != this.§-G§)
            {
               this.§[!@§.visible = this.§-G§;
               this.§[!@§.§!q§(this.§6N§.stageWidth / 2,this.§6N§.stageHeight / 2);
               _loc3_ = this.§1!o§(0);
               _loc4_ = this.§1!o§(1);
               if(_loc3_)
               {
                  this.§[!@§.§1!8§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §?=§.§;!J§)
               {
                  this.§]!K§.unshift([1,§?=§.§;!J§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§-G§ && _loc3_)
               {
                  if(_loc3_.phase == §?=§.§8q§ || _loc3_.phase == §?=§.§2!&§)
                  {
                     this.§]!K§.unshift([1,§?=§.§8q§,this.§[!@§.§5!o§,this.§[!@§.§9!3§]);
                  }
                  else
                  {
                     this.§]!K§.unshift([1,§?=§.§'A§,this.§[!@§.§5!o§,this.§[!@§.§9!3§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§+" § = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §2!4§(param1:§%!T§) : void
      {
         var _loc4_:§%!T§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§%!T§ = null;
         var _loc3_:Number = §8%§ * §8%§;
         for each(_loc4_ in this.§3"$§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§6"B§(_loc2_.§ "=§ + 1);
            this.§3"$§.splice(this.§3"$§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§6"B§(1);
         }
         this.§3"$§.push(param1.clone());
      }
      
      private function §<k§(param1:§%!T§) : void
      {
         var _loc2_:int = this.§2C§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§2C§[_loc2_].id == param1.id)
            {
               this.§2C§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2C§.push(param1);
      }
      
      private function §1!o§(param1:int) : §%!T§
      {
         var _loc2_:§%!T§ = null;
         for each(_loc2_ in this.§2C§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §5,§() : Boolean
      {
         return this.§[!@§ != null;
      }
      
      public function set §5,§(param1:Boolean) : void
      {
         if(this.§5,§ == param1)
         {
            return;
         }
      }
   }
}
