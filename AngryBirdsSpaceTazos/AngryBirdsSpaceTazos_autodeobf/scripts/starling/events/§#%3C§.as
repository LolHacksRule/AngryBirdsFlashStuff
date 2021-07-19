package starling.events
{
   import §7!8§.Stage;
   import flash.geom.Point;
   
   public class §#<§
   {
      
      private static const §6!7§:Number = 0.3;
      
      private static const §3t§:Number = 25;
      
      private static var §&!L§:Vector.<int> = new Vector.<int>(0);
      
      private static var §`r§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §#[§:Stage;
      
      private var §`"8§:Number;
      
      private var §5"8§:Number;
      
      private var §-!>§:§7!Q§;
      
      private var §;!b§:Vector.<§7M§>;
      
      private var §+X§:Vector.<Array>;
      
      private var §?"D§:Vector.<§7M§>;
      
      private var §?!e§:Boolean = false;
      
      private var §0-§:Boolean = false;
      
      public function §#<§(param1:Stage)
      {
         super();
         this.§#[§ = param1;
         this.§5"8§ = 0;
         this.§`"8§ = 0;
         this.§;!b§ = new Vector.<§7M§>(0);
         this.§+X§ = new Vector.<Array>(0);
         this.§?"D§ = new Vector.<§7M§>(0);
         this.§#[§.addEventListener(KeyboardEvent.KEY_DOWN,this.§=k§);
         this.§#[§.addEventListener(KeyboardEvent.KEY_UP,this.§=k§);
      }
      
      public function dispose() : void
      {
         this.§#[§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§=k§);
         this.§#[§.removeEventListener(KeyboardEvent.KEY_UP,this.§=k§);
         if(this.§-!>§)
         {
            this.§-!>§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§7M§ = null;
         var _loc5_:§7M§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§`"8§ += param1;
         this.§5"8§ = 0;
         if(this.§?"D§.length > 0)
         {
            _loc2_ = this.§?"D§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§`"8§ - this.§?"D§[_loc2_].timestamp > §6!7§)
               {
                  this.§?"D§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§+X§.length > 0)
         {
            §&!L§.length = §`r§.length = 0;
            for each(_loc5_ in this.§;!b§)
            {
               if(_loc5_.phase == §@M§.§>!A§ || _loc5_.phase == §@M§.§[!c§)
               {
                  _loc5_.§3"$§(§@M§.§&!p§);
               }
            }
            while(this.§+X§.length > 0 && §&!L§.indexOf(this.§+X§[this.§+X§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§+X§.pop())[0] as int;
               if((_loc4_ = this.§%!h§(_loc3_)) && _loc4_.phase == §@M§.§2"@§ && _loc4_.target)
               {
                  §`r§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§]$§.apply(this,_loc7_);
               §&!L§.push(_loc3_);
            }
            for each(_loc6_ in §`r§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§1!X§,this.§;!b§,this.§?!e§,this.§0-§));
               }
            }
            for each(_loc3_ in §&!L§)
            {
               if((_loc4_ = this.§%!h§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§1!X§,this.§;!b§,this.§?!e§,this.§0-§));
               }
            }
            _loc2_ = this.§;!b§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§;!b§[_loc2_].phase == §@M§.§2_§)
               {
                  this.§;!b§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§5"8§ += 0.00001;
         }
      }
      
      public function §5!J§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§+X§.unshift(arguments);
         if(this.§0-§ && this.§-&§ && param1 == 0)
         {
            this.§-!>§.§]-§(param3,param4,this.§?!e§);
            this.§+X§.unshift([1,param2,this.§-!>§.§3!w§,this.§-!>§.§;!Z§]);
         }
      }
      
      private function §]$§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§7M§;
         if((_loc6_ = this.§%!h§(param1)) == null)
         {
            _loc6_ = new §7M§(param1,param3,param4,param2,null);
            this.§^!B§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§3"$§(param2);
         _loc6_.§2!m§(this.§`"8§ + this.§5"8§);
         if(param2 == §@M§.§2"@§ || param2 == §@M§.§>!A§)
         {
            _loc6_.§%i§(this.§#[§.hitTest(_loc5_,true));
         }
         if(param2 == §@M§.§>!A§)
         {
            this.§[!q§(_loc6_);
         }
      }
      
      private function §=k§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§7M§ = null;
         var _loc4_:§7M§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§0-§;
            this.§0-§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§-&§ && _loc2_ != this.§0-§)
            {
               this.§-!>§.visible = this.§0-§;
               this.§-!>§.§1!d§(this.§#[§.stageWidth / 2,this.§#[§.stageHeight / 2);
               _loc3_ = this.§%!h§(0);
               _loc4_ = this.§%!h§(1);
               if(_loc3_)
               {
                  this.§-!>§.§]-§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §@M§.§2_§)
               {
                  this.§+X§.unshift([1,§@M§.§2_§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§0-§ && _loc3_)
               {
                  if(_loc3_.phase == §@M§.§>!A§ || _loc3_.phase == §@M§.§[!c§)
                  {
                     this.§+X§.unshift([1,§@M§.§>!A§,this.§-!>§.§3!w§,this.§-!>§.§;!Z§]);
                  }
                  else
                  {
                     this.§+X§.unshift([1,§@M§.§2"@§,this.§-!>§.§3!w§,this.§-!>§.§;!Z§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§?!e§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §[!q§(param1:§7M§) : void
      {
         var _loc4_:§7M§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§7M§ = null;
         var _loc3_:Number = §3t§ * §3t§;
         for each(_loc4_ in this.§?"D§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§'f§(_loc2_.§@"G§ + 1);
            this.§?"D§.splice(this.§?"D§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§'f§(1);
         }
         this.§?"D§.push(param1.clone());
      }
      
      private function §^!B§(param1:§7M§) : void
      {
         var _loc2_:int = this.§;!b§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§;!b§[_loc2_].id == param1.id)
            {
               this.§;!b§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;!b§.push(param1);
      }
      
      private function §%!h§(param1:int) : §7M§
      {
         var _loc2_:§7M§ = null;
         for each(_loc2_ in this.§;!b§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §-&§() : Boolean
      {
         return this.§-!>§ != null;
      }
      
      public function set §-&§(param1:Boolean) : void
      {
         if(this.§-&§ == param1)
         {
            return;
         }
      }
   }
}
