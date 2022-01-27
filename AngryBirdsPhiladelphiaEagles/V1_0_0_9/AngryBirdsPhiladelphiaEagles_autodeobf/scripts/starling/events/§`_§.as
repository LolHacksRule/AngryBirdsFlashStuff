package starling.events
{
   import §-!'§.Stage;
   import flash.geom.Point;
   
   public class §`_§
   {
      
      private static const §]'§:Number = 0.3;
      
      private static const §&§:Number = 25;
      
      private static var §3B§:Vector.<int> = new Vector.<int>(0);
      
      private static var §0O§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §+<§:Stage;
      
      private var §if§:Number;
      
      private var §;&§:Number;
      
      private var §"n§:§"i§;
      
      private var §<R§:Vector.<§+l§>;
      
      private var §!!2§:Vector.<Array>;
      
      private var §,g§:Vector.<§+l§>;
      
      private var §"d§:Boolean = false;
      
      private var § i§:Boolean = false;
      
      public function §`_§(param1:Stage)
      {
         super();
         this.§+<§ = param1;
         this.§;&§ = 0;
         this.§if§ = 0;
         this.§<R§ = new Vector.<§+l§>(0);
         this.§!!2§ = new Vector.<Array>(0);
         this.§,g§ = new Vector.<§+l§>(0);
         this.§+<§.addEventListener(KeyboardEvent.KEY_DOWN,this.§>!I§);
         this.§+<§.addEventListener(KeyboardEvent.KEY_UP,this.§>!I§);
      }
      
      public function dispose() : void
      {
         this.§+<§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§>!I§);
         this.§+<§.removeEventListener(KeyboardEvent.KEY_UP,this.§>!I§);
         if(this.§"n§)
         {
            this.§"n§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§+l§ = null;
         var _loc5_:§+l§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§if§ += param1;
         this.§;&§ = 0;
         if(this.§,g§.length > 0)
         {
            _loc2_ = this.§,g§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§if§ - this.§,g§[_loc2_].timestamp > §]'§)
               {
                  this.§,g§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§!!2§.length > 0)
         {
            §3B§.length = §0O§.length = 0;
            for each(_loc5_ in this.§<R§)
            {
               if(_loc5_.phase == §9V§.§ for§ || _loc5_.phase == §9V§.§]`§)
               {
                  _loc5_.§@!0§(§9V§.§9n§);
               }
            }
            while(this.§!!2§.length > 0 && §3B§.indexOf(this.§!!2§[this.§!!2§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§!!2§.pop())[0] as int;
               if((_loc4_ = this.§9!F§(_loc3_)) && _loc4_.phase == §9V§.§<V§ && _loc4_.target)
               {
                  §0O§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§`z§.apply(this,_loc7_);
               §3B§.push(_loc3_);
            }
            for each(_loc6_ in §0O§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§=w§,this.§<R§,this.§"d§,this.§ i§));
               }
            }
            for each(_loc3_ in §3B§)
            {
               if((_loc4_ = this.§9!F§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§=w§,this.§<R§,this.§"d§,this.§ i§));
               }
            }
            _loc2_ = this.§<R§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§<R§[_loc2_].phase == §9V§.§^^§)
               {
                  this.§<R§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§;&§ += 0.00001;
         }
      }
      
      public function §"!8§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§!!2§.unshift(arguments);
         if(this.§ i§ && this.§true § && param1 == 0)
         {
            this.§"n§.§4g§(param3,param4,this.§"d§);
            this.§!!2§.unshift([1,param2,this.§"n§.§;]§,this.§"n§.§`F§]);
         }
      }
      
      private function §`z§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§+l§;
         if((_loc6_ = this.§9!F§(param1)) == null)
         {
            _loc6_ = new §+l§(param1,param3,param4,param2,null);
            this.§"!A§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§@!0§(param2);
         _loc6_.§2;§(this.§if§ + this.§;&§);
         if(param2 == §9V§.§<V§ || param2 == §9V§.§ for§)
         {
            _loc6_.§,!?§(this.§+<§.hitTest(_loc5_,true));
         }
         if(param2 == §9V§.§ for§)
         {
            this.§;!I§(_loc6_);
         }
      }
      
      private function §>!I§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§+l§ = null;
         var _loc4_:§+l§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§ i§;
            this.§ i§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§true § && _loc2_ != this.§ i§)
            {
               this.§"n§.visible = this.§ i§;
               this.§"n§.§3!@§(this.§+<§.stageWidth / 2,this.§+<§.stageHeight / 2);
               _loc3_ = this.§9!F§(0);
               _loc4_ = this.§9!F§(1);
               if(_loc3_)
               {
                  this.§"n§.§4g§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §9V§.§^^§)
               {
                  this.§!!2§.unshift([1,§9V§.§^^§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§ i§ && _loc3_)
               {
                  if(_loc3_.phase == §9V§.§ for§ || _loc3_.phase == §9V§.§]`§)
                  {
                     this.§!!2§.unshift([1,§9V§.§ for§,this.§"n§.§;]§,this.§"n§.§`F§]);
                  }
                  else
                  {
                     this.§!!2§.unshift([1,§9V§.§<V§,this.§"n§.§;]§,this.§"n§.§`F§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§"d§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §;!I§(param1:§+l§) : void
      {
         var _loc4_:§+l§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§+l§ = null;
         var _loc3_:Number = §&§ * §&§;
         for each(_loc4_ in this.§,g§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§5W§(_loc2_.§[N§ + 1);
            this.§,g§.splice(this.§,g§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§5W§(1);
         }
         this.§,g§.push(param1.clone());
      }
      
      private function §"!A§(param1:§+l§) : void
      {
         var _loc2_:int = this.§<R§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§<R§[_loc2_].id == param1.id)
            {
               this.§<R§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§<R§.push(param1);
      }
      
      private function §9!F§(param1:int) : §+l§
      {
         var _loc2_:§+l§ = null;
         for each(_loc2_ in this.§<R§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §true §() : Boolean
      {
         return this.§"n§ != null;
      }
      
      public function set §true §(param1:Boolean) : void
      {
         if(this.§true § == param1)
         {
            return;
         }
      }
   }
}
