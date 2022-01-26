package starling.events
{
   import §&!5§.Stage;
   import flash.geom.Point;
   
   public class §!f§
   {
      
      private static const §7!D§:Number = 0.3;
      
      private static const § !D§:Number = 25;
      
      private static var §6-§:Vector.<int> = new Vector.<int>(0);
      
      private static var §?P§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §%!7§:Stage;
      
      private var §9l§:Number;
      
      private var §;!O§:Number;
      
      private var §&]§:§8!%§;
      
      private var §`1§:Vector.<§#!W§>;
      
      private var §6! §:Vector.<Array>;
      
      private var §^^§:Vector.<§#!W§>;
      
      private var §1!]§:Boolean = false;
      
      private var §>d§:Boolean = false;
      
      public function §!f§(param1:Stage)
      {
         super();
         this.§%!7§ = param1;
         this.§;!O§ = 0;
         this.§9l§ = 0;
         this.§`1§ = new Vector.<§#!W§>(0);
         this.§6! § = new Vector.<Array>(0);
         this.§^^§ = new Vector.<§#!W§>(0);
         this.§%!7§.addEventListener(KeyboardEvent.KEY_DOWN,this.§%!0§);
         this.§%!7§.addEventListener(KeyboardEvent.KEY_UP,this.§%!0§);
      }
      
      public function dispose() : void
      {
         this.§%!7§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§%!0§);
         this.§%!7§.removeEventListener(KeyboardEvent.KEY_UP,this.§%!0§);
         if(this.§&]§)
         {
            this.§&]§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§#!W§ = null;
         var _loc5_:§#!W§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§9l§ += param1;
         this.§;!O§ = 0;
         if(this.§^^§.length > 0)
         {
            _loc2_ = this.§^^§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§9l§ - this.§^^§[_loc2_].timestamp > §7!D§)
               {
                  this.§^^§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§6! §.length > 0)
         {
            §6-§.length = §?P§.length = 0;
            for each(_loc5_ in this.§`1§)
            {
               if(_loc5_.phase == §;n§.§ ! § || _loc5_.phase == §;n§.§&S§)
               {
                  _loc5_.§try§(§;n§.§2!R§);
               }
            }
            while(this.§6! §.length > 0 && §6-§.indexOf(this.§6! §[this.§6! §.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§6! §.pop())[0] as int;
               if((_loc4_ = this.§6K§(_loc3_)) && _loc4_.phase == §;n§.§,!;§ && _loc4_.target)
               {
                  §?P§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§3#§.apply(this,_loc7_);
               §6-§.push(_loc3_);
            }
            for each(_loc6_ in §?P§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§0![§,this.§`1§,this.§1!]§,this.§>d§));
               }
            }
            for each(_loc3_ in §6-§)
            {
               if((_loc4_ = this.§6K§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§0![§,this.§`1§,this.§1!]§,this.§>d§));
               }
            }
            _loc2_ = this.§`1§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§`1§[_loc2_].phase == §;n§.§9!,§)
               {
                  this.§`1§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§;!O§ += 0.00001;
         }
      }
      
      public function §4j§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§6! §.unshift(arguments);
         if(this.§>d§ && this.§ 2§ && param1 == 0)
         {
            this.§&]§.§=P§(param3,param4,this.§1!]§);
            this.§6! §.unshift([1,param2,this.§&]§.§ !$§,this.§&]§.§-!'§]);
         }
      }
      
      private function §3#§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§#!W§;
         if((_loc6_ = this.§6K§(param1)) == null)
         {
            _loc6_ = new §#!W§(param1,param3,param4,param2,null);
            this.§-z§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§try§(param2);
         _loc6_.§6!U§(this.§9l§ + this.§;!O§);
         if(param2 == §;n§.§,!;§ || param2 == §;n§.§ ! §)
         {
            _loc6_.§;S§(this.§%!7§.hitTest(_loc5_,true));
         }
         if(param2 == §;n§.§ ! §)
         {
            this.§9I§(_loc6_);
         }
      }
      
      private function §%!0§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§#!W§ = null;
         var _loc4_:§#!W§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§>d§;
            this.§>d§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§ 2§ && _loc2_ != this.§>d§)
            {
               this.§&]§.visible = this.§>d§;
               this.§&]§.§,!U§(this.§%!7§.stageWidth / 2,this.§%!7§.stageHeight / 2);
               _loc3_ = this.§6K§(0);
               _loc4_ = this.§6K§(1);
               if(_loc3_)
               {
                  this.§&]§.§=P§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §;n§.§9!,§)
               {
                  this.§6! §.unshift([1,§;n§.§9!,§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§>d§ && _loc3_)
               {
                  if(_loc3_.phase == §;n§.§ ! § || _loc3_.phase == §;n§.§&S§)
                  {
                     this.§6! §.unshift([1,§;n§.§ ! §,this.§&]§.§ !$§,this.§&]§.§-!'§]);
                  }
                  else
                  {
                     this.§6! §.unshift([1,§;n§.§,!;§,this.§&]§.§ !$§,this.§&]§.§-!'§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§1!]§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §9I§(param1:§#!W§) : void
      {
         var _loc4_:§#!W§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§#!W§ = null;
         var _loc3_:Number = § !D§ * § !D§;
         for each(_loc4_ in this.§^^§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§ !Z§(_loc2_.§9!O§ + 1);
            this.§^^§.splice(this.§^^§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§ !Z§(1);
         }
         this.§^^§.push(param1.clone());
      }
      
      private function §-z§(param1:§#!W§) : void
      {
         var _loc2_:int = this.§`1§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§`1§[_loc2_].id == param1.id)
            {
               this.§`1§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§`1§.push(param1);
      }
      
      private function §6K§(param1:int) : §#!W§
      {
         var _loc2_:§#!W§ = null;
         for each(_loc2_ in this.§`1§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get § 2§() : Boolean
      {
         return this.§&]§ != null;
      }
      
      public function set § 2§(param1:Boolean) : void
      {
         if(this.§ 2§ == param1)
         {
            return;
         }
      }
   }
}
