package starling.events
{
   import § !=§.Stage;
   import flash.geom.Point;
   
   public class §!!5§
   {
      
      private static const §@!Z§:Number = 0.3;
      
      private static const §-%§:Number = 25;
      
      private static var §^!v§:Vector.<int> = new Vector.<int>(0);
      
      private static var §1i§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §=>§:Stage;
      
      private var §%!G§:Number;
      
      private var §`!5§:Number;
      
      private var §;z§:§ m§;
      
      private var §-!p§:Vector.<§]!?§>;
      
      private var §'M§:Vector.<Array>;
      
      private var § B§:Vector.<§]!?§>;
      
      private var §&"§:Boolean = false;
      
      private var §5R§:Boolean = false;
      
      public function §!!5§(param1:Stage)
      {
         super();
         this.§=>§ = param1;
         this.§`!5§ = 0;
         this.§%!G§ = 0;
         this.§-!p§ = new Vector.<§]!?§>(0);
         this.§'M§ = new Vector.<Array>(0);
         this.§ B§ = new Vector.<§]!?§>(0);
         this.§=>§.addEventListener(KeyboardEvent.KEY_DOWN,this.§4!I§);
         this.§=>§.addEventListener(KeyboardEvent.KEY_UP,this.§4!I§);
      }
      
      public function dispose() : void
      {
         this.§=>§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§4!I§);
         this.§=>§.removeEventListener(KeyboardEvent.KEY_UP,this.§4!I§);
         if(this.§;z§)
         {
            this.§;z§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§]!?§ = null;
         var _loc5_:§]!?§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§%!G§ += param1;
         this.§`!5§ = 0;
         if(this.§ B§.length > 0)
         {
            _loc2_ = this.§ B§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§%!G§ - this.§ B§[_loc2_].timestamp > §@!Z§)
               {
                  this.§ B§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§'M§.length > 0)
         {
            §^!v§.length = §1i§.length = 0;
            for each(_loc5_ in this.§-!p§)
            {
               if(_loc5_.phase == §,!B§.§3<§ || _loc5_.phase == §,!B§.§'!R§)
               {
                  _loc5_.§0!4§(§,!B§.§8;§);
               }
            }
            while(this.§'M§.length > 0 && §^!v§.indexOf(this.§'M§[this.§'M§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§'M§.pop())[0] as int;
               if((_loc4_ = this.§case §(_loc3_)) && _loc4_.phase == §,!B§.HOVER && _loc4_.target)
               {
                  §1i§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§9!V§.apply(this,_loc7_);
               §^!v§.push(_loc3_);
            }
            for each(_loc6_ in §1i§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7Z§,this.§-!p§,this.§&"§,this.§5R§));
               }
            }
            for each(_loc3_ in §^!v§)
            {
               if((_loc4_ = this.§case §(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§7Z§,this.§-!p§,this.§&"§,this.§5R§));
               }
            }
            _loc2_ = this.§-!p§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§-!p§[_loc2_].phase == §,!B§.§0!L§)
               {
                  this.§-!p§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§`!5§ += 0.00001;
         }
      }
      
      public function §8a§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§'M§.unshift(arguments);
         if(this.§5R§ && this.§-!&§ && param1 == 0)
         {
            this.§;z§.§do§(param3,param4,this.§&"§);
            this.§'M§.unshift([1,param2,this.§;z§.§@!d§,this.§;z§.§@!<§]);
         }
      }
      
      private function §9!V§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§]!?§;
         if((_loc6_ = this.§case §(param1)) == null)
         {
            _loc6_ = new §]!?§(param1,param3,param4,param2,null);
            this.§4^§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§0!4§(param2);
         _loc6_.§`x§(this.§%!G§ + this.§`!5§);
         if(param2 == §,!B§.HOVER || param2 == §,!B§.§3<§)
         {
            _loc6_.§#i§(this.§=>§.hitTest(_loc5_,true));
         }
         if(param2 == §,!B§.§3<§)
         {
            this.§@! §(_loc6_);
         }
      }
      
      private function §4!I§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§]!?§ = null;
         var _loc4_:§]!?§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§5R§;
            this.§5R§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§-!&§ && _loc2_ != this.§5R§)
            {
               this.§;z§.visible = this.§5R§;
               this.§;z§.§>7§(this.§=>§.stageWidth / 2,this.§=>§.stageHeight / 2);
               _loc3_ = this.§case §(0);
               _loc4_ = this.§case §(1);
               if(_loc3_)
               {
                  this.§;z§.§do§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §,!B§.§0!L§)
               {
                  this.§'M§.unshift([1,§,!B§.§0!L§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§5R§ && _loc3_)
               {
                  if(_loc3_.phase == §,!B§.§3<§ || _loc3_.phase == §,!B§.§'!R§)
                  {
                     this.§'M§.unshift([1,§,!B§.§3<§,this.§;z§.§@!d§,this.§;z§.§@!<§]);
                  }
                  else
                  {
                     this.§'M§.unshift([1,§,!B§.HOVER,this.§;z§.§@!d§,this.§;z§.§@!<§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§&"§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §@! §(param1:§]!?§) : void
      {
         var _loc4_:§]!?§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§]!?§ = null;
         var _loc3_:Number = §-%§ * §-%§;
         for each(_loc4_ in this.§ B§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§6!]§(_loc2_.§2!'§ + 1);
            this.§ B§.splice(this.§ B§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§6!]§(1);
         }
         this.§ B§.push(param1.clone());
      }
      
      private function §4^§(param1:§]!?§) : void
      {
         var _loc2_:int = this.§-!p§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§-!p§[_loc2_].id == param1.id)
            {
               this.§-!p§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§-!p§.push(param1);
      }
      
      private function §case §(param1:int) : §]!?§
      {
         var _loc2_:§]!?§ = null;
         for each(_loc2_ in this.§-!p§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §-!&§() : Boolean
      {
         return this.§;z§ != null;
      }
      
      public function set §-!&§(param1:Boolean) : void
      {
         if(this.§-!&§ == param1)
         {
            return;
         }
      }
   }
}
