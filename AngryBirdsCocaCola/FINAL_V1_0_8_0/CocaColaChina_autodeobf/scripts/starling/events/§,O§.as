package starling.events
{
   import §&!9§.Stage;
   import flash.geom.Point;
   
   public class §,O§
   {
      
      private static const §[-§:Number = 0.3;
      
      private static const §^!-§:Number = 25;
      
      private static var §;!I§:Vector.<int> = new Vector.<int>(0);
      
      private static var §"!f§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §@!c§:Stage;
      
      private var §^G§:Number;
      
      private var §3a§:Number;
      
      private var §-!]§:§[e§;
      
      private var §]=§:Vector.<§]!+§>;
      
      private var §"^§:Vector.<Array>;
      
      private var §,h§:Vector.<§]!+§>;
      
      private var §7!&§:Boolean = false;
      
      private var §3+§:Boolean = false;
      
      public function §,O§(param1:Stage)
      {
         super();
         this.§@!c§ = param1;
         this.§3a§ = 0;
         this.§^G§ = 0;
         this.§]=§ = new Vector.<§]!+§>(0);
         this.§"^§ = new Vector.<Array>(0);
         this.§,h§ = new Vector.<§]!+§>(0);
         this.§@!c§.addEventListener(KeyboardEvent.KEY_DOWN,this.§2i§);
         this.§@!c§.addEventListener(KeyboardEvent.KEY_UP,this.§2i§);
      }
      
      public function dispose() : void
      {
         this.§@!c§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§2i§);
         this.§@!c§.removeEventListener(KeyboardEvent.KEY_UP,this.§2i§);
         if(this.§-!]§)
         {
            this.§-!]§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§]!+§ = null;
         var _loc5_:§]!+§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§^G§ += param1;
         this.§3a§ = 0;
         if(this.§,h§.length > 0)
         {
            _loc2_ = this.§,h§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^G§ - this.§,h§[_loc2_].timestamp > §[-§)
               {
                  this.§,h§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§"^§.length > 0)
         {
            §;!I§.length = §"!f§.length = 0;
            for each(_loc5_ in this.§]=§)
            {
               if(_loc5_.phase == §5o§.§"[§ || _loc5_.phase == §5o§.§!P§)
               {
                  _loc5_.§1j§(§5o§.§9!L§);
               }
            }
            while(this.§"^§.length > 0 && §;!I§.indexOf(this.§"^§[this.§"^§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§"^§.pop())[0] as int;
               if((_loc4_ = this.§!`§(_loc3_)) && _loc4_.phase == §5o§.§>p§ && _loc4_.target)
               {
                  §"!f§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§>!Y§.apply(this,_loc7_);
               §;!I§.push(_loc3_);
            }
            for each(_loc6_ in §"!f§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§,!"§,this.§]=§,this.§7!&§,this.§3+§));
               }
            }
            for each(_loc3_ in §;!I§)
            {
               if((_loc4_ = this.§!`§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§,!"§,this.§]=§,this.§7!&§,this.§3+§));
               }
            }
            _loc2_ = this.§]=§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§]=§[_loc2_].phase == §5o§.§0!+§)
               {
                  this.§]=§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§3a§ += 0.00001;
         }
      }
      
      public function §=#§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§"^§.unshift(arguments);
         if(this.§3+§ && this.simulateMultitouch && param1 == 0)
         {
            this.§-!]§.§9W§(param3,param4,this.§7!&§);
            this.§"^§.unshift([1,param2,this.§-!]§.§'!§,this.§-!]§.§4!"§]);
         }
      }
      
      private function §>!Y§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§]!+§;
         if((_loc6_ = this.§!`§(param1)) == null)
         {
            _loc6_ = new §]!+§(param1,param3,param4,param2,null);
            this.§<`§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§1j§(param2);
         _loc6_.§8A§(this.§^G§ + this.§3a§);
         if(param2 == §5o§.§>p§ || param2 == §5o§.§"[§)
         {
            _loc6_.§<V§(this.§@!c§.hitTest(_loc5_,true));
         }
         if(param2 == §5o§.§"[§)
         {
            this.§,!H§(_loc6_);
         }
      }
      
      private function §2i§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§]!+§ = null;
         var _loc4_:§]!+§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§3+§;
            this.§3+§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§3+§)
            {
               this.§-!]§.visible = this.§3+§;
               this.§-!]§.§>!E§(this.§@!c§.stageWidth / 2,this.§@!c§.stageHeight / 2);
               _loc3_ = this.§!`§(0);
               _loc4_ = this.§!`§(1);
               if(_loc3_)
               {
                  this.§-!]§.§9W§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §5o§.§0!+§)
               {
                  this.§"^§.unshift([1,§5o§.§0!+§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§3+§ && _loc3_)
               {
                  if(_loc3_.phase == §5o§.§"[§ || _loc3_.phase == §5o§.§!P§)
                  {
                     this.§"^§.unshift([1,§5o§.§"[§,this.§-!]§.§'!§,this.§-!]§.§4!"§]);
                  }
                  else
                  {
                     this.§"^§.unshift([1,§5o§.§>p§,this.§-!]§.§'!§,this.§-!]§.§4!"§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§7!&§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §,!H§(param1:§]!+§) : void
      {
         var _loc4_:§]!+§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§]!+§ = null;
         var _loc3_:Number = §^!-§ * §^!-§;
         for each(_loc4_ in this.§,h§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§ n§(_loc2_.§-i§ + 1);
            this.§,h§.splice(this.§,h§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§ n§(1);
         }
         this.§,h§.push(param1.clone());
      }
      
      private function §<`§(param1:§]!+§) : void
      {
         var _loc2_:int = this.§]=§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§]=§[_loc2_].id == param1.id)
            {
               this.§]=§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§]=§.push(param1);
      }
      
      private function §!`§(param1:int) : §]!+§
      {
         var _loc2_:§]!+§ = null;
         for each(_loc2_ in this.§]=§)
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
         return this.§-!]§ != null;
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
