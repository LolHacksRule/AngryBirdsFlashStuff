package starling.events
{
   import §<!$§.Stage;
   import flash.geom.Point;
   
   public class §`!Z§
   {
      
      private static const §^f§:Number = 0.3;
      
      private static const §9A§:Number = 25;
      
      private static var §[!0§:Vector.<int> = new Vector.<int>(0);
      
      private static var §,!N§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §[V§:Stage;
      
      private var §,!a§:Number;
      
      private var §,L§:Number;
      
      private var §5n§:§7t§;
      
      private var § o§:Vector.<§?r§>;
      
      private var §&_§:Vector.<Array>;
      
      private var §#Q§:Vector.<§?r§>;
      
      private var §9!b§:Boolean = false;
      
      private var §<2§:Boolean = false;
      
      public function §`!Z§(param1:Stage)
      {
         super();
         this.§[V§ = param1;
         this.§,L§ = 0;
         this.§,!a§ = 0;
         this.§ o§ = new Vector.<§?r§>(0);
         this.§&_§ = new Vector.<Array>(0);
         this.§#Q§ = new Vector.<§?r§>(0);
         this.§[V§.addEventListener(KeyboardEvent.KEY_DOWN,this.§`!-§);
         this.§[V§.addEventListener(KeyboardEvent.KEY_UP,this.§`!-§);
      }
      
      public function dispose() : void
      {
         this.§[V§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!-§);
         this.§[V§.removeEventListener(KeyboardEvent.KEY_UP,this.§`!-§);
         if(this.§5n§)
         {
            this.§5n§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§?r§ = null;
         var _loc5_:§?r§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§,!a§ += param1;
         this.§,L§ = 0;
         if(this.§#Q§.length > 0)
         {
            _loc2_ = this.§#Q§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§,!a§ - this.§#Q§[_loc2_].timestamp > §^f§)
               {
                  this.§#Q§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§&_§.length > 0)
         {
            §[!0§.length = §,!N§.length = 0;
            for each(_loc5_ in this.§ o§)
            {
               if(_loc5_.phase == §&!L§.§";§ || _loc5_.phase == §&!L§.§2S§)
               {
                  _loc5_.§8Z§(§&!L§.§[!§);
               }
            }
            while(this.§&_§.length > 0 && §[!0§.indexOf(this.§&_§[this.§&_§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§&_§.pop())[0] as int;
               if((_loc4_ = this.§5k§(_loc3_)) && _loc4_.phase == §&!L§.§;!@§ && _loc4_.target)
               {
                  §,!N§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§^N§.apply(this,_loc7_);
               §[!0§.push(_loc3_);
            }
            for each(_loc6_ in §,!N§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§[R§,this.§ o§,this.§9!b§,this.§<2§));
               }
            }
            for each(_loc3_ in §[!0§)
            {
               if((_loc4_ = this.§5k§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§[R§,this.§ o§,this.§9!b§,this.§<2§));
               }
            }
            _loc2_ = this.§ o§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§ o§[_loc2_].phase == §&!L§.§"Z§)
               {
                  this.§ o§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§,L§ += 0.00001;
         }
      }
      
      public function §;<§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§&_§.unshift(arguments);
         if(this.§<2§ && this.simulateMultitouch && param1 == 0)
         {
            this.§5n§.§]Y§(param3,param4,this.§9!b§);
            this.§&_§.unshift([1,param2,this.§5n§.§<z§,this.§5n§.§!!@§]);
         }
      }
      
      private function §^N§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§?r§;
         if((_loc6_ = this.§5k§(param1)) == null)
         {
            _loc6_ = new §?r§(param1,param3,param4,param2,null);
            this.§[o§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§8Z§(param2);
         _loc6_.§#!Z§(this.§,!a§ + this.§,L§);
         if(param2 == §&!L§.§;!@§ || param2 == §&!L§.§";§)
         {
            _loc6_.§'x§(this.§[V§.hitTest(_loc5_,true));
         }
         if(param2 == §&!L§.§";§)
         {
            this.§%!`§(_loc6_);
         }
      }
      
      private function §`!-§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§?r§ = null;
         var _loc4_:§?r§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§<2§;
            this.§<2§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§<2§)
            {
               this.§5n§.visible = this.§<2§;
               this.§5n§.§1&§(this.§[V§.stageWidth / 2,this.§[V§.stageHeight / 2);
               _loc3_ = this.§5k§(0);
               _loc4_ = this.§5k§(1);
               if(_loc3_)
               {
                  this.§5n§.§]Y§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §&!L§.§"Z§)
               {
                  this.§&_§.unshift([1,§&!L§.§"Z§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§<2§ && _loc3_)
               {
                  if(_loc3_.phase == §&!L§.§";§ || _loc3_.phase == §&!L§.§2S§)
                  {
                     this.§&_§.unshift([1,§&!L§.§";§,this.§5n§.§<z§,this.§5n§.§!!@§]);
                  }
                  else
                  {
                     this.§&_§.unshift([1,§&!L§.§;!@§,this.§5n§.§<z§,this.§5n§.§!!@§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§9!b§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §%!`§(param1:§?r§) : void
      {
         var _loc4_:§?r§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§?r§ = null;
         var _loc3_:Number = §9A§ * §9A§;
         for each(_loc4_ in this.§#Q§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§9!P§(_loc2_.§2d§ + 1);
            this.§#Q§.splice(this.§#Q§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§9!P§(1);
         }
         this.§#Q§.push(param1.clone());
      }
      
      private function §[o§(param1:§?r§) : void
      {
         var _loc2_:int = this.§ o§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§ o§[_loc2_].id == param1.id)
            {
               this.§ o§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ o§.push(param1);
      }
      
      private function §5k§(param1:int) : §?r§
      {
         var _loc2_:§?r§ = null;
         for each(_loc2_ in this.§ o§)
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
         return this.§5n§ != null;
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
