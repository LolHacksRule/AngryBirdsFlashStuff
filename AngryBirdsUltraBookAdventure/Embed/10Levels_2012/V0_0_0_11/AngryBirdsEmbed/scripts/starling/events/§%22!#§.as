package starling.events
{
   import §?^§.Stage;
   import flash.geom.Point;
   
   public class §"!#§
   {
      
      private static const §>e§:Number = 0.3;
      
      private static const §+#§:Number = 25;
      
      private static var §^g§:Vector.<int> = new Vector.<int>(0);
      
      private static var §#e§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §<!1§:Stage;
      
      private var §1r§:Number;
      
      private var §>!4§:Number;
      
      private var §;K§:§='§;
      
      private var §^!'§:Vector.<§?l§>;
      
      private var §=d§:Vector.<Array>;
      
      private var §!U§:Vector.<§?l§>;
      
      private var §7-§:Boolean = false;
      
      private var §+&§:Boolean = false;
      
      public function §"!#§(param1:Stage)
      {
         super();
         this.§<!1§ = param1;
         this.§>!4§ = 0;
         this.§1r§ = 0;
         this.§^!'§ = new Vector.<§?l§>(0);
         this.§=d§ = new Vector.<Array>(0);
         this.§!U§ = new Vector.<§?l§>(0);
         this.§<!1§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§<!1§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§<!1§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§<!1§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§;K§)
         {
            this.§;K§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§?l§ = null;
         var _loc5_:§?l§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§1r§ += param1;
         this.§>!4§ = 0;
         if(this.§!U§.length > 0)
         {
            _loc2_ = this.§!U§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§1r§ - this.§!U§[_loc2_].timestamp > §>e§)
               {
                  this.§!U§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§=d§.length > 0)
         {
            §^g§.length = §#e§.length = 0;
            for each(_loc5_ in this.§^!'§)
            {
               if(_loc5_.phase == §,R§.§99§ || _loc5_.phase == §,R§.§&5§)
               {
                  _loc5_.§-_§(§,R§.§"!@§);
               }
            }
            while(this.§=d§.length > 0 && §^g§.indexOf(this.§=d§[this.§=d§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§=d§.pop())[0] as int;
               if((_loc4_ = this.§7W§(_loc3_)) && _loc4_.phase == §,R§.§+!8§ && _loc4_.target)
               {
                  §#e§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§6!7§.apply(this,_loc7_);
               §^g§.push(_loc3_);
            }
            for each(_loc6_ in §#e§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§!r§,this.§^!'§,this.§7-§,this.§+&§));
               }
            }
            for each(_loc3_ in §^g§)
            {
               if((_loc4_ = this.§7W§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§!r§,this.§^!'§,this.§7-§,this.§+&§));
               }
            }
            _loc2_ = this.§^!'§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^!'§[_loc2_].phase == §,R§.§?!>§)
               {
                  this.§^!'§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§>!4§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§=d§.unshift(arguments);
         if(this.§+&§ && this.§^e§ && param1 == 0)
         {
            this.§;K§.§08§(param3,param4,this.§7-§);
            this.§=d§.unshift([1,param2,this.§;K§.§1!;§,this.§;K§.§3$§]);
         }
      }
      
      private function §6!7§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§?l§;
         if((_loc6_ = this.§7W§(param1)) == null)
         {
            _loc6_ = new §?l§(param1,param3,param4,param2,null);
            this.§;R§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§-_§(param2);
         _loc6_.§+!>§(this.§1r§ + this.§>!4§);
         if(param2 == §,R§.§+!8§ || param2 == §,R§.§99§)
         {
            _loc6_.§8=§(this.§<!1§.hitTest(_loc5_,true));
         }
         if(param2 == §,R§.§99§)
         {
            this.§@6§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§?l§ = null;
         var _loc4_:§?l§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§+&§;
            this.§+&§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§^e§ && _loc2_ != this.§+&§)
            {
               this.§;K§.visible = this.§+&§;
               this.§;K§.§[n§(this.§<!1§.stageWidth / 2,this.§<!1§.stageHeight / 2);
               _loc3_ = this.§7W§(0);
               _loc4_ = this.§7W§(1);
               if(_loc3_)
               {
                  this.§;K§.§08§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §,R§.§?!>§)
               {
                  this.§=d§.unshift([1,§,R§.§?!>§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§+&§ && _loc3_)
               {
                  if(_loc3_.phase == §,R§.§99§ || _loc3_.phase == §,R§.§&5§)
                  {
                     this.§=d§.unshift([1,§,R§.§99§,this.§;K§.§1!;§,this.§;K§.§3$§]);
                  }
                  else
                  {
                     this.§=d§.unshift([1,§,R§.§+!8§,this.§;K§.§1!;§,this.§;K§.§3$§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§7-§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §@6§(param1:§?l§) : void
      {
         var _loc4_:§?l§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§?l§ = null;
         var _loc3_:Number = §+#§ * §+#§;
         for each(_loc4_ in this.§!U§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§%!'§(_loc2_.§5!G§ + 1);
            this.§!U§.splice(this.§!U§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§%!'§(1);
         }
         this.§!U§.push(param1.clone());
      }
      
      private function §;R§(param1:§?l§) : void
      {
         var _loc2_:int = this.§^!'§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§^!'§[_loc2_].id == param1.id)
            {
               this.§^!'§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^!'§.push(param1);
      }
      
      private function §7W§(param1:int) : §?l§
      {
         var _loc2_:§?l§ = null;
         for each(_loc2_ in this.§^!'§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §^e§() : Boolean
      {
         return this.§;K§ != null;
      }
      
      public function set §^e§(param1:Boolean) : void
      {
         if(this.§^e§ == param1)
         {
            return;
         }
      }
   }
}
