package starling.events
{
   import §-![§.Stage;
   import flash.geom.Point;
   
   public class §>"7§
   {
      
      private static const §9g§:Number = 0.3;
      
      private static const §?"+§:Number = 25;
      
      private static var §<!2§:Vector.<int> = new Vector.<int>(0);
      
      private static var §2!!§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §;s§:Stage;
      
      private var §9T§:Number;
      
      private var §!!L§:Number;
      
      private var §-c§:§3k§;
      
      private var §4!3§:Vector.<§;C§>;
      
      private var §7h§:Vector.<Array>;
      
      private var §!!U§:Vector.<§;C§>;
      
      private var §!z§:Boolean = false;
      
      private var §@!X§:Boolean = false;
      
      public function §>"7§(param1:Stage)
      {
         super();
         this.§;s§ = param1;
         this.§!!L§ = 0;
         this.§9T§ = 0;
         this.§4!3§ = new Vector.<§;C§>(0);
         this.§7h§ = new Vector.<Array>(0);
         this.§!!U§ = new Vector.<§;C§>(0);
         this.§;s§.addEventListener(KeyboardEvent.KEY_DOWN,this.§1"6§);
         this.§;s§.addEventListener(KeyboardEvent.KEY_UP,this.§1"6§);
      }
      
      public function dispose() : void
      {
         this.§;s§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§1"6§);
         this.§;s§.removeEventListener(KeyboardEvent.KEY_UP,this.§1"6§);
         if(this.§-c§)
         {
            this.§-c§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§;C§ = null;
         var _loc5_:§;C§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§9T§ += param1;
         this.§!!L§ = 0;
         if(this.§!!U§.length > 0)
         {
            _loc2_ = this.§!!U§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§9T§ - this.§!!U§[_loc2_].timestamp > §9g§)
               {
                  this.§!!U§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§7h§.length > 0)
         {
            §<!2§.length = §2!!§.length = 0;
            for each(_loc5_ in this.§4!3§)
            {
               if(_loc5_.phase == §'!+§.§-@§ || _loc5_.phase == §'!+§.§'p§)
               {
                  _loc5_.§@!T§(§'!+§.§5"4§);
               }
            }
            while(this.§7h§.length > 0 && §<!2§.indexOf(this.§7h§[this.§7h§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§7h§.pop())[0] as int;
               if((_loc4_ = this.§1T§(_loc3_)) && _loc4_.phase == §'!+§.HOVER && _loc4_.target)
               {
                  §2!!§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§1!n§.apply(this,_loc7_);
               §<!2§.push(_loc3_);
            }
            for each(_loc6_ in §2!!§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§!",§,this.§4!3§,this.§!z§,this.§@!X§));
               }
            }
            for each(_loc3_ in §<!2§)
            {
               if((_loc4_ = this.§1T§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§!",§,this.§4!3§,this.§!z§,this.§@!X§));
               }
            }
            _loc2_ = this.§4!3§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4!3§[_loc2_].phase == §'!+§.§^N§)
               {
                  this.§4!3§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§!!L§ += 0.00001;
         }
      }
      
      public function §6R§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§7h§.unshift(arguments);
         if(this.§@!X§ && this.§#"%§ && param1 == 0)
         {
            this.§-c§.§^!p§(param3,param4,this.§!z§);
            this.§7h§.unshift([1,param2,this.§-c§.§8!R§,this.§-c§.§7!+§]);
         }
      }
      
      private function §1!n§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;C§;
         if((_loc6_ = this.§1T§(param1)) == null)
         {
            _loc6_ = new §;C§(param1,param3,param4,param2,null);
            this.§=!§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§@!T§(param2);
         _loc6_.§ j§(this.§9T§ + this.§!!L§);
         if(param2 == §'!+§.HOVER || param2 == §'!+§.§-@§)
         {
            _loc6_.§,L§(this.§;s§.hitTest(_loc5_,true));
         }
         if(param2 == §'!+§.§-@§)
         {
            this.§&!T§(_loc6_);
         }
      }
      
      private function §1"6§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;C§ = null;
         var _loc4_:§;C§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§@!X§;
            this.§@!X§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§#"%§ && _loc2_ != this.§@!X§)
            {
               this.§-c§.visible = this.§@!X§;
               this.§-c§.§'-§(this.§;s§.stageWidth / 2,this.§;s§.stageHeight / 2);
               _loc3_ = this.§1T§(0);
               _loc4_ = this.§1T§(1);
               if(_loc3_)
               {
                  this.§-c§.§^!p§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §'!+§.§^N§)
               {
                  this.§7h§.unshift([1,§'!+§.§^N§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§@!X§ && _loc3_)
               {
                  if(_loc3_.phase == §'!+§.§-@§ || _loc3_.phase == §'!+§.§'p§)
                  {
                     this.§7h§.unshift([1,§'!+§.§-@§,this.§-c§.§8!R§,this.§-c§.§7!+§]);
                  }
                  else
                  {
                     this.§7h§.unshift([1,§'!+§.HOVER,this.§-c§.§8!R§,this.§-c§.§7!+§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!z§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §&!T§(param1:§;C§) : void
      {
         var _loc4_:§;C§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§;C§ = null;
         var _loc3_:Number = §?"+§ * §?"+§;
         for each(_loc4_ in this.§!!U§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§<!u§(_loc2_.§`!h§ + 1);
            this.§!!U§.splice(this.§!!U§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§<!u§(1);
         }
         this.§!!U§.push(param1.clone());
      }
      
      private function §=!§(param1:§;C§) : void
      {
         var _loc2_:int = this.§4!3§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§4!3§[_loc2_].id == param1.id)
            {
               this.§4!3§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§4!3§.push(param1);
      }
      
      private function §1T§(param1:int) : §;C§
      {
         var _loc2_:§;C§ = null;
         for each(_loc2_ in this.§4!3§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §#"%§() : Boolean
      {
         return this.§-c§ != null;
      }
      
      public function set §#"%§(param1:Boolean) : void
      {
         if(this.§#"%§ == param1)
         {
            return;
         }
      }
   }
}
