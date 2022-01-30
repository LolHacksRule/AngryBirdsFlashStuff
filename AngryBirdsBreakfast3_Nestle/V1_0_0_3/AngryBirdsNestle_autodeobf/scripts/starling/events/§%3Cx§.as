package starling.events
{
   import §0!Y§.Stage;
   import flash.geom.Point;
   
   public class §<x§
   {
      
      private static const §"A§:Number = 0.3;
      
      private static const §'R§:Number = 25;
      
      private static var §`e§:Vector.<int> = new Vector.<int>(0);
      
      private static var §%!E§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §9!I§:Stage;
      
      private var §7!h§:Number;
      
      private var §]!x§:Number;
      
      private var §9h§:§[g§;
      
      private var §#"%§:Vector.<§<P§>;
      
      private var §'!9§:Vector.<Array>;
      
      private var §3m§:Vector.<§<P§>;
      
      private var §!$§:Boolean = false;
      
      private var § v§:Boolean = false;
      
      public function §<x§(param1:Stage)
      {
         super();
         this.§9!I§ = param1;
         this.§]!x§ = 0;
         this.§7!h§ = 0;
         this.§#"%§ = new Vector.<§<P§>(0);
         this.§'!9§ = new Vector.<Array>(0);
         this.§3m§ = new Vector.<§<P§>(0);
         this.§9!I§.addEventListener(KeyboardEvent.KEY_DOWN,this.§#!P§);
         this.§9!I§.addEventListener(KeyboardEvent.KEY_UP,this.§#!P§);
      }
      
      public function dispose() : void
      {
         this.§9!I§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§#!P§);
         this.§9!I§.removeEventListener(KeyboardEvent.KEY_UP,this.§#!P§);
         if(this.§9h§)
         {
            this.§9h§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§<P§ = null;
         var _loc5_:§<P§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§7!h§ += param1;
         this.§]!x§ = 0;
         if(this.§3m§.length > 0)
         {
            _loc2_ = this.§3m§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7!h§ - this.§3m§[_loc2_].timestamp > §"A§)
               {
                  this.§3m§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§'!9§.length > 0)
         {
            §`e§.length = §%!E§.length = 0;
            for each(_loc5_ in this.§#"%§)
            {
               if(_loc5_.phase == §2d§.§ M§ || _loc5_.phase == §2d§.§+!!§)
               {
                  _loc5_.§]8§(§2d§.§"!Q§);
               }
            }
            while(this.§'!9§.length > 0 && §`e§.indexOf(this.§'!9§[this.§'!9§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§'!9§.pop())[0] as int;
               if((_loc4_ = this.§6g§(_loc3_)) && _loc4_.phase == §2d§.HOVER && _loc4_.target)
               {
                  §%!E§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§0!7§.apply(this,_loc7_);
               §`e§.push(_loc3_);
            }
            for each(_loc6_ in §%!E§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§88§,this.§#"%§,this.§!$§,this.§ v§));
               }
            }
            for each(_loc3_ in §`e§)
            {
               if((_loc4_ = this.§6g§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§88§,this.§#"%§,this.§!$§,this.§ v§));
               }
            }
            _loc2_ = this.§#"%§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§#"%§[_loc2_].phase == §2d§.§&W§)
               {
                  this.§#"%§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§]!x§ += 0.00001;
         }
      }
      
      public function §6+§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§'!9§.unshift(arguments);
         if(this.§ v§ && this.§9m§ && param1 == 0)
         {
            this.§9h§.§"!C§(param3,param4,this.§!$§);
            this.§'!9§.unshift([1,param2,this.§9h§.§[!s§,this.§9h§.§>!q§]);
         }
      }
      
      private function §0!7§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§<P§;
         if((_loc6_ = this.§6g§(param1)) == null)
         {
            _loc6_ = new §<P§(param1,param3,param4,param2,null);
            this.§,o§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§]8§(param2);
         _loc6_.§]d§(this.§7!h§ + this.§]!x§);
         if(param2 == §2d§.HOVER || param2 == §2d§.§ M§)
         {
            _loc6_.§'7§(this.§9!I§.hitTest(_loc5_,true));
         }
         if(param2 == §2d§.§ M§)
         {
            this.§@R§(_loc6_);
         }
      }
      
      private function §#!P§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§<P§ = null;
         var _loc4_:§<P§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§ v§;
            this.§ v§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§9m§ && _loc2_ != this.§ v§)
            {
               this.§9h§.visible = this.§ v§;
               this.§9h§.§7!q§(this.§9!I§.stageWidth / 2,this.§9!I§.stageHeight / 2);
               _loc3_ = this.§6g§(0);
               _loc4_ = this.§6g§(1);
               if(_loc3_)
               {
                  this.§9h§.§"!C§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §2d§.§&W§)
               {
                  this.§'!9§.unshift([1,§2d§.§&W§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§ v§ && _loc3_)
               {
                  if(_loc3_.phase == §2d§.§ M§ || _loc3_.phase == §2d§.§+!!§)
                  {
                     this.§'!9§.unshift([1,§2d§.§ M§,this.§9h§.§[!s§,this.§9h§.§>!q§]);
                  }
                  else
                  {
                     this.§'!9§.unshift([1,§2d§.HOVER,this.§9h§.§[!s§,this.§9h§.§>!q§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!$§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §@R§(param1:§<P§) : void
      {
         var _loc4_:§<P§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§<P§ = null;
         var _loc3_:Number = §'R§ * §'R§;
         for each(_loc4_ in this.§3m§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§<!>§(_loc2_.§`V§ + 1);
            this.§3m§.splice(this.§3m§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§<!>§(1);
         }
         this.§3m§.push(param1.clone());
      }
      
      private function §,o§(param1:§<P§) : void
      {
         var _loc2_:int = this.§#"%§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§#"%§[_loc2_].id == param1.id)
            {
               this.§#"%§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§#"%§.push(param1);
      }
      
      private function §6g§(param1:int) : §<P§
      {
         var _loc2_:§<P§ = null;
         for each(_loc2_ in this.§#"%§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §9m§() : Boolean
      {
         return this.§9h§ != null;
      }
      
      public function set §9m§(param1:Boolean) : void
      {
         if(this.§9m§ == param1)
         {
            return;
         }
      }
   }
}
