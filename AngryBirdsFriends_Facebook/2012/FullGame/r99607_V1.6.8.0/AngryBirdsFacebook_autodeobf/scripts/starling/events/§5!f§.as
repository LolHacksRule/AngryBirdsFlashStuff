package starling.events
{
   import §]&§.Stage;
   import flash.geom.Point;
   
   public class §5!f§
   {
      
      private static const §&!#§:Number = 0.3;
      
      private static const §5>§:Number = 25;
      
      private static var §=r§:Vector.<int> = new Vector.<int>(0);
      
      private static var §0d§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §"""§:Stage;
      
      private var §>!C§:Number;
      
      private var §0K§:Number;
      
      private var §4K§:§9t§;
      
      private var §0"+§:Vector.<§5#§>;
      
      private var §?P§:Vector.<Array>;
      
      private var §3u§:Vector.<§5#§>;
      
      private var §<!l§:Boolean = false;
      
      private var §'>§:Boolean = false;
      
      public function §5!f§(param1:Stage)
      {
         super();
         this.§"""§ = param1;
         this.§0K§ = 0;
         this.§>!C§ = 0;
         this.§0"+§ = new Vector.<§5#§>(0);
         this.§?P§ = new Vector.<Array>(0);
         this.§3u§ = new Vector.<§5#§>(0);
         this.§"""§.addEventListener(KeyboardEvent.KEY_DOWN,this.§,!U§);
         this.§"""§.addEventListener(KeyboardEvent.KEY_UP,this.§,!U§);
      }
      
      public function dispose() : void
      {
         this.§"""§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,!U§);
         this.§"""§.removeEventListener(KeyboardEvent.KEY_UP,this.§,!U§);
         if(this.§4K§)
         {
            this.§4K§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§5#§ = null;
         var _loc5_:§5#§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§>!C§ += param1;
         this.§0K§ = 0;
         if(this.§3u§.length > 0)
         {
            _loc2_ = this.§3u§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§>!C§ - this.§3u§[_loc2_].timestamp > §&!#§)
               {
                  this.§3u§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§?P§.length > 0)
         {
            §=r§.length = §0d§.length = 0;
            for each(_loc5_ in this.§0"+§)
            {
               if(_loc5_.phase == §1!Q§.§5J§ || _loc5_.phase == §1!Q§.§'y§)
               {
                  _loc5_.§"!O§(§1!Q§.§0!s§);
               }
            }
            while(this.§?P§.length > 0 && §=r§.indexOf(this.§?P§[this.§?P§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§?P§.pop())[0] as int;
               if((_loc4_ = this.§;!N§(_loc3_)) && _loc4_.phase == §1!Q§.§>!2§ && _loc4_.target)
               {
                  §0d§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§?"1§.apply(this,_loc7_);
               §=r§.push(_loc3_);
            }
            for each(_loc6_ in §0d§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§2"'§,this.§0"+§,this.§<!l§,this.§'>§));
               }
            }
            for each(_loc3_ in §=r§)
            {
               if((_loc4_ = this.§;!N§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§2"'§,this.§0"+§,this.§<!l§,this.§'>§));
               }
            }
            _loc2_ = this.§0"+§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§0"+§[_loc2_].phase == §1!Q§.§^5§)
               {
                  this.§0"+§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§0K§ += 0.00001;
         }
      }
      
      public function §2!=§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§?P§.unshift(arguments);
         if(this.§'>§ && this.§2v§ && param1 == 0)
         {
            this.§4K§.§7w§(param3,param4,this.§<!l§);
            this.§?P§.unshift([1,param2,this.§4K§.§,h§,this.§4K§.§="B§]);
         }
      }
      
      private function §?"1§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§5#§;
         if((_loc6_ = this.§;!N§(param1)) == null)
         {
            _loc6_ = new §5#§(param1,param3,param4,param2,null);
            this.§;!?§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§"!O§(param2);
         _loc6_.§6!G§(this.§>!C§ + this.§0K§);
         if(param2 == §1!Q§.§>!2§ || param2 == §1!Q§.§5J§)
         {
            _loc6_.§>H§(this.§"""§.hitTest(_loc5_,true));
         }
         if(param2 == §1!Q§.§5J§)
         {
            this.§2!k§(_loc6_);
         }
      }
      
      private function §,!U§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§5#§ = null;
         var _loc4_:§5#§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§'>§;
            this.§'>§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§2v§ && _loc2_ != this.§'>§)
            {
               this.§4K§.visible = this.§'>§;
               this.§4K§.§!!§(this.§"""§.stageWidth / 2,this.§"""§.stageHeight / 2);
               _loc3_ = this.§;!N§(0);
               _loc4_ = this.§;!N§(1);
               if(_loc3_)
               {
                  this.§4K§.§7w§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §1!Q§.§^5§)
               {
                  this.§?P§.unshift([1,§1!Q§.§^5§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§'>§ && _loc3_)
               {
                  if(_loc3_.phase == §1!Q§.§5J§ || _loc3_.phase == §1!Q§.§'y§)
                  {
                     this.§?P§.unshift([1,§1!Q§.§5J§,this.§4K§.§,h§,this.§4K§.§="B§]);
                  }
                  else
                  {
                     this.§?P§.unshift([1,§1!Q§.§>!2§,this.§4K§.§,h§,this.§4K§.§="B§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§<!l§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §2!k§(param1:§5#§) : void
      {
         var _loc4_:§5#§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§5#§ = null;
         var _loc3_:Number = §5>§ * §5>§;
         for each(_loc4_ in this.§3u§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§+F§(_loc2_.§%O§ + 1);
            this.§3u§.splice(this.§3u§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§+F§(1);
         }
         this.§3u§.push(param1.clone());
      }
      
      private function §;!?§(param1:§5#§) : void
      {
         var _loc2_:int = this.§0"+§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§0"+§[_loc2_].id == param1.id)
            {
               this.§0"+§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§0"+§.push(param1);
      }
      
      private function §;!N§(param1:int) : §5#§
      {
         var _loc2_:§5#§ = null;
         for each(_loc2_ in this.§0"+§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §2v§() : Boolean
      {
         return this.§4K§ != null;
      }
      
      public function set §2v§(param1:Boolean) : void
      {
         if(this.§2v§ == param1)
         {
            return;
         }
      }
   }
}
