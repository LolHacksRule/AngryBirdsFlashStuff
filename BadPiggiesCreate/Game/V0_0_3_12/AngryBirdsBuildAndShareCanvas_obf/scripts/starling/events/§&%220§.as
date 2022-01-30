package starling.events
{
   import §@!i§.Stage;
   import flash.geom.Point;
   
   public class §&"0§
   {
      
      private static const §9[§:Number = 0.3;
      
      private static const §@7§:Number = 25;
      
      private static var § !e§:Vector.<int> = new Vector.<int>(0);
      
      private static var §9`§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var § null§:Stage;
      
      private var §-!l§:Number;
      
      private var §^+§:Number;
      
      private var §do§:§59§;
      
      private var §7!g§:Vector.<§6!,§>;
      
      private var §,"2§:Vector.<Array>;
      
      private var §&!W§:Vector.<§6!,§>;
      
      private var §-!i§:Boolean = false;
      
      private var §5!+§:Boolean = false;
      
      public function §&"0§(param1:Stage)
      {
         super();
         this.§ null§ = param1;
         this.§^+§ = 0;
         this.§-!l§ = 0;
         this.§7!g§ = new Vector.<§6!,§>(0);
         this.§,"2§ = new Vector.<Array>(0);
         this.§&!W§ = new Vector.<§6!,§>(0);
         this.§ null§.addEventListener(KeyboardEvent.KEY_DOWN,this.§%!B§);
         this.§ null§.addEventListener(KeyboardEvent.KEY_UP,this.§%!B§);
      }
      
      public function dispose() : void
      {
         this.§ null§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§%!B§);
         this.§ null§.removeEventListener(KeyboardEvent.KEY_UP,this.§%!B§);
         if(this.§do§)
         {
            this.§do§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§6!,§ = null;
         var _loc5_:§6!,§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§-!l§ += param1;
         this.§^+§ = 0;
         if(this.§&!W§.length > 0)
         {
            _loc2_ = this.§&!W§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§-!l§ - this.§&!W§[_loc2_].timestamp > §9[§)
               {
                  this.§&!W§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§,"2§.length > 0)
         {
            § !e§.length = §9`§.length = 0;
            for each(_loc5_ in this.§7!g§)
            {
               if(_loc5_.phase == §[b§.§^!x§ || _loc5_.phase == §[b§.§?!6§)
               {
                  _loc5_.§!!L§(§[b§.§?!u§);
               }
            }
            while(this.§,"2§.length > 0 && § !e§.indexOf(this.§,"2§[this.§,"2§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§,"2§.pop())[0] as int;
               if((_loc4_ = this.§%e§(_loc3_)) && _loc4_.phase == §[b§.§+!9§ && _loc4_.target)
               {
                  §9`§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§]$§.apply(this,_loc7_);
               § !e§.push(_loc3_);
            }
            for each(_loc6_ in §9`§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§-!I§,this.§7!g§,this.§-!i§,this.§5!+§));
               }
            }
            for each(_loc3_ in § !e§)
            {
               if((_loc4_ = this.§%e§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§-!I§,this.§7!g§,this.§-!i§,this.§5!+§));
               }
            }
            _loc2_ = this.§7!g§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7!g§[_loc2_].phase == §[b§.§%"%§)
               {
                  this.§7!g§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§^+§ += 0.00001;
         }
      }
      
      public function §0"5§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§,"2§.unshift(arguments);
         if(this.§5!+§ && this.§ K§ && param1 == 0)
         {
            this.§do§.§'!^§(param3,param4,this.§-!i§);
            this.§,"2§.unshift([1,param2,this.§do§.§9$§,this.§do§.§3!g§]);
         }
      }
      
      private function §]$§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§6!,§;
         if((_loc6_ = this.§%e§(param1)) == null)
         {
            _loc6_ = new §6!,§(param1,param3,param4,param2,null);
            this.§[!,§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§!!L§(param2);
         _loc6_.§+!g§(this.§-!l§ + this.§^+§);
         if(param2 == §[b§.§+!9§ || param2 == §[b§.§^!x§)
         {
            _loc6_.§';§(this.§ null§.hitTest(_loc5_,true));
         }
         if(param2 == §[b§.§^!x§)
         {
            this.§%!$§(_loc6_);
         }
      }
      
      private function §%!B§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§6!,§ = null;
         var _loc4_:§6!,§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§5!+§;
            this.§5!+§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§ K§ && _loc2_ != this.§5!+§)
            {
               this.§do§.visible = this.§5!+§;
               this.§do§.§1!s§(this.§ null§.stageWidth / 2,this.§ null§.stageHeight / 2);
               _loc3_ = this.§%e§(0);
               _loc4_ = this.§%e§(1);
               if(_loc3_)
               {
                  this.§do§.§'!^§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §[b§.§%"%§)
               {
                  this.§,"2§.unshift([1,§[b§.§%"%§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§5!+§ && _loc3_)
               {
                  if(_loc3_.phase == §[b§.§^!x§ || _loc3_.phase == §[b§.§?!6§)
                  {
                     this.§,"2§.unshift([1,§[b§.§^!x§,this.§do§.§9$§,this.§do§.§3!g§]);
                  }
                  else
                  {
                     this.§,"2§.unshift([1,§[b§.§+!9§,this.§do§.§9$§,this.§do§.§3!g§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§-!i§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §%!$§(param1:§6!,§) : void
      {
         var _loc4_:§6!,§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§6!,§ = null;
         var _loc3_:Number = §@7§ * §@7§;
         for each(_loc4_ in this.§&!W§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§""9§(_loc2_.§>G§ + 1);
            this.§&!W§.splice(this.§&!W§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§""9§(1);
         }
         this.§&!W§.push(param1.clone());
      }
      
      private function §[!,§(param1:§6!,§) : void
      {
         var _loc2_:int = this.§7!g§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§7!g§[_loc2_].id == param1.id)
            {
               this.§7!g§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7!g§.push(param1);
      }
      
      private function §%e§(param1:int) : §6!,§
      {
         var _loc2_:§6!,§ = null;
         for each(_loc2_ in this.§7!g§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get § K§() : Boolean
      {
         return this.§do§ != null;
      }
      
      public function set § K§(param1:Boolean) : void
      {
         if(this.§ K§ == param1)
         {
            return;
         }
      }
   }
}
