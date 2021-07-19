package starling.events
{
   import §6![§.Stage;
   import flash.geom.Point;
   
   public class §4"!§
   {
      
      private static const §5!§:Number = 0.3;
      
      private static const §8[§:Number = 25;
      
      private static var § use§:Vector.<int> = new Vector.<int>(0);
      
      private static var §#<§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §7Y§:Stage;
      
      private var §%!=§:Number;
      
      private var §?!W§:Number;
      
      private var §=!g§:§ !k§;
      
      private var §%m§:Vector.<§4!#§>;
      
      private var §46§:Vector.<Array>;
      
      private var §2!"§:Vector.<§4!#§>;
      
      private var §`!"§:Boolean = false;
      
      private var §8" §:Boolean = false;
      
      public function §4"!§(param1:Stage)
      {
         super();
         this.§7Y§ = param1;
         this.§?!W§ = 0;
         this.§%!=§ = 0;
         this.§%m§ = new Vector.<§4!#§>(0);
         this.§46§ = new Vector.<Array>(0);
         this.§2!"§ = new Vector.<§4!#§>(0);
         this.§7Y§.addEventListener(KeyboardEvent.KEY_DOWN,this.§=h§);
         this.§7Y§.addEventListener(KeyboardEvent.KEY_UP,this.§=h§);
      }
      
      public function dispose() : void
      {
         this.§7Y§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§=h§);
         this.§7Y§.removeEventListener(KeyboardEvent.KEY_UP,this.§=h§);
         if(this.§=!g§)
         {
            this.§=!g§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§4!#§ = null;
         var _loc5_:§4!#§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§%!=§ += param1;
         this.§?!W§ = 0;
         if(this.§2!"§.length > 0)
         {
            _loc2_ = this.§2!"§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§%!=§ - this.§2!"§[_loc2_].timestamp > §5!§)
               {
                  this.§2!"§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§46§.length > 0)
         {
            § use§.length = §#<§.length = 0;
            for each(_loc5_ in this.§%m§)
            {
               if(_loc5_.phase == §"",§.§"!A§ || _loc5_.phase == §"",§.§#D§)
               {
                  _loc5_.§=9§(§"",§.§'w§);
               }
            }
            while(this.§46§.length > 0 && § use§.indexOf(this.§46§[this.§46§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§46§.pop())[0] as int;
               if((_loc4_ = this.§`!I§(_loc3_)) && _loc4_.phase == §"",§.HOVER && _loc4_.target)
               {
                  §#<§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§#t§.apply(this,_loc7_);
               § use§.push(_loc3_);
            }
            for each(_loc6_ in §#<§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§77§,this.§%m§,this.§`!"§,this.§8" §));
               }
            }
            for each(_loc3_ in § use§)
            {
               if((_loc4_ = this.§`!I§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§77§,this.§%m§,this.§`!"§,this.§8" §));
               }
            }
            _loc2_ = this.§%m§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§%m§[_loc2_].phase == §"",§.§5!=§)
               {
                  this.§%m§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§?!W§ += 0.00001;
         }
      }
      
      public function §5!?§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§46§.unshift(arguments);
         if(this.§8" § && this.§+_§ && param1 == 0)
         {
            this.§=!g§.§#-§(param3,param4,this.§`!"§);
            this.§46§.unshift([1,param2,this.§=!g§.§?!O§,this.§=!g§.§4!s§]);
         }
      }
      
      private function §#t§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§4!#§;
         if((_loc6_ = this.§`!I§(param1)) == null)
         {
            _loc6_ = new §4!#§(param1,param3,param4,param2,null);
            this.§ !+§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§=9§(param2);
         _loc6_.§ Z§(this.§%!=§ + this.§?!W§);
         if(param2 == §"",§.HOVER || param2 == §"",§.§"!A§)
         {
            _loc6_.§5",§(this.§7Y§.hitTest(_loc5_,true));
         }
         if(param2 == §"",§.§"!A§)
         {
            this.§0Z§(_loc6_);
         }
      }
      
      private function §=h§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§4!#§ = null;
         var _loc4_:§4!#§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§8" §;
            this.§8" § = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§+_§ && _loc2_ != this.§8" §)
            {
               this.§=!g§.visible = this.§8" §;
               this.§=!g§.§@!M§(this.§7Y§.stageWidth / 2,this.§7Y§.stageHeight / 2);
               _loc3_ = this.§`!I§(0);
               _loc4_ = this.§`!I§(1);
               if(_loc3_)
               {
                  this.§=!g§.§#-§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §"",§.§5!=§)
               {
                  this.§46§.unshift([1,§"",§.§5!=§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§8" § && _loc3_)
               {
                  if(_loc3_.phase == §"",§.§"!A§ || _loc3_.phase == §"",§.§#D§)
                  {
                     this.§46§.unshift([1,§"",§.§"!A§,this.§=!g§.§?!O§,this.§=!g§.§4!s§]);
                  }
                  else
                  {
                     this.§46§.unshift([1,§"",§.HOVER,this.§=!g§.§?!O§,this.§=!g§.§4!s§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§`!"§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §0Z§(param1:§4!#§) : void
      {
         var _loc4_:§4!#§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§4!#§ = null;
         var _loc3_:Number = §8[§ * §8[§;
         for each(_loc4_ in this.§2!"§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§3!]§(_loc2_.§7!L§ + 1);
            this.§2!"§.splice(this.§2!"§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§3!]§(1);
         }
         this.§2!"§.push(param1.clone());
      }
      
      private function § !+§(param1:§4!#§) : void
      {
         var _loc2_:int = this.§%m§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§%m§[_loc2_].id == param1.id)
            {
               this.§%m§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§%m§.push(param1);
      }
      
      private function §`!I§(param1:int) : §4!#§
      {
         var _loc2_:§4!#§ = null;
         for each(_loc2_ in this.§%m§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §+_§() : Boolean
      {
         return this.§=!g§ != null;
      }
      
      public function set §+_§(param1:Boolean) : void
      {
         if(this.§+_§ == param1)
         {
            return;
         }
      }
   }
}
