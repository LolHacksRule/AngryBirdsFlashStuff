package starling.events
{
   import §<!N§.Stage;
   import flash.geom.Point;
   
   public class §3X§
   {
      
      private static const §in §:Number = 0.3;
      
      private static const §-!7§:Number = 25;
      
      private static var §@z§:Vector.<int> = new Vector.<int>(0);
      
      private static var §^e§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §3+§:Stage;
      
      private var §,s§:Number;
      
      private var §]>§:Number;
      
      private var §]!M§:§?!!§;
      
      private var §6x§:Vector.<§<p§>;
      
      private var §;0§:Vector.<Array>;
      
      private var § d§:Vector.<§<p§>;
      
      private var §<!H§:Boolean = false;
      
      private var §,w§:Boolean = false;
      
      public function §3X§(param1:Stage)
      {
         super();
         this.§3+§ = param1;
         this.§]>§ = 0;
         this.§,s§ = 0;
         this.§6x§ = new Vector.<§<p§>(0);
         this.§;0§ = new Vector.<Array>(0);
         this.§ d§ = new Vector.<§<p§>(0);
         this.§3+§.addEventListener(KeyboardEvent.KEY_DOWN,this.§ true§);
         this.§3+§.addEventListener(KeyboardEvent.KEY_UP,this.§ true§);
      }
      
      public function dispose() : void
      {
         this.§3+§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§ true§);
         this.§3+§.removeEventListener(KeyboardEvent.KEY_UP,this.§ true§);
         if(this.§]!M§)
         {
            this.§]!M§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§<p§ = null;
         var _loc5_:§<p§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§,s§ += param1;
         this.§]>§ = 0;
         if(this.§ d§.length > 0)
         {
            _loc2_ = this.§ d§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§,s§ - this.§ d§[_loc2_].timestamp > §in §)
               {
                  this.§ d§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§;0§.length > 0)
         {
            §@z§.length = §^e§.length = 0;
            for each(_loc5_ in this.§6x§)
            {
               if(_loc5_.phase == §5r§.§0!O§ || _loc5_.phase == §5r§.§;5§)
               {
                  _loc5_.§"!7§(§5r§.§?R§);
               }
            }
            while(this.§;0§.length > 0 && §@z§.indexOf(this.§;0§[this.§;0§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§;0§.pop())[0] as int;
               if((_loc4_ = this.§%A§(_loc3_)) && _loc4_.phase == §5r§.§return§ && _loc4_.target)
               {
                  §^e§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§8v§.apply(this,_loc7_);
               §@z§.push(_loc3_);
            }
            for each(_loc6_ in §^e§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§+2§,this.§6x§,this.§<!H§,this.§,w§));
               }
            }
            for each(_loc3_ in §@z§)
            {
               if((_loc4_ = this.§%A§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§+2§,this.§6x§,this.§<!H§,this.§,w§));
               }
            }
            _loc2_ = this.§6x§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§6x§[_loc2_].phase == §5r§.§@!?§)
               {
                  this.§6x§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§]>§ += 0.00001;
         }
      }
      
      public function §<!2§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§;0§.unshift(arguments);
         if(this.§,w§ && this.§>C§ && param1 == 0)
         {
            this.§]!M§.§`N§(param3,param4,this.§<!H§);
            this.§;0§.unshift([1,param2,this.§]!M§.§<!O§,this.§]!M§.§#>§]);
         }
      }
      
      private function §8v§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§<p§;
         if((_loc6_ = this.§%A§(param1)) == null)
         {
            _loc6_ = new §<p§(param1,param3,param4,param2,null);
            this.§1!I§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§"!7§(param2);
         _loc6_.§5!@§(this.§,s§ + this.§]>§);
         if(param2 == §5r§.§return§ || param2 == §5r§.§0!O§)
         {
            _loc6_.§?p§(this.§3+§.hitTest(_loc5_,true));
         }
         if(param2 == §5r§.§0!O§)
         {
            this.§+!>§(_loc6_);
         }
      }
      
      private function § true§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§<p§ = null;
         var _loc4_:§<p§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§,w§;
            this.§,w§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§>C§ && _loc2_ != this.§,w§)
            {
               this.§]!M§.visible = this.§,w§;
               this.§]!M§.§5!2§(this.§3+§.stageWidth / 2,this.§3+§.stageHeight / 2);
               _loc3_ = this.§%A§(0);
               _loc4_ = this.§%A§(1);
               if(_loc3_)
               {
                  this.§]!M§.§`N§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §5r§.§@!?§)
               {
                  this.§;0§.unshift([1,§5r§.§@!?§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§,w§ && _loc3_)
               {
                  if(_loc3_.phase == §5r§.§0!O§ || _loc3_.phase == §5r§.§;5§)
                  {
                     this.§;0§.unshift([1,§5r§.§0!O§,this.§]!M§.§<!O§,this.§]!M§.§#>§]);
                  }
                  else
                  {
                     this.§;0§.unshift([1,§5r§.§return§,this.§]!M§.§<!O§,this.§]!M§.§#>§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§<!H§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §+!>§(param1:§<p§) : void
      {
         var _loc4_:§<p§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§<p§ = null;
         var _loc3_:Number = §-!7§ * §-!7§;
         for each(_loc4_ in this.§ d§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§'!"§(_loc2_.§]!@§ + 1);
            this.§ d§.splice(this.§ d§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§'!"§(1);
         }
         this.§ d§.push(param1.clone());
      }
      
      private function §1!I§(param1:§<p§) : void
      {
         var _loc2_:int = this.§6x§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§6x§[_loc2_].id == param1.id)
            {
               this.§6x§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§6x§.push(param1);
      }
      
      private function §%A§(param1:int) : §<p§
      {
         var _loc2_:§<p§ = null;
         for each(_loc2_ in this.§6x§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §>C§() : Boolean
      {
         return this.§]!M§ != null;
      }
      
      public function set §>C§(param1:Boolean) : void
      {
         if(this.§>C§ == param1)
         {
            return;
         }
      }
   }
}
