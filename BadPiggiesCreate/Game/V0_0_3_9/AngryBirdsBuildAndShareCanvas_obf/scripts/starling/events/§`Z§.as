package starling.events
{
   import §7q§.Stage;
   import flash.geom.Point;
   
   public class §`Z§
   {
      
      private static const §6!E§:Number = 0.3;
      
      private static const §9t§:Number = 25;
      
      private static var §#8§:Vector.<int> = new Vector.<int>(0);
      
      private static var §>!1§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §5e§:Stage;
      
      private var §@"0§:Number;
      
      private var §3!]§:Number;
      
      private var §5k§:§%>§;
      
      private var §`T§:Vector.<§,"0§>;
      
      private var §@!$§:Vector.<Array>;
      
      private var §0!!§:Vector.<§,"0§>;
      
      private var §1y§:Boolean = false;
      
      private var §catch§:Boolean = false;
      
      public function §`Z§(param1:Stage)
      {
         super();
         this.§5e§ = param1;
         this.§3!]§ = 0;
         this.§@"0§ = 0;
         this.§`T§ = new Vector.<§,"0§>(0);
         this.§@!$§ = new Vector.<Array>(0);
         this.§0!!§ = new Vector.<§,"0§>(0);
         this.§5e§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8"1§);
         this.§5e§.addEventListener(KeyboardEvent.KEY_UP,this.§8"1§);
      }
      
      public function dispose() : void
      {
         this.§5e§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8"1§);
         this.§5e§.removeEventListener(KeyboardEvent.KEY_UP,this.§8"1§);
         if(this.§5k§)
         {
            this.§5k§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§,"0§ = null;
         var _loc5_:§,"0§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§@"0§ += param1;
         this.§3!]§ = 0;
         if(this.§0!!§.length > 0)
         {
            _loc2_ = this.§0!!§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§@"0§ - this.§0!!§[_loc2_].timestamp > §6!E§)
               {
                  this.§0!!§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§@!$§.length > 0)
         {
            §#8§.length = §>!1§.length = 0;
            for each(_loc5_ in this.§`T§)
            {
               if(_loc5_.phase == §[!k§.§9!8§ || _loc5_.phase == §[!k§.§@$§)
               {
                  _loc5_.§<"2§(§[!k§.§8m§);
               }
            }
            while(this.§@!$§.length > 0 && §#8§.indexOf(this.§@!$§[this.§@!$§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§@!$§.pop())[0] as int;
               if((_loc4_ = this.§'!s§(_loc3_)) && _loc4_.phase == §[!k§.§9b§ && _loc4_.target)
               {
                  §>!1§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§&w§.apply(this,_loc7_);
               §#8§.push(_loc3_);
            }
            for each(_loc6_ in §>!1§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§!"8§,this.§`T§,this.§1y§,this.§catch§));
               }
            }
            for each(_loc3_ in §#8§)
            {
               if((_loc4_ = this.§'!s§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§!"8§,this.§`T§,this.§1y§,this.§catch§));
               }
            }
            _loc2_ = this.§`T§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§`T§[_loc2_].phase == §[!k§.§>O§)
               {
                  this.§`T§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§3!]§ += 0.00001;
         }
      }
      
      public function §"p§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§@!$§.unshift(arguments);
         if(this.§catch§ && this.§&!W§ && param1 == 0)
         {
            this.§5k§.§2D§(param3,param4,this.§1y§);
            this.§@!$§.unshift([1,param2,this.§5k§.§-Q§,this.§5k§.§`!r§]);
         }
      }
      
      private function §&w§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§,"0§;
         if((_loc6_ = this.§'!s§(param1)) == null)
         {
            _loc6_ = new §,"0§(param1,param3,param4,param2,null);
            this.§6!=§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§<"2§(param2);
         _loc6_.§6!?§(this.§@"0§ + this.§3!]§);
         if(param2 == §[!k§.§9b§ || param2 == §[!k§.§9!8§)
         {
            _loc6_.§-!u§(this.§5e§.hitTest(_loc5_,true));
         }
         if(param2 == §[!k§.§9!8§)
         {
            this.§-s§(_loc6_);
         }
      }
      
      private function §8"1§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§,"0§ = null;
         var _loc4_:§,"0§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§catch§;
            this.§catch§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§&!W§ && _loc2_ != this.§catch§)
            {
               this.§5k§.visible = this.§catch§;
               this.§5k§.§]!§(this.§5e§.stageWidth / 2,this.§5e§.stageHeight / 2);
               _loc3_ = this.§'!s§(0);
               _loc4_ = this.§'!s§(1);
               if(_loc3_)
               {
                  this.§5k§.§2D§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §[!k§.§>O§)
               {
                  this.§@!$§.unshift([1,§[!k§.§>O§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§catch§ && _loc3_)
               {
                  if(_loc3_.phase == §[!k§.§9!8§ || _loc3_.phase == §[!k§.§@$§)
                  {
                     this.§@!$§.unshift([1,§[!k§.§9!8§,this.§5k§.§-Q§,this.§5k§.§`!r§]);
                  }
                  else
                  {
                     this.§@!$§.unshift([1,§[!k§.§9b§,this.§5k§.§-Q§,this.§5k§.§`!r§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§1y§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §-s§(param1:§,"0§) : void
      {
         var _loc4_:§,"0§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§,"0§ = null;
         var _loc3_:Number = §9t§ * §9t§;
         for each(_loc4_ in this.§0!!§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§+!§(_loc2_.§;N§ + 1);
            this.§0!!§.splice(this.§0!!§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§+!§(1);
         }
         this.§0!!§.push(param1.clone());
      }
      
      private function §6!=§(param1:§,"0§) : void
      {
         var _loc2_:int = this.§`T§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§`T§[_loc2_].id == param1.id)
            {
               this.§`T§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§`T§.push(param1);
      }
      
      private function §'!s§(param1:int) : §,"0§
      {
         var _loc2_:§,"0§ = null;
         for each(_loc2_ in this.§`T§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §&!W§() : Boolean
      {
         return this.§5k§ != null;
      }
      
      public function set §&!W§(param1:Boolean) : void
      {
         if(this.§&!W§ == param1)
         {
            return;
         }
      }
   }
}
