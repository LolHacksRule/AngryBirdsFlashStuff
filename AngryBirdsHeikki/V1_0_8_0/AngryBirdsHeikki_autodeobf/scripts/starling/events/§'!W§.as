package starling.events
{
   import §=!E§.Stage;
   import flash.geom.Point;
   
   public class §'!W§
   {
      
      private static const §>-§:Number = 0.3;
      
      private static const §?K§:Number = 25;
      
      private static var §!$§:Vector.<int> = new Vector.<int>(0);
      
      private static var §>!O§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §8_§:Stage;
      
      private var §6k§:Number;
      
      private var §@I§:Number;
      
      private var §'p§:§,x§;
      
      private var § y§:Vector.<§?!$§>;
      
      private var §1§:Vector.<Array>;
      
      private var § case§:Vector.<§?!$§>;
      
      private var §@!D§:Boolean = false;
      
      private var §`p§:Boolean = false;
      
      public function §'!W§(param1:Stage)
      {
         super();
         this.§8_§ = param1;
         this.§@I§ = 0;
         this.§6k§ = 0;
         this.§ y§ = new Vector.<§?!$§>(0);
         this.§1§ = new Vector.<Array>(0);
         this.§ case§ = new Vector.<§?!$§>(0);
         this.§8_§.addEventListener(KeyboardEvent.KEY_DOWN,this.§3a§);
         this.§8_§.addEventListener(KeyboardEvent.KEY_UP,this.§3a§);
      }
      
      public function dispose() : void
      {
         this.§8_§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§3a§);
         this.§8_§.removeEventListener(KeyboardEvent.KEY_UP,this.§3a§);
         if(this.§'p§)
         {
            this.§'p§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§?!$§ = null;
         var _loc5_:§?!$§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§6k§ += param1;
         this.§@I§ = 0;
         if(this.§ case§.length > 0)
         {
            _loc2_ = this.§ case§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§6k§ - this.§ case§[_loc2_].timestamp > §>-§)
               {
                  this.§ case§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§1§.length > 0)
         {
            §!$§.length = §>!O§.length = 0;
            for each(_loc5_ in this.§ y§)
            {
               if(_loc5_.phase == §]I§.§?u§ || _loc5_.phase == §]I§.§ J§)
               {
                  _loc5_.§^"§(§]I§.§1-§);
               }
            }
            while(this.§1§.length > 0 && §!$§.indexOf(this.§1§[this.§1§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§1§.pop())[0] as int;
               if((_loc4_ = this.§[!W§(_loc3_)) && _loc4_.phase == §]I§.§`O§ && _loc4_.target)
               {
                  §>!O§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§?!V§.apply(this,_loc7_);
               §!$§.push(_loc3_);
            }
            for each(_loc6_ in §>!O§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§4§,this.§ y§,this.§@!D§,this.§`p§));
               }
            }
            for each(_loc3_ in §!$§)
            {
               if((_loc4_ = this.§[!W§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§4§,this.§ y§,this.§@!D§,this.§`p§));
               }
            }
            _loc2_ = this.§ y§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§ y§[_loc2_].phase == §]I§.§`7§)
               {
                  this.§ y§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§@I§ += 0.00001;
         }
      }
      
      public function §8s§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§1§.unshift(arguments);
         if(this.§`p§ && this.simulateMultitouch && param1 == 0)
         {
            this.§'p§.§8!2§(param3,param4,this.§@!D§);
            this.§1§.unshift([1,param2,this.§'p§.§[e§,this.§'p§.§6H§]);
         }
      }
      
      private function §?!V§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§?!$§;
         if((_loc6_ = this.§[!W§(param1)) == null)
         {
            _loc6_ = new §?!$§(param1,param3,param4,param2,null);
            this.§#_§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§^"§(param2);
         _loc6_.§7!_§(this.§6k§ + this.§@I§);
         if(param2 == §]I§.§`O§ || param2 == §]I§.§?u§)
         {
            _loc6_.§@m§(this.§8_§.hitTest(_loc5_,true));
         }
         if(param2 == §]I§.§?u§)
         {
            this.§'!I§(_loc6_);
         }
      }
      
      private function §3a§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§?!$§ = null;
         var _loc4_:§?!$§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§`p§;
            this.§`p§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§`p§)
            {
               this.§'p§.visible = this.§`p§;
               this.§'p§.§"9§(this.§8_§.stageWidth / 2,this.§8_§.stageHeight / 2);
               _loc3_ = this.§[!W§(0);
               _loc4_ = this.§[!W§(1);
               if(_loc3_)
               {
                  this.§'p§.§8!2§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §]I§.§`7§)
               {
                  this.§1§.unshift([1,§]I§.§`7§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§`p§ && _loc3_)
               {
                  if(_loc3_.phase == §]I§.§?u§ || _loc3_.phase == §]I§.§ J§)
                  {
                     this.§1§.unshift([1,§]I§.§?u§,this.§'p§.§[e§,this.§'p§.§6H§]);
                  }
                  else
                  {
                     this.§1§.unshift([1,§]I§.§`O§,this.§'p§.§[e§,this.§'p§.§6H§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§@!D§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §'!I§(param1:§?!$§) : void
      {
         var _loc4_:§?!$§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§?!$§ = null;
         var _loc3_:Number = §?K§ * §?K§;
         for each(_loc4_ in this.§ case§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§,!T§(_loc2_.§9y§ + 1);
            this.§ case§.splice(this.§ case§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§,!T§(1);
         }
         this.§ case§.push(param1.clone());
      }
      
      private function §#_§(param1:§?!$§) : void
      {
         var _loc2_:int = this.§ y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§ y§[_loc2_].id == param1.id)
            {
               this.§ y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ y§.push(param1);
      }
      
      private function §[!W§(param1:int) : §?!$§
      {
         var _loc2_:§?!$§ = null;
         for each(_loc2_ in this.§ y§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§'p§ != null;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         if(this.simulateMultitouch == param1)
         {
            return;
         }
      }
   }
}
