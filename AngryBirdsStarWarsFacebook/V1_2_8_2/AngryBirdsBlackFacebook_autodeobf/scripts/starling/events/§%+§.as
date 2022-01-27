package starling.events
{
   import flash.geom.Point;
   import §use§.Stage;
   
   public class §%+§
   {
      
      private static const §8"W§:Number = 0.3;
      
      private static const §<#!§:Number = 25;
      
      private static var §2"_§:Vector.<int> = new Vector.<int>(0);
      
      private static var §`;§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §`6§:Stage;
      
      private var §0K§:Number;
      
      private var §&"p§:Number;
      
      private var §"#,§:§3!R§;
      
      private var §#![§:Vector.<§"!j§>;
      
      private var §%e§:Vector.<Array>;
      
      private var §%"9§:Vector.<§"!j§>;
      
      private var §!s§:Boolean = false;
      
      private var §0"§:Boolean = false;
      
      public function §%+§(param1:Stage)
      {
         super();
         this.§`6§ = param1;
         this.§&"p§ = 0;
         this.§0K§ = 0;
         this.§#![§ = new Vector.<§"!j§>(0);
         this.§%e§ = new Vector.<Array>(0);
         this.§%"9§ = new Vector.<§"!j§>(0);
         this.§`6§.addEventListener(KeyboardEvent.KEY_DOWN,this.§!"s§);
         this.§`6§.addEventListener(KeyboardEvent.KEY_UP,this.§!"s§);
      }
      
      public function dispose() : void
      {
         this.§`6§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!"s§);
         this.§`6§.removeEventListener(KeyboardEvent.KEY_UP,this.§!"s§);
         if(this.§"#,§)
         {
            this.§"#,§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§"!j§ = null;
         var _loc5_:§"!j§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§0K§ += param1;
         this.§&"p§ = 0;
         if(this.§%"9§.length > 0)
         {
            _loc2_ = this.§%"9§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§0K§ - this.§%"9§[_loc2_].timestamp > §8"W§)
               {
                  this.§%"9§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§%e§.length > 0)
         {
            §2"_§.length = §`;§.length = 0;
            for each(_loc5_ in this.§#![§)
            {
               if(_loc5_.phase == §][§.§0"+§ || _loc5_.phase == §][§.§&"<§)
               {
                  _loc5_.§9y§(§][§.§;!n§);
               }
            }
            while(this.§%e§.length > 0 && §2"_§.indexOf(this.§%e§[this.§%e§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§%e§.pop())[0] as int;
               if((_loc4_ = this.§6!P§(_loc3_)) && _loc4_.phase == §][§.§+"@§ && _loc4_.target)
               {
                  §`;§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§'"D§.apply(this,_loc7_);
               §2"_§.push(_loc3_);
            }
            for each(_loc6_ in §`;§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§["i§,this.§#![§,this.§!s§,this.§0"§));
               }
            }
            for each(_loc3_ in §2"_§)
            {
               if((_loc4_ = this.§6!P§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§["i§,this.§#![§,this.§!s§,this.§0"§));
               }
            }
            _loc2_ = this.§#![§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§#![§[_loc2_].phase == §][§.§""%§)
               {
                  this.§#![§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§&"p§ += 0.00001;
         }
      }
      
      public function §]"L§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§%e§.unshift(arguments);
         if(this.§0"§ && this.§^!3§ && param1 == 0)
         {
            this.§"#,§.§-3§(param3,param4,this.§!s§);
            this.§%e§.unshift([1,param2,this.§"#,§.§1"x§,this.§"#,§.§;=§]);
         }
      }
      
      private function §'"D§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§"!j§;
         if((_loc6_ = this.§6!P§(param1)) == null)
         {
            _loc6_ = new §"!j§(param1,param3,param4,param2,null);
            this.§?N§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§9y§(param2);
         _loc6_.§^"O§(this.§0K§ + this.§&"p§);
         if(param2 == §][§.§+"@§ || param2 == §][§.§0"+§)
         {
            _loc6_.§[V§(this.§`6§.hitTest(_loc5_,true));
         }
         if(param2 == §][§.§0"+§)
         {
            this.§6q§(_loc6_);
         }
      }
      
      private function §!"s§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§"!j§ = null;
         var _loc4_:§"!j§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§0"§;
            this.§0"§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§^!3§ && _loc2_ != this.§0"§)
            {
               this.§"#,§.visible = this.§0"§;
               this.§"#,§.§8"L§(this.§`6§.stageWidth / 2,this.§`6§.stageHeight / 2);
               _loc3_ = this.§6!P§(0);
               _loc4_ = this.§6!P§(1);
               if(_loc3_)
               {
                  this.§"#,§.§-3§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §][§.§""%§)
               {
                  this.§%e§.unshift([1,§][§.§""%§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§0"§ && _loc3_)
               {
                  if(_loc3_.phase == §][§.§0"+§ || _loc3_.phase == §][§.§&"<§)
                  {
                     this.§%e§.unshift([1,§][§.§0"+§,this.§"#,§.§1"x§,this.§"#,§.§;=§]);
                  }
                  else
                  {
                     this.§%e§.unshift([1,§][§.§+"@§,this.§"#,§.§1"x§,this.§"#,§.§;=§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!s§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §6q§(param1:§"!j§) : void
      {
         var _loc4_:§"!j§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§"!j§ = null;
         var _loc3_:Number = §<#!§ * §<#!§;
         for each(_loc4_ in this.§%"9§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§[!P§(_loc2_.§4!P§ + 1);
            this.§%"9§.splice(this.§%"9§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§[!P§(1);
         }
         this.§%"9§.push(param1.clone());
      }
      
      private function §?N§(param1:§"!j§) : void
      {
         var _loc2_:int = this.§#![§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§#![§[_loc2_].id == param1.id)
            {
               this.§#![§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§#![§.push(param1);
      }
      
      private function §6!P§(param1:int) : §"!j§
      {
         var _loc2_:§"!j§ = null;
         for each(_loc2_ in this.§#![§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §^!3§() : Boolean
      {
         return this.§"#,§ != null;
      }
      
      public function set §^!3§(param1:Boolean) : void
      {
         if(this.§^!3§ == param1)
         {
            return;
         }
      }
   }
}
