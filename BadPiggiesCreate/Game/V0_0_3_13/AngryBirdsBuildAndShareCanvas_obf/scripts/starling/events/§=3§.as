package starling.events
{
   import §`L§.Stage;
   import flash.geom.Point;
   
   public class §=3§
   {
      
      private static const §0"&§:Number = 0.3;
      
      private static const §3!"§:Number = 25;
      
      private static var §;!R§:Vector.<int> = new Vector.<int>(0);
      
      private static var §+!f§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §="!§:Stage;
      
      private var §>g§:Number;
      
      private var §,^§:Number;
      
      private var §-">§:§1!3§;
      
      private var §=!6§:Vector.<§<!,§>;
      
      private var §+O§:Vector.<Array>;
      
      private var § !h§:Vector.<§<!,§>;
      
      private var §7'§:Boolean = false;
      
      private var §4!F§:Boolean = false;
      
      public function §=3§(param1:Stage)
      {
         super();
         this.§="!§ = param1;
         this.§,^§ = 0;
         this.§>g§ = 0;
         this.§=!6§ = new Vector.<§<!,§>(0);
         this.§+O§ = new Vector.<Array>(0);
         this.§ !h§ = new Vector.<§<!,§>(0);
         this.§="!§.addEventListener(KeyboardEvent.KEY_DOWN,this.§ 6§);
         this.§="!§.addEventListener(KeyboardEvent.KEY_UP,this.§ 6§);
      }
      
      public function dispose() : void
      {
         this.§="!§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ 6§);
         this.§="!§.removeEventListener(KeyboardEvent.KEY_UP,this.§ 6§);
         if(this.§-">§)
         {
            this.§-">§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§<!,§ = null;
         var _loc5_:§<!,§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§>g§ += param1;
         this.§,^§ = 0;
         if(this.§ !h§.length > 0)
         {
            _loc2_ = this.§ !h§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§>g§ - this.§ !h§[_loc2_].timestamp > §0"&§)
               {
                  this.§ !h§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§+O§.length > 0)
         {
            §;!R§.length = §+!f§.length = 0;
            for each(_loc5_ in this.§=!6§)
            {
               if(_loc5_.phase == §;[§.§!!q§ || _loc5_.phase == §;[§.§!y§)
               {
                  _loc5_.§>!6§(§;[§.§[!]§);
               }
            }
            while(this.§+O§.length > 0 && §;!R§.indexOf(this.§+O§[this.§+O§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§+O§.pop())[0] as int;
               if((_loc4_ = this.§3,§(_loc3_)) && _loc4_.phase == §;[§.§?K§ && _loc4_.target)
               {
                  §+!f§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§"[§.apply(this,_loc7_);
               §;!R§.push(_loc3_);
            }
            for each(_loc6_ in §+!f§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§1"+§,this.§=!6§,this.§7'§,this.§4!F§));
               }
            }
            for each(_loc3_ in §;!R§)
            {
               if((_loc4_ = this.§3,§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§1"+§,this.§=!6§,this.§7'§,this.§4!F§));
               }
            }
            _loc2_ = this.§=!6§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=!6§[_loc2_].phase == §;[§.§7f§)
               {
                  this.§=!6§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§,^§ += 0.00001;
         }
      }
      
      public function §[f§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§+O§.unshift(arguments);
         if(this.§4!F§ && this.§5!J§ && param1 == 0)
         {
            this.§-">§.§&^§(param3,param4,this.§7'§);
            this.§+O§.unshift([1,param2,this.§-">§.§2?§,this.§-">§.§7!_§]);
         }
      }
      
      private function §"[§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§<!,§;
         if((_loc6_ = this.§3,§(param1)) == null)
         {
            _loc6_ = new §<!,§(param1,param3,param4,param2,null);
            this.§4t§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§>!6§(param2);
         _loc6_.§;!I§(this.§>g§ + this.§,^§);
         if(param2 == §;[§.§?K§ || param2 == §;[§.§!!q§)
         {
            _loc6_.§=!#§(this.§="!§.hitTest(_loc5_,true));
         }
         if(param2 == §;[§.§!!q§)
         {
            this.§6">§(_loc6_);
         }
      }
      
      private function § 6§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§<!,§ = null;
         var _loc4_:§<!,§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§4!F§;
            this.§4!F§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§5!J§ && _loc2_ != this.§4!F§)
            {
               this.§-">§.visible = this.§4!F§;
               this.§-">§.§?"?§(this.§="!§.stageWidth / 2,this.§="!§.stageHeight / 2);
               _loc3_ = this.§3,§(0);
               _loc4_ = this.§3,§(1);
               if(_loc3_)
               {
                  this.§-">§.§&^§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §;[§.§7f§)
               {
                  this.§+O§.unshift([1,§;[§.§7f§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§4!F§ && _loc3_)
               {
                  if(_loc3_.phase == §;[§.§!!q§ || _loc3_.phase == §;[§.§!y§)
                  {
                     this.§+O§.unshift([1,§;[§.§!!q§,this.§-">§.§2?§,this.§-">§.§7!_§]);
                  }
                  else
                  {
                     this.§+O§.unshift([1,§;[§.§?K§,this.§-">§.§2?§,this.§-">§.§7!_§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§7'§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §6">§(param1:§<!,§) : void
      {
         var _loc4_:§<!,§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§<!,§ = null;
         var _loc3_:Number = §3!"§ * §3!"§;
         for each(_loc4_ in this.§ !h§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§>K§(_loc2_.§;!w§ + 1);
            this.§ !h§.splice(this.§ !h§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§>K§(1);
         }
         this.§ !h§.push(param1.clone());
      }
      
      private function §4t§(param1:§<!,§) : void
      {
         var _loc2_:int = this.§=!6§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§=!6§[_loc2_].id == param1.id)
            {
               this.§=!6§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§=!6§.push(param1);
      }
      
      private function §3,§(param1:int) : §<!,§
      {
         var _loc2_:§<!,§ = null;
         for each(_loc2_ in this.§=!6§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §5!J§() : Boolean
      {
         return this.§-">§ != null;
      }
      
      public function set §5!J§(param1:Boolean) : void
      {
         if(this.§5!J§ == param1)
         {
            return;
         }
      }
   }
}
