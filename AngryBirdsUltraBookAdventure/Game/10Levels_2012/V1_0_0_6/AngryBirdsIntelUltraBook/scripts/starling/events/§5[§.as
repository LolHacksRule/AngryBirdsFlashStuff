package starling.events
{
   import §7!B§.Stage;
   import flash.geom.Point;
   
   public class §5[§
   {
      
      private static const §9>§:Number = 0.3;
      
      private static const §`!h§:Number = 25;
      
      private static var §1&§:Vector.<int> = new Vector.<int>(0);
      
      private static var §?0§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §8!x§:Stage;
      
      private var §8!=§:Number;
      
      private var §8T§:Number;
      
      private var §+n§:§1I§;
      
      private var §3U§:Vector.<§9!t§>;
      
      private var §9!Q§:Vector.<Array>;
      
      private var §+s§:Vector.<§9!t§>;
      
      private var §!C§:Boolean = false;
      
      private var §@G§:Boolean = false;
      
      public function §5[§(param1:Stage)
      {
         super();
         this.§8!x§ = param1;
         this.§8T§ = 0;
         this.§8!=§ = 0;
         this.§3U§ = new Vector.<§9!t§>(0);
         this.§9!Q§ = new Vector.<Array>(0);
         this.§+s§ = new Vector.<§9!t§>(0);
         this.§8!x§.addEventListener(KeyboardEvent.KEY_DOWN,this.§ >§);
         this.§8!x§.addEventListener(KeyboardEvent.KEY_UP,this.§ >§);
      }
      
      public function dispose() : void
      {
         this.§8!x§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ >§);
         this.§8!x§.removeEventListener(KeyboardEvent.KEY_UP,this.§ >§);
         if(this.§+n§)
         {
            this.§+n§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§9!t§ = null;
         var _loc5_:§9!t§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§8!=§ += param1;
         this.§8T§ = 0;
         if(this.§+s§.length > 0)
         {
            _loc2_ = this.§+s§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§8!=§ - this.§+s§[_loc2_].timestamp > §9>§)
               {
                  this.§+s§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§9!Q§.length > 0)
         {
            §1&§.length = §?0§.length = 0;
            for each(_loc5_ in this.§3U§)
            {
               if(_loc5_.phase == §^K§.§5i§ || _loc5_.phase == §^K§.§6!A§)
               {
                  _loc5_.§3!f§(§^K§.§9z§);
               }
            }
            while(this.§9!Q§.length > 0 && §1&§.indexOf(this.§9!Q§[this.§9!Q§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§9!Q§.pop())[0] as int;
               if((_loc4_ = this.§[!%§(_loc3_)) && _loc4_.phase == §^K§.§[!7§ && _loc4_.target)
               {
                  §?0§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§^!]§.apply(this,_loc7_);
               §1&§.push(_loc3_);
            }
            for each(_loc6_ in §?0§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§^!>§,this.§3U§,this.§!C§,this.§@G§));
               }
            }
            for each(_loc3_ in §1&§)
            {
               if((_loc4_ = this.§[!%§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§^!>§,this.§3U§,this.§!C§,this.§@G§));
               }
            }
            _loc2_ = this.§3U§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§3U§[_loc2_].phase == §^K§.§3!p§)
               {
                  this.§3U§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§8T§ += 0.00001;
         }
      }
      
      public function §&!_§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§9!Q§.unshift(arguments);
         if(this.§@G§ && this.§catch§ && param1 == 0)
         {
            this.§+n§.§#!+§(param3,param4,this.§!C§);
            this.§9!Q§.unshift([1,param2,this.§+n§.§-!;§,this.§+n§.§8!i§]);
         }
      }
      
      private function §^!]§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§9!t§;
         if((_loc6_ = this.§[!%§(param1)) == null)
         {
            _loc6_ = new §9!t§(param1,param3,param4,param2,null);
            this.§3Q§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§3!f§(param2);
         _loc6_.§>!E§(this.§8!=§ + this.§8T§);
         if(param2 == §^K§.§[!7§ || param2 == §^K§.§5i§)
         {
            _loc6_.§?&§(this.§8!x§.hitTest(_loc5_,true));
         }
         if(param2 == §^K§.§5i§)
         {
            this.§ !;§(_loc6_);
         }
      }
      
      private function § >§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§9!t§ = null;
         var _loc4_:§9!t§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§@G§;
            this.§@G§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§catch§ && _loc2_ != this.§@G§)
            {
               this.§+n§.visible = this.§@G§;
               this.§+n§.§'!6§(this.§8!x§.stageWidth / 2,this.§8!x§.stageHeight / 2);
               _loc3_ = this.§[!%§(0);
               _loc4_ = this.§[!%§(1);
               if(_loc3_)
               {
                  this.§+n§.§#!+§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §^K§.§3!p§)
               {
                  this.§9!Q§.unshift([1,§^K§.§3!p§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§@G§ && _loc3_)
               {
                  if(_loc3_.phase == §^K§.§5i§ || _loc3_.phase == §^K§.§6!A§)
                  {
                     this.§9!Q§.unshift([1,§^K§.§5i§,this.§+n§.§-!;§,this.§+n§.§8!i§]);
                  }
                  else
                  {
                     this.§9!Q§.unshift([1,§^K§.§[!7§,this.§+n§.§-!;§,this.§+n§.§8!i§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!C§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function § !;§(param1:§9!t§) : void
      {
         var _loc4_:§9!t§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§9!t§ = null;
         var _loc3_:Number = §`!h§ * §`!h§;
         for each(_loc4_ in this.§+s§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§-A§(_loc2_.§8_§ + 1);
            this.§+s§.splice(this.§+s§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§-A§(1);
         }
         this.§+s§.push(param1.clone());
      }
      
      private function §3Q§(param1:§9!t§) : void
      {
         var _loc2_:int = this.§3U§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§3U§[_loc2_].id == param1.id)
            {
               this.§3U§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§3U§.push(param1);
      }
      
      private function §[!%§(param1:int) : §9!t§
      {
         var _loc2_:§9!t§ = null;
         for each(_loc2_ in this.§3U§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §catch§() : Boolean
      {
         return this.§+n§ != null;
      }
      
      public function set §catch§(param1:Boolean) : void
      {
         if(this.§catch§ == param1)
         {
            return;
         }
      }
   }
}
