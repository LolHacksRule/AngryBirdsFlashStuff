package starling.events
{
   import §9W§.Stage;
   import flash.geom.Point;
   
   public class §&!6§
   {
      
      private static const §1W§:Number = 0.3;
      
      private static const §&!I§:Number = 25;
      
      private static var §2!8§:Vector.<int> = new Vector.<int>(0);
      
      private static var §#!"§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §%E§:Stage;
      
      private var §+!D§:Number;
      
      private var §,r§:Number;
      
      private var § j§:§;`§;
      
      private var §#Q§:Vector.<§^!@§>;
      
      private var §'d§:Vector.<Array>;
      
      private var §[%§:Vector.<§^!@§>;
      
      private var §!s§:Boolean = false;
      
      private var §3c§:Boolean = false;
      
      public function §&!6§(param1:Stage)
      {
         super();
         this.§%E§ = param1;
         this.§,r§ = 0;
         this.§+!D§ = 0;
         this.§#Q§ = new Vector.<§^!@§>(0);
         this.§'d§ = new Vector.<Array>(0);
         this.§[%§ = new Vector.<§^!@§>(0);
         this.§%E§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§%E§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§%E§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§%E§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§ j§)
         {
            this.§ j§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§^!@§ = null;
         var _loc5_:§^!@§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§+!D§ += param1;
         this.§,r§ = 0;
         if(this.§[%§.length > 0)
         {
            _loc2_ = this.§[%§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§+!D§ - this.§[%§[_loc2_].timestamp > §1W§)
               {
                  this.§[%§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§'d§.length > 0)
         {
            §2!8§.length = §#!"§.length = 0;
            for each(_loc5_ in this.§#Q§)
            {
               if(_loc5_.phase == §<e§.§"=§ || _loc5_.phase == §<e§.§!C§)
               {
                  _loc5_.§ !B§(§<e§.§1[§);
               }
            }
            while(this.§'d§.length > 0 && §2!8§.indexOf(this.§'d§[this.§'d§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§'d§.pop())[0] as int;
               if((_loc4_ = this.§;Q§(_loc3_)) && _loc4_.phase == §<e§.§8;§ && _loc4_.target)
               {
                  §#!"§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§6!G§.apply(this,_loc7_);
               §2!8§.push(_loc3_);
            }
            for each(_loc6_ in §#!"§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§?6§,this.§#Q§,this.§!s§,this.§3c§));
               }
            }
            for each(_loc3_ in §2!8§)
            {
               if((_loc4_ = this.§;Q§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§?6§,this.§#Q§,this.§!s§,this.§3c§));
               }
            }
            _loc2_ = this.§#Q§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§#Q§[_loc2_].phase == §<e§.§4[§)
               {
                  this.§#Q§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§,r§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§'d§.unshift(arguments);
         if(this.§3c§ && this.§ 4§ && param1 == 0)
         {
            this.§ j§.§2!A§(param3,param4,this.§!s§);
            this.§'d§.unshift([1,param2,this.§ j§.§8!%§,this.§ j§.§@#§]);
         }
      }
      
      private function §6!G§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§^!@§;
         if((_loc6_ = this.§;Q§(param1)) == null)
         {
            _loc6_ = new §^!@§(param1,param3,param4,param2,null);
            this.§4>§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§ !B§(param2);
         _loc6_.§1N§(this.§+!D§ + this.§,r§);
         if(param2 == §<e§.§8;§ || param2 == §<e§.§"=§)
         {
            _loc6_.§`g§(this.§%E§.hitTest(_loc5_,true));
         }
         if(param2 == §<e§.§"=§)
         {
            this.§2W§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§^!@§ = null;
         var _loc4_:§^!@§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§3c§;
            this.§3c§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§ 4§ && _loc2_ != this.§3c§)
            {
               this.§ j§.visible = this.§3c§;
               this.§ j§.§@o§(this.§%E§.stageWidth / 2,this.§%E§.stageHeight / 2);
               _loc3_ = this.§;Q§(0);
               _loc4_ = this.§;Q§(1);
               if(_loc3_)
               {
                  this.§ j§.§2!A§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §<e§.§4[§)
               {
                  this.§'d§.unshift([1,§<e§.§4[§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§3c§ && _loc3_)
               {
                  if(_loc3_.phase == §<e§.§"=§ || _loc3_.phase == §<e§.§!C§)
                  {
                     this.§'d§.unshift([1,§<e§.§"=§,this.§ j§.§8!%§,this.§ j§.§@#§]);
                  }
                  else
                  {
                     this.§'d§.unshift([1,§<e§.§8;§,this.§ j§.§8!%§,this.§ j§.§@#§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!s§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §2W§(param1:§^!@§) : void
      {
         var _loc4_:§^!@§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§^!@§ = null;
         var _loc3_:Number = §&!I§ * §&!I§;
         for each(_loc4_ in this.§[%§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§;!;§(_loc2_.§+T§ + 1);
            this.§[%§.splice(this.§[%§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§;!;§(1);
         }
         this.§[%§.push(param1.clone());
      }
      
      private function §4>§(param1:§^!@§) : void
      {
         var _loc2_:int = this.§#Q§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§#Q§[_loc2_].id == param1.id)
            {
               this.§#Q§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§#Q§.push(param1);
      }
      
      private function §;Q§(param1:int) : §^!@§
      {
         var _loc2_:§^!@§ = null;
         for each(_loc2_ in this.§#Q§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get § 4§() : Boolean
      {
         return this.§ j§ != null;
      }
      
      public function set § 4§(param1:Boolean) : void
      {
         if(this.§ 4§ == param1)
         {
            return;
         }
      }
   }
}
