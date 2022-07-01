package starling.events
{
   import §1!Y§.Stage;
   import flash.geom.Point;
   
   public class §3c§
   {
      
      private static const §'B§:Number = 0.3;
      
      private static const §7!0§:Number = 25;
      
      private static var §3!M§:Vector.<int> = new Vector.<int>(0);
      
      private static var §1"8§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §&§:Stage;
      
      private var §?!o§:Number;
      
      private var §=l§:Number;
      
      private var §0,§:§?Z§;
      
      private var §`=§:Vector.<§?!!§>;
      
      private var §;c§:Vector.<Array>;
      
      private var §0!0§:Vector.<§?!!§>;
      
      private var §@^§:Boolean = false;
      
      private var §=!k§:Boolean = false;
      
      public function §3c§(param1:Stage)
      {
         super();
         this.§&§ = param1;
         this.§=l§ = 0;
         this.§?!o§ = 0;
         this.§`=§ = new Vector.<§?!!§>(0);
         this.§;c§ = new Vector.<Array>(0);
         this.§0!0§ = new Vector.<§?!!§>(0);
         this.§&§.addEventListener(KeyboardEvent.KEY_DOWN,this.§?R§);
         this.§&§.addEventListener(KeyboardEvent.KEY_UP,this.§?R§);
      }
      
      public function dispose() : void
      {
         this.§&§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§?R§);
         this.§&§.removeEventListener(KeyboardEvent.KEY_UP,this.§?R§);
         if(this.§0,§)
         {
            this.§0,§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§?!!§ = null;
         var _loc5_:§?!!§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§?!o§ += param1;
         this.§=l§ = 0;
         if(this.§0!0§.length > 0)
         {
            _loc2_ = this.§0!0§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§?!o§ - this.§0!0§[_loc2_].timestamp > §'B§)
               {
                  this.§0!0§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§;c§.length > 0)
         {
            §3!M§.length = §1"8§.length = 0;
            for each(_loc5_ in this.§`=§)
            {
               if(_loc5_.phase == §<!O§.§<z§ || _loc5_.phase == §<!O§.§!+§)
               {
                  _loc5_.§&B§(§<!O§.§'"§);
               }
            }
            while(this.§;c§.length > 0 && §3!M§.indexOf(this.§;c§[this.§;c§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§;c§.pop())[0] as int;
               if((_loc4_ = this.§0!Y§(_loc3_)) && _loc4_.phase == §<!O§.§9",§ && _loc4_.target)
               {
                  §1"8§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§5c§.apply(this,_loc7_);
               §3!M§.push(_loc3_);
            }
            for each(_loc6_ in §1"8§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§5V§,this.§`=§,this.§@^§,this.§=!k§));
               }
            }
            for each(_loc3_ in §3!M§)
            {
               if((_loc4_ = this.§0!Y§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§5V§,this.§`=§,this.§@^§,this.§=!k§));
               }
            }
            _loc2_ = this.§`=§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§`=§[_loc2_].phase == §<!O§.§&!h§)
               {
                  this.§`=§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§=l§ += 0.00001;
         }
      }
      
      public function §+"#§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§;c§.unshift(arguments);
         if(this.§=!k§ && this.§`!q§ && param1 == 0)
         {
            this.§0,§.§1d§(param3,param4,this.§@^§);
            this.§;c§.unshift([1,param2,this.§0,§.§6f§,this.§0,§.§61§]);
         }
      }
      
      private function §5c§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§?!!§;
         if((_loc6_ = this.§0!Y§(param1)) == null)
         {
            _loc6_ = new §?!!§(param1,param3,param4,param2,null);
            this.§3"#§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§&B§(param2);
         _loc6_.§=?§(this.§?!o§ + this.§=l§);
         if(param2 == §<!O§.§9",§ || param2 == §<!O§.§<z§)
         {
            _loc6_.§;!_§(this.§&§.hitTest(_loc5_,true));
         }
         if(param2 == §<!O§.§<z§)
         {
            this.§ t§(_loc6_);
         }
      }
      
      private function §?R§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§?!!§ = null;
         var _loc4_:§?!!§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§=!k§;
            this.§=!k§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§`!q§ && _loc2_ != this.§=!k§)
            {
               this.§0,§.visible = this.§=!k§;
               this.§0,§.§8r§(this.§&§.stageWidth / 2,this.§&§.stageHeight / 2);
               _loc3_ = this.§0!Y§(0);
               _loc4_ = this.§0!Y§(1);
               if(_loc3_)
               {
                  this.§0,§.§1d§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §<!O§.§&!h§)
               {
                  this.§;c§.unshift([1,§<!O§.§&!h§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§=!k§ && _loc3_)
               {
                  if(_loc3_.phase == §<!O§.§<z§ || _loc3_.phase == §<!O§.§!+§)
                  {
                     this.§;c§.unshift([1,§<!O§.§<z§,this.§0,§.§6f§,this.§0,§.§61§]);
                  }
                  else
                  {
                     this.§;c§.unshift([1,§<!O§.§9",§,this.§0,§.§6f§,this.§0,§.§61§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§@^§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function § t§(param1:§?!!§) : void
      {
         var _loc4_:§?!!§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§?!!§ = null;
         var _loc3_:Number = §7!0§ * §7!0§;
         for each(_loc4_ in this.§0!0§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§6q§(_loc2_.§'!F§ + 1);
            this.§0!0§.splice(this.§0!0§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§6q§(1);
         }
         this.§0!0§.push(param1.clone());
      }
      
      private function §3"#§(param1:§?!!§) : void
      {
         var _loc2_:int = this.§`=§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§`=§[_loc2_].id == param1.id)
            {
               this.§`=§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§`=§.push(param1);
      }
      
      private function §0!Y§(param1:int) : §?!!§
      {
         var _loc2_:§?!!§ = null;
         for each(_loc2_ in this.§`=§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §`!q§() : Boolean
      {
         return this.§0,§ != null;
      }
      
      public function set §`!q§(param1:Boolean) : void
      {
         if(this.§`!q§ == param1)
         {
            return;
         }
      }
   }
}
