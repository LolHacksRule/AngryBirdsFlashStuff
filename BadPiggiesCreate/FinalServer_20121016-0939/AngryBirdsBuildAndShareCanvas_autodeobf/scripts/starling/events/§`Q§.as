package starling.events
{
   import §default§.Stage;
   import flash.geom.Point;
   
   public class §`Q§
   {
      
      private static const §8S§:Number = 0.3;
      
      private static const §%,§:Number = 25;
      
      private static var §9"4§:Vector.<int> = new Vector.<int>(0);
      
      private static var §`"3§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var § "3§:Stage;
      
      private var §1"=§:Number;
      
      private var §8!]§:Number;
      
      private var §0]§:§<E§;
      
      private var § w§:Vector.<§1[§>;
      
      private var §']§:Vector.<Array>;
      
      private var §>'§:Vector.<§1[§>;
      
      private var §+!W§:Boolean = false;
      
      private var §0!J§:Boolean = false;
      
      public function §`Q§(param1:Stage)
      {
         super();
         this.§ "3§ = param1;
         this.§8!]§ = 0;
         this.§1"=§ = 0;
         this.§ w§ = new Vector.<§1[§>(0);
         this.§']§ = new Vector.<Array>(0);
         this.§>'§ = new Vector.<§1[§>(0);
         this.§ "3§.addEventListener(KeyboardEvent.KEY_DOWN,this.§;P§);
         this.§ "3§.addEventListener(KeyboardEvent.KEY_UP,this.§;P§);
      }
      
      public function dispose() : void
      {
         this.§ "3§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§;P§);
         this.§ "3§.removeEventListener(KeyboardEvent.KEY_UP,this.§;P§);
         if(this.§0]§)
         {
            this.§0]§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§1[§ = null;
         var _loc5_:§1[§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§1"=§ += param1;
         this.§8!]§ = 0;
         if(this.§>'§.length > 0)
         {
            _loc2_ = this.§>'§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§1"=§ - this.§>'§[_loc2_].timestamp > §8S§)
               {
                  this.§>'§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§']§.length > 0)
         {
            §9"4§.length = §`"3§.length = 0;
            for each(_loc5_ in this.§ w§)
            {
               if(_loc5_.phase == §<!h§.§?!o§ || _loc5_.phase == §<!h§.§-!V§)
               {
                  _loc5_.§#S§(§<!h§.§["2§);
               }
            }
            while(this.§']§.length > 0 && §9"4§.indexOf(this.§']§[this.§']§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§']§.pop())[0] as int;
               if((_loc4_ = this.§5!g§(_loc3_)) && _loc4_.phase == §<!h§.§"W§ && _loc4_.target)
               {
                  §`"3§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§&!S§.apply(this,_loc7_);
               §9"4§.push(_loc3_);
            }
            for each(_loc6_ in §`"3§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§9>§,this.§ w§,this.§+!W§,this.§0!J§));
               }
            }
            for each(_loc3_ in §9"4§)
            {
               if((_loc4_ = this.§5!g§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§9>§,this.§ w§,this.§+!W§,this.§0!J§));
               }
            }
            _loc2_ = this.§ w§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§ w§[_loc2_].phase == §<!h§.§,"#§)
               {
                  this.§ w§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§8!]§ += 0.00001;
         }
      }
      
      public function §&!d§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§']§.unshift(arguments);
         if(this.§0!J§ && this.§6"§ && param1 == 0)
         {
            this.§0]§.§8!k§(param3,param4,this.§+!W§);
            this.§']§.unshift([1,param2,this.§0]§.§ ^§,this.§0]§.§'c§]);
         }
      }
      
      private function §&!S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§1[§;
         if((_loc6_ = this.§5!g§(param1)) == null)
         {
            _loc6_ = new §1[§(param1,param3,param4,param2,null);
            this.§2!<§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§#S§(param2);
         _loc6_.§,"<§(this.§1"=§ + this.§8!]§);
         if(param2 == §<!h§.§"W§ || param2 == §<!h§.§?!o§)
         {
            _loc6_.§0'§(this.§ "3§.hitTest(_loc5_,true));
         }
         if(param2 == §<!h§.§?!o§)
         {
            this.§0!R§(_loc6_);
         }
      }
      
      private function §;P§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§1[§ = null;
         var _loc4_:§1[§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§0!J§;
            this.§0!J§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§6"§ && _loc2_ != this.§0!J§)
            {
               this.§0]§.visible = this.§0!J§;
               this.§0]§.§='§(this.§ "3§.stageWidth / 2,this.§ "3§.stageHeight / 2);
               _loc3_ = this.§5!g§(0);
               _loc4_ = this.§5!g§(1);
               if(_loc3_)
               {
                  this.§0]§.§8!k§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §<!h§.§,"#§)
               {
                  this.§']§.unshift([1,§<!h§.§,"#§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§0!J§ && _loc3_)
               {
                  if(_loc3_.phase == §<!h§.§?!o§ || _loc3_.phase == §<!h§.§-!V§)
                  {
                     this.§']§.unshift([1,§<!h§.§?!o§,this.§0]§.§ ^§,this.§0]§.§'c§]);
                  }
                  else
                  {
                     this.§']§.unshift([1,§<!h§.§"W§,this.§0]§.§ ^§,this.§0]§.§'c§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§+!W§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §0!R§(param1:§1[§) : void
      {
         var _loc4_:§1[§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§1[§ = null;
         var _loc3_:Number = §%,§ * §%,§;
         for each(_loc4_ in this.§>'§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§3!$§(_loc2_.§0!T§ + 1);
            this.§>'§.splice(this.§>'§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§3!$§(1);
         }
         this.§>'§.push(param1.clone());
      }
      
      private function §2!<§(param1:§1[§) : void
      {
         var _loc2_:int = this.§ w§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§ w§[_loc2_].id == param1.id)
            {
               this.§ w§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ w§.push(param1);
      }
      
      private function §5!g§(param1:int) : §1[§
      {
         var _loc2_:§1[§ = null;
         for each(_loc2_ in this.§ w§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §6"§() : Boolean
      {
         return this.§0]§ != null;
      }
      
      public function set §6"§(param1:Boolean) : void
      {
         if(this.§6"§ == param1)
         {
            return;
         }
      }
   }
}
