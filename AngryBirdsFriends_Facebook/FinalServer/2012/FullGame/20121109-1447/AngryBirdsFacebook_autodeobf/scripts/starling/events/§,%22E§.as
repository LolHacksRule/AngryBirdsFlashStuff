package starling.events
{
   import §1!$§.Stage;
   import flash.geom.Point;
   
   public class §,"E§
   {
      
      private static const §!$§:Number = 0.3;
      
      private static const §`N§:Number = 25;
      
      private static var §5!G§:Vector.<int> = new Vector.<int>(0);
      
      private static var §7!Z§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §^!w§:Stage;
      
      private var §0!_§:Number;
      
      private var §]f§:Number;
      
      private var §`d§:§#!Y§;
      
      private var §`!H§:Vector.<§6!V§>;
      
      private var §4U§:Vector.<Array>;
      
      private var §]"&§:Vector.<§6!V§>;
      
      private var §6W§:Boolean = false;
      
      private var §1"!§:Boolean = false;
      
      public function §,"E§(param1:Stage)
      {
         super();
         this.§^!w§ = param1;
         this.§]f§ = 0;
         this.§0!_§ = 0;
         this.§`!H§ = new Vector.<§6!V§>(0);
         this.§4U§ = new Vector.<Array>(0);
         this.§]"&§ = new Vector.<§6!V§>(0);
         this.§^!w§.addEventListener(KeyboardEvent.KEY_DOWN,this.§!-§);
         this.§^!w§.addEventListener(KeyboardEvent.KEY_UP,this.§!-§);
      }
      
      public function dispose() : void
      {
         this.§^!w§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!-§);
         this.§^!w§.removeEventListener(KeyboardEvent.KEY_UP,this.§!-§);
         if(this.§`d§)
         {
            this.§`d§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§6!V§ = null;
         var _loc5_:§6!V§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§0!_§ += param1;
         this.§]f§ = 0;
         if(this.§]"&§.length > 0)
         {
            _loc2_ = this.§]"&§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§0!_§ - this.§]"&§[_loc2_].timestamp > §!$§)
               {
                  this.§]"&§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§4U§.length > 0)
         {
            §5!G§.length = §7!Z§.length = 0;
            for each(_loc5_ in this.§`!H§)
            {
               if(_loc5_.phase == §"U§.§&a§ || _loc5_.phase == §"U§.§#1§)
               {
                  _loc5_.§>!I§(§"U§.§'!=§);
               }
            }
            while(this.§4U§.length > 0 && §5!G§.indexOf(this.§4U§[this.§4U§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§4U§.pop())[0] as int;
               if((_loc4_ = this.§"!Q§(_loc3_)) && _loc4_.phase == §"U§.§<$§ && _loc4_.target)
               {
                  §7!Z§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§^!N§.apply(this,_loc7_);
               §5!G§.push(_loc3_);
            }
            for each(_loc6_ in §7!Z§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§2t§,this.§`!H§,this.§6W§,this.§1"!§));
               }
            }
            for each(_loc3_ in §5!G§)
            {
               if((_loc4_ = this.§"!Q§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§2t§,this.§`!H§,this.§6W§,this.§1"!§));
               }
            }
            _loc2_ = this.§`!H§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§`!H§[_loc2_].phase == §"U§.§&!I§)
               {
                  this.§`!H§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§]f§ += 0.00001;
         }
      }
      
      public function §#u§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§4U§.unshift(arguments);
         if(this.§1"!§ && this.§5">§ && param1 == 0)
         {
            this.§`d§.§'R§(param3,param4,this.§6W§);
            this.§4U§.unshift([1,param2,this.§`d§.§ ""§,this.§`d§.§5!R§]);
         }
      }
      
      private function §^!N§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§6!V§;
         if((_loc6_ = this.§"!Q§(param1)) == null)
         {
            _loc6_ = new §6!V§(param1,param3,param4,param2,null);
            this.§9!<§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§>!I§(param2);
         _loc6_.§'Z§(this.§0!_§ + this.§]f§);
         if(param2 == §"U§.§<$§ || param2 == §"U§.§&a§)
         {
            _loc6_.§;"#§(this.§^!w§.hitTest(_loc5_,true));
         }
         if(param2 == §"U§.§&a§)
         {
            this.§9%§(_loc6_);
         }
      }
      
      private function §!-§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§6!V§ = null;
         var _loc4_:§6!V§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§1"!§;
            this.§1"!§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§5">§ && _loc2_ != this.§1"!§)
            {
               this.§`d§.visible = this.§1"!§;
               this.§`d§.§[!4§(this.§^!w§.stageWidth / 2,this.§^!w§.stageHeight / 2);
               _loc3_ = this.§"!Q§(0);
               _loc4_ = this.§"!Q§(1);
               if(_loc3_)
               {
                  this.§`d§.§'R§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §"U§.§&!I§)
               {
                  this.§4U§.unshift([1,§"U§.§&!I§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§1"!§ && _loc3_)
               {
                  if(_loc3_.phase == §"U§.§&a§ || _loc3_.phase == §"U§.§#1§)
                  {
                     this.§4U§.unshift([1,§"U§.§&a§,this.§`d§.§ ""§,this.§`d§.§5!R§]);
                  }
                  else
                  {
                     this.§4U§.unshift([1,§"U§.§<$§,this.§`d§.§ ""§,this.§`d§.§5!R§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§6W§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §9%§(param1:§6!V§) : void
      {
         var _loc4_:§6!V§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§6!V§ = null;
         var _loc3_:Number = §`N§ * §`N§;
         for each(_loc4_ in this.§]"&§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§>;§(_loc2_.§!P§ + 1);
            this.§]"&§.splice(this.§]"&§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§>;§(1);
         }
         this.§]"&§.push(param1.clone());
      }
      
      private function §9!<§(param1:§6!V§) : void
      {
         var _loc2_:int = this.§`!H§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§`!H§[_loc2_].id == param1.id)
            {
               this.§`!H§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§`!H§.push(param1);
      }
      
      private function §"!Q§(param1:int) : §6!V§
      {
         var _loc2_:§6!V§ = null;
         for each(_loc2_ in this.§`!H§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §5">§() : Boolean
      {
         return this.§`d§ != null;
      }
      
      public function set §5">§(param1:Boolean) : void
      {
         if(this.§5">§ == param1)
         {
            return;
         }
      }
   }
}
