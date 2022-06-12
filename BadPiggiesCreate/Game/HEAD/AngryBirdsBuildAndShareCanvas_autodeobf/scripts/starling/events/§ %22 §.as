package starling.events
{
   import §+!-§.Stage;
   import flash.geom.Point;
   
   public class § " §
   {
      
      private static const §,V§:Number = 0.3;
      
      private static const §2!t§:Number = 25;
      
      private static var §8"3§:Vector.<int> = new Vector.<int>(0);
      
      private static var §7B§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §0"§:Stage;
      
      private var §7!`§:Number;
      
      private var §2!g§:Number;
      
      private var §0!h§:§#?§;
      
      private var §=z§:Vector.<§;g§>;
      
      private var §>!q§:Vector.<Array>;
      
      private var §-!%§:Vector.<§;g§>;
      
      private var §<0§:Boolean = false;
      
      private var §1!_§:Boolean = false;
      
      public function § " §(param1:Stage)
      {
         super();
         this.§0"§ = param1;
         this.§2!g§ = 0;
         this.§7!`§ = 0;
         this.§=z§ = new Vector.<§;g§>(0);
         this.§>!q§ = new Vector.<Array>(0);
         this.§-!%§ = new Vector.<§;g§>(0);
         this.§0"§.addEventListener(KeyboardEvent.KEY_DOWN,this.§2!^§);
         this.§0"§.addEventListener(KeyboardEvent.KEY_UP,this.§2!^§);
      }
      
      public function dispose() : void
      {
         this.§0"§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2!^§);
         this.§0"§.removeEventListener(KeyboardEvent.KEY_UP,this.§2!^§);
         if(this.§0!h§)
         {
            this.§0!h§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§;g§ = null;
         var _loc5_:§;g§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§7!`§ += param1;
         this.§2!g§ = 0;
         if(this.§-!%§.length > 0)
         {
            _loc2_ = this.§-!%§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7!`§ - this.§-!%§[_loc2_].timestamp > §,V§)
               {
                  this.§-!%§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§>!q§.length > 0)
         {
            §8"3§.length = §7B§.length = 0;
            for each(_loc5_ in this.§=z§)
            {
               if(_loc5_.phase == §-!#§.§-""§ || _loc5_.phase == §-!#§.§8!U§)
               {
                  _loc5_.§ Y§(§-!#§.§[!#§);
               }
            }
            while(this.§>!q§.length > 0 && §8"3§.indexOf(this.§>!q§[this.§>!q§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§>!q§.pop())[0] as int;
               if((_loc4_ = this.§8i§(_loc3_)) && _loc4_.phase == §-!#§.§#-§ && _loc4_.target)
               {
                  §7B§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§4",§.apply(this,_loc7_);
               §8"3§.push(_loc3_);
            }
            for each(_loc6_ in §7B§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§5!z§,this.§=z§,this.§<0§,this.§1!_§));
               }
            }
            for each(_loc3_ in §8"3§)
            {
               if((_loc4_ = this.§8i§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§5!z§,this.§=z§,this.§<0§,this.§1!_§));
               }
            }
            _loc2_ = this.§=z§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=z§[_loc2_].phase == §-!#§.§&i§)
               {
                  this.§=z§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§2!g§ += 0.00001;
         }
      }
      
      public function §!!c§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§>!q§.unshift(arguments);
         if(this.§1!_§ && this.§;r§ && param1 == 0)
         {
            this.§0!h§.§>!f§(param3,param4,this.§<0§);
            this.§>!q§.unshift([1,param2,this.§0!h§.§?G§,this.§0!h§.§"R§]);
         }
      }
      
      private function §4",§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;g§;
         if((_loc6_ = this.§8i§(param1)) == null)
         {
            _loc6_ = new §;g§(param1,param3,param4,param2,null);
            this.§5!g§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§ Y§(param2);
         _loc6_.§8!4§(this.§7!`§ + this.§2!g§);
         if(param2 == §-!#§.§#-§ || param2 == §-!#§.§-""§)
         {
            _loc6_.§ !!§(this.§0"§.hitTest(_loc5_,true));
         }
         if(param2 == §-!#§.§-""§)
         {
            this.§'!x§(_loc6_);
         }
      }
      
      private function §2!^§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;g§ = null;
         var _loc4_:§;g§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§1!_§;
            this.§1!_§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§;r§ && _loc2_ != this.§1!_§)
            {
               this.§0!h§.visible = this.§1!_§;
               this.§0!h§.§3V§(this.§0"§.stageWidth / 2,this.§0"§.stageHeight / 2);
               _loc3_ = this.§8i§(0);
               _loc4_ = this.§8i§(1);
               if(_loc3_)
               {
                  this.§0!h§.§>!f§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §-!#§.§&i§)
               {
                  this.§>!q§.unshift([1,§-!#§.§&i§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§1!_§ && _loc3_)
               {
                  if(_loc3_.phase == §-!#§.§-""§ || _loc3_.phase == §-!#§.§8!U§)
                  {
                     this.§>!q§.unshift([1,§-!#§.§-""§,this.§0!h§.§?G§,this.§0!h§.§"R§]);
                  }
                  else
                  {
                     this.§>!q§.unshift([1,§-!#§.§#-§,this.§0!h§.§?G§,this.§0!h§.§"R§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§<0§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §'!x§(param1:§;g§) : void
      {
         var _loc4_:§;g§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§;g§ = null;
         var _loc3_:Number = §2!t§ * §2!t§;
         for each(_loc4_ in this.§-!%§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§1!=§(_loc2_.§=w§ + 1);
            this.§-!%§.splice(this.§-!%§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§1!=§(1);
         }
         this.§-!%§.push(param1.clone());
      }
      
      private function §5!g§(param1:§;g§) : void
      {
         var _loc2_:int = this.§=z§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§=z§[_loc2_].id == param1.id)
            {
               this.§=z§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§=z§.push(param1);
      }
      
      private function §8i§(param1:int) : §;g§
      {
         var _loc2_:§;g§ = null;
         for each(_loc2_ in this.§=z§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §;r§() : Boolean
      {
         return this.§0!h§ != null;
      }
      
      public function set §;r§(param1:Boolean) : void
      {
         if(this.§;r§ == param1)
         {
            return;
         }
      }
   }
}
