package starling.events
{
   import §0@§.Stage;
   import flash.geom.Point;
   
   public class §[Z§
   {
      
      private static const §1I§:Number = 0.3;
      
      private static const §%F§:Number = 25;
      
      private static var § _§:Vector.<int> = new Vector.<int>(0);
      
      private static var §36§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §!2§:Stage;
      
      private var §'!b§:Number;
      
      private var §2s§:Number;
      
      private var §9!^§:§0W§;
      
      private var §#!0§:Vector.<§^!$§>;
      
      private var §-&§:Vector.<Array>;
      
      private var §-!R§:Vector.<§^!$§>;
      
      private var §6!;§:Boolean = false;
      
      private var § use§:Boolean = false;
      
      public function §[Z§(param1:Stage)
      {
         super();
         this.§!2§ = param1;
         this.§2s§ = 0;
         this.§'!b§ = 0;
         this.§#!0§ = new Vector.<§^!$§>(0);
         this.§-&§ = new Vector.<Array>(0);
         this.§-!R§ = new Vector.<§^!$§>(0);
         this.§!2§.addEventListener(KeyboardEvent.KEY_DOWN,this.§,H§);
         this.§!2§.addEventListener(KeyboardEvent.KEY_UP,this.§,H§);
      }
      
      public function dispose() : void
      {
         this.§!2§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,H§);
         this.§!2§.removeEventListener(KeyboardEvent.KEY_UP,this.§,H§);
         if(this.§9!^§)
         {
            this.§9!^§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§^!$§ = null;
         var _loc5_:§^!$§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§'!b§ += param1;
         this.§2s§ = 0;
         if(this.§-!R§.length > 0)
         {
            _loc2_ = this.§-!R§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§'!b§ - this.§-!R§[_loc2_].timestamp > §1I§)
               {
                  this.§-!R§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§-&§.length > 0)
         {
            § _§.length = §36§.length = 0;
            for each(_loc5_ in this.§#!0§)
            {
               if(_loc5_.phase == §5!K§.§[g§ || _loc5_.phase == §5!K§.§5`§)
               {
                  _loc5_.§ !;§(§5!K§.§2!_§);
               }
            }
            while(this.§-&§.length > 0 && § _§.indexOf(this.§-&§[this.§-&§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§-&§.pop())[0] as int;
               if((_loc4_ = this.§5!3§(_loc3_)) && _loc4_.phase == §5!K§.§<!@§ && _loc4_.target)
               {
                  §36§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§?_§.apply(this,_loc7_);
               § _§.push(_loc3_);
            }
            for each(_loc6_ in §36§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§&!5§,this.§#!0§,this.§6!;§,this.§ use§));
               }
            }
            for each(_loc3_ in § _§)
            {
               if((_loc4_ = this.§5!3§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§&!5§,this.§#!0§,this.§6!;§,this.§ use§));
               }
            }
            _loc2_ = this.§#!0§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§#!0§[_loc2_].phase == §5!K§.§#%§)
               {
                  this.§#!0§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§2s§ += 0.00001;
         }
      }
      
      public function §>K§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§-&§.unshift(arguments);
         if(this.§ use§ && this.simulateMultitouch && param1 == 0)
         {
            this.§9!^§.§6&§(param3,param4,this.§6!;§);
            this.§-&§.unshift([1,param2,this.§9!^§.§^!"§,this.§9!^§.§>! §]);
         }
      }
      
      private function §?_§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§^!$§;
         if((_loc6_ = this.§5!3§(param1)) == null)
         {
            _loc6_ = new §^!$§(param1,param3,param4,param2,null);
            this.§3h§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§ !;§(param2);
         _loc6_.§=!l§(this.§'!b§ + this.§2s§);
         if(param2 == §5!K§.§<!@§ || param2 == §5!K§.§[g§)
         {
            _loc6_.§%]§(this.§!2§.hitTest(_loc5_,true));
         }
         if(param2 == §5!K§.§[g§)
         {
            this.§6t§(_loc6_);
         }
      }
      
      private function §,H§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§^!$§ = null;
         var _loc4_:§^!$§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§ use§;
            this.§ use§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§ use§)
            {
               this.§9!^§.visible = this.§ use§;
               this.§9!^§.§3Z§(this.§!2§.stageWidth / 2,this.§!2§.stageHeight / 2);
               _loc3_ = this.§5!3§(0);
               _loc4_ = this.§5!3§(1);
               if(_loc3_)
               {
                  this.§9!^§.§6&§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §5!K§.§#%§)
               {
                  this.§-&§.unshift([1,§5!K§.§#%§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§ use§ && _loc3_)
               {
                  if(_loc3_.phase == §5!K§.§[g§ || _loc3_.phase == §5!K§.§5`§)
                  {
                     this.§-&§.unshift([1,§5!K§.§[g§,this.§9!^§.§^!"§,this.§9!^§.§>! §]);
                  }
                  else
                  {
                     this.§-&§.unshift([1,§5!K§.§<!@§,this.§9!^§.§^!"§,this.§9!^§.§>! §]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§6!;§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §6t§(param1:§^!$§) : void
      {
         var _loc4_:§^!$§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§^!$§ = null;
         var _loc3_:Number = §%F§ * §%F§;
         for each(_loc4_ in this.§-!R§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§2N§(_loc2_.§^!#§ + 1);
            this.§-!R§.splice(this.§-!R§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§2N§(1);
         }
         this.§-!R§.push(param1.clone());
      }
      
      private function §3h§(param1:§^!$§) : void
      {
         var _loc2_:int = this.§#!0§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§#!0§[_loc2_].id == param1.id)
            {
               this.§#!0§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§#!0§.push(param1);
      }
      
      private function §5!3§(param1:int) : §^!$§
      {
         var _loc2_:§^!$§ = null;
         for each(_loc2_ in this.§#!0§)
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
         return this.§9!^§ != null;
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
