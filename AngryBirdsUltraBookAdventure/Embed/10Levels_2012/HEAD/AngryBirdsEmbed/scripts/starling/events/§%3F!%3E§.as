package starling.events
{
   import §%-§.Stage;
   import flash.geom.Point;
   
   public class §?!>§
   {
      
      private static const §7W§:Number = 0.3;
      
      private static const §>e§:Number = 25;
      
      private static var §+#§:Vector.<int> = new Vector.<int>(0);
      
      private static var §^g§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §<!1§:Stage;
      
      private var §2;§:Number;
      
      private var §"!#§:Number;
      
      private var §>!4§:§-!#§;
      
      private var §;K§:Vector.<§0K§>;
      
      private var §^!'§:Vector.<Array>;
      
      private var §=d§:Vector.<§0K§>;
      
      private var §!U§:Boolean = false;
      
      private var §7-§:Boolean = false;
      
      public function §?!>§(param1:Stage)
      {
         super();
         this.§<!1§ = param1;
         this.§"!#§ = 0;
         this.§2;§ = 0;
         this.§;K§ = new Vector.<§0K§>(0);
         this.§^!'§ = new Vector.<Array>(0);
         this.§=d§ = new Vector.<§0K§>(0);
         this.§<!1§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§<!1§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§<!1§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§<!1§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§>!4§)
         {
            this.§>!4§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§0K§ = null;
         var _loc5_:§0K§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§2;§ += param1;
         this.§"!#§ = 0;
         if(this.§=d§.length > 0)
         {
            _loc2_ = this.§=d§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§2;§ - this.§=d§[_loc2_].timestamp > §7W§)
               {
                  this.§=d§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§^!'§.length > 0)
         {
            §+#§.length = §^g§.length = 0;
            for each(_loc5_ in this.§;K§)
            {
               if(_loc5_.phase == §9`§.§+!8§ || _loc5_.phase == §9`§.§99§)
               {
                  _loc5_.§5!G§(§9`§.§&5§);
               }
            }
            while(this.§^!'§.length > 0 && §+#§.indexOf(this.§^!'§[this.§^!'§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§^!'§.pop())[0] as int;
               if((_loc4_ = this.§;R§(_loc3_)) && _loc4_.phase == §9`§.§,R§ && _loc4_.target)
               {
                  §^g§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§+&§.apply(this,_loc7_);
               §+#§.push(_loc3_);
            }
            for each(_loc6_ in §^g§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§+l§,this.§;K§,this.§!U§,this.§7-§));
               }
            }
            for each(_loc3_ in §+#§)
            {
               if((_loc4_ = this.§;R§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§+l§,this.§;K§,this.§!U§,this.§7-§));
               }
            }
            _loc2_ = this.§;K§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§;K§[_loc2_].phase == §9`§.§"!@§)
               {
                  this.§;K§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§"!#§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§^!'§.unshift(arguments);
         if(this.§7-§ && this.§^e§ && param1 == 0)
         {
            this.§>!4§.§'l§(param3,param4,this.§!U§);
            this.§^!'§.unshift([1,param2,this.§>!4§.§>>§,this.§>!4§.§1!;§]);
         }
      }
      
      private function §+&§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§0K§;
         if((_loc6_ = this.§;R§(param1)) == null)
         {
            _loc6_ = new §0K§(param1,param3,param4,param2,null);
            this.§@6§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§5!G§(param2);
         _loc6_.§%!'§(this.§2;§ + this.§"!#§);
         if(param2 == §9`§.§,R§ || param2 == §9`§.§+!8§)
         {
            _loc6_.§&!-§(this.§<!1§.hitTest(_loc5_,true));
         }
         if(param2 == §9`§.§+!8§)
         {
            this.§6!7§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§0K§ = null;
         var _loc4_:§0K§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§7-§;
            this.§7-§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§^e§ && _loc2_ != this.§7-§)
            {
               this.§>!4§.visible = this.§7-§;
               this.§>!4§.§08§(this.§<!1§.stageWidth / 2,this.§<!1§.stageHeight / 2);
               _loc3_ = this.§;R§(0);
               _loc4_ = this.§;R§(1);
               if(_loc3_)
               {
                  this.§>!4§.§'l§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §9`§.§"!@§)
               {
                  this.§^!'§.unshift([1,§9`§.§"!@§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§7-§ && _loc3_)
               {
                  if(_loc3_.phase == §9`§.§+!8§ || _loc3_.phase == §9`§.§99§)
                  {
                     this.§^!'§.unshift([1,§9`§.§+!8§,this.§>!4§.§>>§,this.§>!4§.§1!;§]);
                  }
                  else
                  {
                     this.§^!'§.unshift([1,§9`§.§,R§,this.§>!4§.§>>§,this.§>!4§.§1!;§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!U§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §6!7§(param1:§0K§) : void
      {
         var _loc4_:§0K§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§0K§ = null;
         var _loc3_:Number = §>e§ * §>e§;
         for each(_loc4_ in this.§=d§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§-_§(_loc2_.§2$§ + 1);
            this.§=d§.splice(this.§=d§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§-_§(1);
         }
         this.§=d§.push(param1.clone());
      }
      
      private function §@6§(param1:§0K§) : void
      {
         var _loc2_:int = this.§;K§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§;K§[_loc2_].id == param1.id)
            {
               this.§;K§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;K§.push(param1);
      }
      
      private function §;R§(param1:int) : §0K§
      {
         var _loc2_:§0K§ = null;
         for each(_loc2_ in this.§;K§)
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
         return this.§>!4§ != null;
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
