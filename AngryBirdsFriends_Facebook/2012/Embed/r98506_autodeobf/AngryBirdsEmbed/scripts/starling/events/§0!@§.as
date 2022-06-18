package starling.events
{
   import §;q§.Stage;
   import flash.geom.Point;
   
   public class §0!@§
   {
      
      private static const §!!I§:Number = 0.3;
      
      private static const §%d§:Number = 25;
      
      private static var § m§:Vector.<int> = new Vector.<int>(0);
      
      private static var §>l§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var § j§:Stage;
      
      private var §+0§:Number;
      
      private var §`z§:Number;
      
      private var §,T§:§&&§;
      
      private var §2k§:Vector.<§"1§>;
      
      private var §-q§:Vector.<Array>;
      
      private var §2!§:Vector.<§"1§>;
      
      private var §=M§:Boolean = false;
      
      private var §7b§:Boolean = false;
      
      public function §0!@§(param1:Stage)
      {
         super();
         this.§ j§ = param1;
         this.§`z§ = 0;
         this.§+0§ = 0;
         this.§2k§ = new Vector.<§"1§>(0);
         this.§-q§ = new Vector.<Array>(0);
         this.§2!§ = new Vector.<§"1§>(0);
         this.§ j§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§ j§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§ j§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§ j§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§,T§)
         {
            this.§,T§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§"1§ = null;
         var _loc5_:§"1§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§+0§ += param1;
         this.§`z§ = 0;
         if(this.§2!§.length > 0)
         {
            _loc2_ = this.§2!§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§+0§ - this.§2!§[_loc2_].timestamp > §!!I§)
               {
                  this.§2!§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§-q§.length > 0)
         {
            § m§.length = §>l§.length = 0;
            for each(_loc5_ in this.§2k§)
            {
               if(_loc5_.phase == §0!!§.§9!;§ || _loc5_.phase == §0!!§.§&I§)
               {
                  _loc5_.§^!,§(§0!!§.§6C§);
               }
            }
            while(this.§-q§.length > 0 && § m§.indexOf(this.§-q§[this.§-q§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§-q§.pop())[0] as int;
               if((_loc4_ = this.§1e§(_loc3_)) && _loc4_.phase == §0!!§.§<! § && _loc4_.target)
               {
                  §>l§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§?!C§.apply(this,_loc7_);
               § m§.push(_loc3_);
            }
            for each(_loc6_ in §>l§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§5!J§,this.§2k§,this.§=M§,this.§7b§));
               }
            }
            for each(_loc3_ in § m§)
            {
               if((_loc4_ = this.§1e§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§5!J§,this.§2k§,this.§=M§,this.§7b§));
               }
            }
            _loc2_ = this.§2k§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§2k§[_loc2_].phase == §0!!§.§ #§)
               {
                  this.§2k§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§`z§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§-q§.unshift(arguments);
         if(this.§7b§ && this.§"n§ && param1 == 0)
         {
            this.§,T§.§"b§(param3,param4,this.§=M§);
            this.§-q§.unshift([1,param2,this.§,T§.§!!#§,this.§,T§.§3!C§]);
         }
      }
      
      private function §?!C§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§"1§;
         if((_loc6_ = this.§1e§(param1)) == null)
         {
            _loc6_ = new §"1§(param1,param3,param4,param2,null);
            this.§[>§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§^!,§(param2);
         _loc6_.§??§(this.§+0§ + this.§`z§);
         if(param2 == §0!!§.§<! § || param2 == §0!!§.§9!;§)
         {
            _loc6_.§<a§(this.§ j§.hitTest(_loc5_,true));
         }
         if(param2 == §0!!§.§9!;§)
         {
            this.§;r§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§"1§ = null;
         var _loc4_:§"1§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§7b§;
            this.§7b§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§"n§ && _loc2_ != this.§7b§)
            {
               this.§,T§.visible = this.§7b§;
               this.§,T§.§]z§(this.§ j§.stageWidth / 2,this.§ j§.stageHeight / 2);
               _loc3_ = this.§1e§(0);
               _loc4_ = this.§1e§(1);
               if(_loc3_)
               {
                  this.§,T§.§"b§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §0!!§.§ #§)
               {
                  this.§-q§.unshift([1,§0!!§.§ #§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§7b§ && _loc3_)
               {
                  if(_loc3_.phase == §0!!§.§9!;§ || _loc3_.phase == §0!!§.§&I§)
                  {
                     this.§-q§.unshift([1,§0!!§.§9!;§,this.§,T§.§!!#§,this.§,T§.§3!C§]);
                  }
                  else
                  {
                     this.§-q§.unshift([1,§0!!§.§<! §,this.§,T§.§!!#§,this.§,T§.§3!C§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§=M§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §;r§(param1:§"1§) : void
      {
         var _loc4_:§"1§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§"1§ = null;
         var _loc3_:Number = §%d§ * §%d§;
         for each(_loc4_ in this.§2!§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§@"§(_loc2_.§-!?§ + 1);
            this.§2!§.splice(this.§2!§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§@"§(1);
         }
         this.§2!§.push(param1.clone());
      }
      
      private function §[>§(param1:§"1§) : void
      {
         var _loc2_:int = this.§2k§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§2k§[_loc2_].id == param1.id)
            {
               this.§2k§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2k§.push(param1);
      }
      
      private function §1e§(param1:int) : §"1§
      {
         var _loc2_:§"1§ = null;
         for each(_loc2_ in this.§2k§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §"n§() : Boolean
      {
         return this.§,T§ != null;
      }
      
      public function set §"n§(param1:Boolean) : void
      {
         if(this.§"n§ == param1)
         {
            return;
         }
      }
   }
}
