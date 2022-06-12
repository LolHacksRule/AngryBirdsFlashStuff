package starling.events
{
   import §]!2§.Stage;
   import flash.geom.Point;
   
   public class §7M§
   {
      
      private static const §0!]§:Number = 0.3;
      
      private static const §1!%§:Number = 25;
      
      private static var §5"-§:Vector.<int> = new Vector.<int>(0);
      
      private static var §?q§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §,![§:Stage;
      
      private var §@!&§:Number;
      
      private var §#!F§:Number;
      
      private var §[<§:§ $§;
      
      private var §;N§:Vector.<§8§>;
      
      private var §!?§:Vector.<Array>;
      
      private var §&!x§:Vector.<§8§>;
      
      private var §+!d§:Boolean = false;
      
      private var §<!Q§:Boolean = false;
      
      public function §7M§(param1:Stage)
      {
         super();
         this.§,![§ = param1;
         this.§#!F§ = 0;
         this.§@!&§ = 0;
         this.§;N§ = new Vector.<§8§>(0);
         this.§!?§ = new Vector.<Array>(0);
         this.§&!x§ = new Vector.<§8§>(0);
         this.§,![§.addEventListener(KeyboardEvent.KEY_DOWN,this.§switch§);
         this.§,![§.addEventListener(KeyboardEvent.KEY_UP,this.§switch§);
      }
      
      public function dispose() : void
      {
         this.§,![§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§switch§);
         this.§,![§.removeEventListener(KeyboardEvent.KEY_UP,this.§switch§);
         if(this.§[<§)
         {
            this.§[<§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§8§ = null;
         var _loc5_:§8§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§@!&§ += param1;
         this.§#!F§ = 0;
         if(this.§&!x§.length > 0)
         {
            _loc2_ = this.§&!x§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§@!&§ - this.§&!x§[_loc2_].timestamp > §0!]§)
               {
                  this.§&!x§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§!?§.length > 0)
         {
            §5"-§.length = §?q§.length = 0;
            for each(_loc5_ in this.§;N§)
            {
               if(_loc5_.phase == §#"#§.§ "$§ || _loc5_.phase == §#"#§.§?9§)
               {
                  _loc5_.§&%§(§#"#§.§7!2§);
               }
            }
            while(this.§!?§.length > 0 && §5"-§.indexOf(this.§!?§[this.§!?§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§!?§.pop())[0] as int;
               if((_loc4_ = this.§2!a§(_loc3_)) && _loc4_.phase == §#"#§.§-^§ && _loc4_.target)
               {
                  §?q§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§#!Q§.apply(this,_loc7_);
               §5"-§.push(_loc3_);
            }
            for each(_loc6_ in §?q§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§-!k§,this.§;N§,this.§+!d§,this.§<!Q§));
               }
            }
            for each(_loc3_ in §5"-§)
            {
               if((_loc4_ = this.§2!a§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§-!k§,this.§;N§,this.§+!d§,this.§<!Q§));
               }
            }
            _loc2_ = this.§;N§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§;N§[_loc2_].phase == §#"#§.§ '§)
               {
                  this.§;N§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§#!F§ += 0.00001;
         }
      }
      
      public function §8q§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§!?§.unshift(arguments);
         if(this.§<!Q§ && this.§%N§ && param1 == 0)
         {
            this.§[<§.§0!p§(param3,param4,this.§+!d§);
            this.§!?§.unshift([1,param2,this.§[<§.§]!!§,this.§[<§.§1y§]);
         }
      }
      
      private function §#!Q§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§8§;
         if((_loc6_ = this.§2!a§(param1)) == null)
         {
            _loc6_ = new §8§(param1,param3,param4,param2,null);
            this.§=U§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§&%§(param2);
         _loc6_.§-""§(this.§@!&§ + this.§#!F§);
         if(param2 == §#"#§.§-^§ || param2 == §#"#§.§ "$§)
         {
            _loc6_.§[!'§(this.§,![§.hitTest(_loc5_,true));
         }
         if(param2 == §#"#§.§ "$§)
         {
            this.§-!p§(_loc6_);
         }
      }
      
      private function §switch§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§8§ = null;
         var _loc4_:§8§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§<!Q§;
            this.§<!Q§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§%N§ && _loc2_ != this.§<!Q§)
            {
               this.§[<§.visible = this.§<!Q§;
               this.§[<§.§1h§(this.§,![§.stageWidth / 2,this.§,![§.stageHeight / 2);
               _loc3_ = this.§2!a§(0);
               _loc4_ = this.§2!a§(1);
               if(_loc3_)
               {
                  this.§[<§.§0!p§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §#"#§.§ '§)
               {
                  this.§!?§.unshift([1,§#"#§.§ '§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§<!Q§ && _loc3_)
               {
                  if(_loc3_.phase == §#"#§.§ "$§ || _loc3_.phase == §#"#§.§?9§)
                  {
                     this.§!?§.unshift([1,§#"#§.§ "$§,this.§[<§.§]!!§,this.§[<§.§1y§]);
                  }
                  else
                  {
                     this.§!?§.unshift([1,§#"#§.§-^§,this.§[<§.§]!!§,this.§[<§.§1y§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§+!d§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §-!p§(param1:§8§) : void
      {
         var _loc4_:§8§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§8§ = null;
         var _loc3_:Number = §1!%§ * §1!%§;
         for each(_loc4_ in this.§&!x§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§5"1§(_loc2_.§+!]§ + 1);
            this.§&!x§.splice(this.§&!x§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§5"1§(1);
         }
         this.§&!x§.push(param1.clone());
      }
      
      private function §=U§(param1:§8§) : void
      {
         var _loc2_:int = this.§;N§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§;N§[_loc2_].id == param1.id)
            {
               this.§;N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§;N§.push(param1);
      }
      
      private function §2!a§(param1:int) : §8§
      {
         var _loc2_:§8§ = null;
         for each(_loc2_ in this.§;N§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §%N§() : Boolean
      {
         return this.§[<§ != null;
      }
      
      public function set §%N§(param1:Boolean) : void
      {
         if(this.§%N§ == param1)
         {
            return;
         }
      }
   }
}
