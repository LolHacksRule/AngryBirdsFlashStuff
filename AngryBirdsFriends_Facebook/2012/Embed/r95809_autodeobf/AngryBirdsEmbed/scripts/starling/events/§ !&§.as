package starling.events
{
   import §->§.Stage;
   import flash.geom.Point;
   
   public class § !&§
   {
      
      private static const §80§:Number = 0.3;
      
      private static const §%V§:Number = 25;
      
      private static var §<!2§:Vector.<int> = new Vector.<int>(0);
      
      private static var §2E§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §5R§:Stage;
      
      private var §5!3§:Number;
      
      private var §[z§:Number;
      
      private var §0!!§:§6V§;
      
      private var §+7§:Vector.<§ K§>;
      
      private var §;V§:Vector.<Array>;
      
      private var §5r§:Vector.<§ K§>;
      
      private var §8N§:Boolean = false;
      
      private var §3"§:Boolean = false;
      
      public function § !&§(param1:Stage)
      {
         super();
         this.§5R§ = param1;
         this.§[z§ = 0;
         this.§5!3§ = 0;
         this.§+7§ = new Vector.<§ K§>(0);
         this.§;V§ = new Vector.<Array>(0);
         this.§5r§ = new Vector.<§ K§>(0);
         this.§5R§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§5R§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§5R§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§5R§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§0!!§)
         {
            this.§0!!§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§ K§ = null;
         var _loc5_:§ K§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§5!3§ += param1;
         this.§[z§ = 0;
         if(this.§5r§.length > 0)
         {
            _loc2_ = this.§5r§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§5!3§ - this.§5r§[_loc2_].timestamp > §80§)
               {
                  this.§5r§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§;V§.length > 0)
         {
            §<!2§.length = §2E§.length = 0;
            for each(_loc5_ in this.§+7§)
            {
               if(_loc5_.phase == §!E§.§7`§ || _loc5_.phase == §!E§.§6k§)
               {
                  _loc5_.§0!,§(§!E§.§9n§);
               }
            }
            while(this.§;V§.length > 0 && §<!2§.indexOf(this.§;V§[this.§;V§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§;V§.pop())[0] as int;
               if((_loc4_ = this.§^!E§(_loc3_)) && _loc4_.phase == §!E§.§3!D§ && _loc4_.target)
               {
                  §2E§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§7Y§.apply(this,_loc7_);
               §<!2§.push(_loc3_);
            }
            for each(_loc6_ in §2E§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§`Z§,this.§+7§,this.§8N§,this.§3"§));
               }
            }
            for each(_loc3_ in §<!2§)
            {
               if((_loc4_ = this.§^!E§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§`Z§,this.§+7§,this.§8N§,this.§3"§));
               }
            }
            _loc2_ = this.§+7§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§+7§[_loc2_].phase == §!E§.§2`§)
               {
                  this.§+7§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§[z§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§;V§.unshift(arguments);
         if(this.§3"§ && this.§-!'§ && param1 == 0)
         {
            this.§0!!§.§`!8§(param3,param4,this.§8N§);
            this.§;V§.unshift([1,param2,this.§0!!§.§7!7§,this.§0!!§.§`!'§]);
         }
      }
      
      private function §7Y§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§ K§;
         if((_loc6_ = this.§^!E§(param1)) == null)
         {
            _loc6_ = new § K§(param1,param3,param4,param2,null);
            this.§[!0§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§0!,§(param2);
         _loc6_.§0R§(this.§5!3§ + this.§[z§);
         if(param2 == §!E§.§3!D§ || param2 == §!E§.§7`§)
         {
            _loc6_.§#7§(this.§5R§.hitTest(_loc5_,true));
         }
         if(param2 == §!E§.§7`§)
         {
            this.§@B§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§ K§ = null;
         var _loc4_:§ K§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§3"§;
            this.§3"§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§-!'§ && _loc2_ != this.§3"§)
            {
               this.§0!!§.visible = this.§3"§;
               this.§0!!§.§,>§(this.§5R§.stageWidth / 2,this.§5R§.stageHeight / 2);
               _loc3_ = this.§^!E§(0);
               _loc4_ = this.§^!E§(1);
               if(_loc3_)
               {
                  this.§0!!§.§`!8§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §!E§.§2`§)
               {
                  this.§;V§.unshift([1,§!E§.§2`§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§3"§ && _loc3_)
               {
                  if(_loc3_.phase == §!E§.§7`§ || _loc3_.phase == §!E§.§6k§)
                  {
                     this.§;V§.unshift([1,§!E§.§7`§,this.§0!!§.§7!7§,this.§0!!§.§`!'§]);
                  }
                  else
                  {
                     this.§;V§.unshift([1,§!E§.§3!D§,this.§0!!§.§7!7§,this.§0!!§.§`!'§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§8N§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §@B§(param1:§ K§) : void
      {
         var _loc4_:§ K§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§ K§ = null;
         var _loc3_:Number = §%V§ * §%V§;
         for each(_loc4_ in this.§5r§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§69§(_loc2_.§0!§ + 1);
            this.§5r§.splice(this.§5r§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§69§(1);
         }
         this.§5r§.push(param1.clone());
      }
      
      private function §[!0§(param1:§ K§) : void
      {
         var _loc2_:int = this.§+7§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§+7§[_loc2_].id == param1.id)
            {
               this.§+7§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§+7§.push(param1);
      }
      
      private function §^!E§(param1:int) : § K§
      {
         var _loc2_:§ K§ = null;
         for each(_loc2_ in this.§+7§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §-!'§() : Boolean
      {
         return this.§0!!§ != null;
      }
      
      public function set §-!'§(param1:Boolean) : void
      {
         if(this.§-!'§ == param1)
         {
            return;
         }
      }
   }
}
