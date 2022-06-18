package starling.events
{
   import §;^§.Stage;
   import flash.geom.Point;
   
   public class §4x§
   {
      
      private static const §#J§:Number = 0.3;
      
      private static const §<!'§:Number = 25;
      
      private static var §1!;§:Vector.<int> = new Vector.<int>(0);
      
      private static var §+K§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var § D§:Stage;
      
      private var §=m§:Number;
      
      private var §5&§:Number;
      
      private var §]v§:§,! §;
      
      private var §0!2§:Vector.<§-B§>;
      
      private var §#P§:Vector.<Array>;
      
      private var §24§:Vector.<§-B§>;
      
      private var §=!3§:Boolean = false;
      
      private var §3M§:Boolean = false;
      
      public function §4x§(param1:Stage)
      {
         super();
         this.§ D§ = param1;
         this.§5&§ = 0;
         this.§=m§ = 0;
         this.§0!2§ = new Vector.<§-B§>(0);
         this.§#P§ = new Vector.<Array>(0);
         this.§24§ = new Vector.<§-B§>(0);
         this.§ D§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§ D§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§ D§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§ D§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§]v§)
         {
            this.§]v§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§-B§ = null;
         var _loc5_:§-B§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§=m§ += param1;
         this.§5&§ = 0;
         if(this.§24§.length > 0)
         {
            _loc2_ = this.§24§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=m§ - this.§24§[_loc2_].timestamp > §#J§)
               {
                  this.§24§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§#P§.length > 0)
         {
            §1!;§.length = §+K§.length = 0;
            for each(_loc5_ in this.§0!2§)
            {
               if(_loc5_.phase == §"!3§.§"f§ || _loc5_.phase == §"!3§.§,O§)
               {
                  _loc5_.§'D§(§"!3§.§-v§);
               }
            }
            while(this.§#P§.length > 0 && §1!;§.indexOf(this.§#P§[this.§#P§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§#P§.pop())[0] as int;
               if((_loc4_ = this.§-`§(_loc3_)) && _loc4_.phase == §"!3§.§9,§ && _loc4_.target)
               {
                  §+K§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§<>§.apply(this,_loc7_);
               §1!;§.push(_loc3_);
            }
            for each(_loc6_ in §+K§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§0!K§,this.§0!2§,this.§=!3§,this.§3M§));
               }
            }
            for each(_loc3_ in §1!;§)
            {
               if((_loc4_ = this.§-`§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§0!K§,this.§0!2§,this.§=!3§,this.§3M§));
               }
            }
            _loc2_ = this.§0!2§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§0!2§[_loc2_].phase == §"!3§.§&!L§)
               {
                  this.§0!2§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§5&§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§#P§.unshift(arguments);
         if(this.§3M§ && this.§^A§ && param1 == 0)
         {
            this.§]v§.§31§(param3,param4,this.§=!3§);
            this.§#P§.unshift([1,param2,this.§]v§.§^f§,this.§]v§.§%f§]);
         }
      }
      
      private function §<>§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§-B§;
         if((_loc6_ = this.§-`§(param1)) == null)
         {
            _loc6_ = new §-B§(param1,param3,param4,param2,null);
            this.§]2§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§'D§(param2);
         _loc6_.§;!N§(this.§=m§ + this.§5&§);
         if(param2 == §"!3§.§9,§ || param2 == §"!3§.§"f§)
         {
            _loc6_.§=B§(this.§ D§.hitTest(_loc5_,true));
         }
         if(param2 == §"!3§.§"f§)
         {
            this.§2!B§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§-B§ = null;
         var _loc4_:§-B§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§3M§;
            this.§3M§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§^A§ && _loc2_ != this.§3M§)
            {
               this.§]v§.visible = this.§3M§;
               this.§]v§.§,!H§(this.§ D§.stageWidth / 2,this.§ D§.stageHeight / 2);
               _loc3_ = this.§-`§(0);
               _loc4_ = this.§-`§(1);
               if(_loc3_)
               {
                  this.§]v§.§31§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §"!3§.§&!L§)
               {
                  this.§#P§.unshift([1,§"!3§.§&!L§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§3M§ && _loc3_)
               {
                  if(_loc3_.phase == §"!3§.§"f§ || _loc3_.phase == §"!3§.§,O§)
                  {
                     this.§#P§.unshift([1,§"!3§.§"f§,this.§]v§.§^f§,this.§]v§.§%f§]);
                  }
                  else
                  {
                     this.§#P§.unshift([1,§"!3§.§9,§,this.§]v§.§^f§,this.§]v§.§%f§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§=!3§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §2!B§(param1:§-B§) : void
      {
         var _loc4_:§-B§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§-B§ = null;
         var _loc3_:Number = §<!'§ * §<!'§;
         for each(_loc4_ in this.§24§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§5$§(_loc2_.§<u§ + 1);
            this.§24§.splice(this.§24§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§5$§(1);
         }
         this.§24§.push(param1.clone());
      }
      
      private function §]2§(param1:§-B§) : void
      {
         var _loc2_:int = this.§0!2§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§0!2§[_loc2_].id == param1.id)
            {
               this.§0!2§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§0!2§.push(param1);
      }
      
      private function §-`§(param1:int) : §-B§
      {
         var _loc2_:§-B§ = null;
         for each(_loc2_ in this.§0!2§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §^A§() : Boolean
      {
         return this.§]v§ != null;
      }
      
      public function set §^A§(param1:Boolean) : void
      {
         if(this.§^A§ == param1)
         {
            return;
         }
      }
   }
}
