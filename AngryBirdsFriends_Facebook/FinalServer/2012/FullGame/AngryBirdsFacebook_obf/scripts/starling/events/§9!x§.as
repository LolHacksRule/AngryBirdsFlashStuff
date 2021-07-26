package starling.events
{
   import §]!v§.Stage;
   import flash.geom.Point;
   
   public class §9!x§
   {
      
      private static const §&"C§:Number = 0.3;
      
      private static const §1h§:Number = 25;
      
      private static var §9"6§:Vector.<int> = new Vector.<int>(0);
      
      private static var §@!W§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §0![§:Stage;
      
      private var §<?§:Number;
      
      private var §82§:Number;
      
      private var §6"&§:§`7§;
      
      private var §"!W§:Vector.<§9!@§>;
      
      private var §7"H§:Vector.<Array>;
      
      private var §%!t§:Vector.<§9!@§>;
      
      private var §6!,§:Boolean = false;
      
      private var §'!,§:Boolean = false;
      
      public function §9!x§(param1:Stage)
      {
         super();
         this.§0![§ = param1;
         this.§82§ = 0;
         this.§<?§ = 0;
         this.§"!W§ = new Vector.<§9!@§>(0);
         this.§7"H§ = new Vector.<Array>(0);
         this.§%!t§ = new Vector.<§9!@§>(0);
         this.§0![§.addEventListener(KeyboardEvent.KEY_DOWN,this.§<y§);
         this.§0![§.addEventListener(KeyboardEvent.KEY_UP,this.§<y§);
      }
      
      public function dispose() : void
      {
         this.§0![§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§<y§);
         this.§0![§.removeEventListener(KeyboardEvent.KEY_UP,this.§<y§);
         if(this.§6"&§)
         {
            this.§6"&§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§9!@§ = null;
         var _loc5_:§9!@§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§<?§ += param1;
         this.§82§ = 0;
         if(this.§%!t§.length > 0)
         {
            _loc2_ = this.§%!t§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§<?§ - this.§%!t§[_loc2_].timestamp > §&"C§)
               {
                  this.§%!t§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§7"H§.length > 0)
         {
            §9"6§.length = §@!W§.length = 0;
            for each(_loc5_ in this.§"!W§)
            {
               if(_loc5_.phase == §1&§.§3!§ || _loc5_.phase == §1&§.§+!b§)
               {
                  _loc5_.§2"-§(§1&§.§1_§);
               }
            }
            while(this.§7"H§.length > 0 && §9"6§.indexOf(this.§7"H§[this.§7"H§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§7"H§.pop())[0] as int;
               if((_loc4_ = this.§&!§(_loc3_)) && _loc4_.phase == §1&§.§#"8§ && _loc4_.target)
               {
                  §@!W§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§break§.apply(this,_loc7_);
               §9"6§.push(_loc3_);
            }
            for each(_loc6_ in §@!W§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§+!X§,this.§"!W§,this.§6!,§,this.§'!,§));
               }
            }
            for each(_loc3_ in §9"6§)
            {
               if((_loc4_ = this.§&!§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§+!X§,this.§"!W§,this.§6!,§,this.§'!,§));
               }
            }
            _loc2_ = this.§"!W§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§"!W§[_loc2_].phase == §1&§.§#m§)
               {
                  this.§"!W§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§82§ += 0.00001;
         }
      }
      
      public function §6"!§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§7"H§.unshift(arguments);
         if(this.§'!,§ && this.§2,§ && param1 == 0)
         {
            this.§6"&§.§+#§(param3,param4,this.§6!,§);
            this.§7"H§.unshift([1,param2,this.§6"&§.§["5§,this.§6"&§.§0r§]);
         }
      }
      
      private function §break§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§9!@§;
         if((_loc6_ = this.§&!§(param1)) == null)
         {
            _loc6_ = new §9!@§(param1,param3,param4,param2,null);
            this.§8"3§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§2"-§(param2);
         _loc6_.§05§(this.§<?§ + this.§82§);
         if(param2 == §1&§.§#"8§ || param2 == §1&§.§3!§)
         {
            _loc6_.§<r§(this.§0![§.hitTest(_loc5_,true));
         }
         if(param2 == §1&§.§3!§)
         {
            this.§!§(_loc6_);
         }
      }
      
      private function §<y§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§9!@§ = null;
         var _loc4_:§9!@§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§'!,§;
            this.§'!,§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§2,§ && _loc2_ != this.§'!,§)
            {
               this.§6"&§.visible = this.§'!,§;
               this.§6"&§.§7r§(this.§0![§.stageWidth / 2,this.§0![§.stageHeight / 2);
               _loc3_ = this.§&!§(0);
               _loc4_ = this.§&!§(1);
               if(_loc3_)
               {
                  this.§6"&§.§+#§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §1&§.§#m§)
               {
                  this.§7"H§.unshift([1,§1&§.§#m§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§'!,§ && _loc3_)
               {
                  if(_loc3_.phase == §1&§.§3!§ || _loc3_.phase == §1&§.§+!b§)
                  {
                     this.§7"H§.unshift([1,§1&§.§3!§,this.§6"&§.§["5§,this.§6"&§.§0r§]);
                  }
                  else
                  {
                     this.§7"H§.unshift([1,§1&§.§#"8§,this.§6"&§.§["5§,this.§6"&§.§0r§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§6!,§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §!§(param1:§9!@§) : void
      {
         var _loc4_:§9!@§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§9!@§ = null;
         var _loc3_:Number = §1h§ * §1h§;
         for each(_loc4_ in this.§%!t§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§4K§(_loc2_.§3!O§ + 1);
            this.§%!t§.splice(this.§%!t§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§4K§(1);
         }
         this.§%!t§.push(param1.clone());
      }
      
      private function §8"3§(param1:§9!@§) : void
      {
         var _loc2_:int = this.§"!W§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§"!W§[_loc2_].id == param1.id)
            {
               this.§"!W§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§"!W§.push(param1);
      }
      
      private function §&!§(param1:int) : §9!@§
      {
         var _loc2_:§9!@§ = null;
         for each(_loc2_ in this.§"!W§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §2,§() : Boolean
      {
         return this.§6"&§ != null;
      }
      
      public function set §2,§(param1:Boolean) : void
      {
         if(this.§2,§ == param1)
         {
            return;
         }
      }
   }
}
