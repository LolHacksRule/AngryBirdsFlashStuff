package starling.events
{
   import §`g§.Stage;
   import flash.geom.Point;
   
   public class §`"§
   {
      
      private static const §!"$§:Number = 0.3;
      
      private static const §"%§:Number = 25;
      
      private static var §'8§:Vector.<int> = new Vector.<int>(0);
      
      private static var §&!6§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §@e§:Stage;
      
      private var §9m§:Number;
      
      private var §-!2§:Number;
      
      private var §>"$§:§;!v§;
      
      private var §&§:Vector.<§;K§>;
      
      private var §6?§:Vector.<Array>;
      
      private var §6=§:Vector.<§;K§>;
      
      private var §1"#§:Boolean = false;
      
      private var §!p§:Boolean = false;
      
      public function §`"§(param1:Stage)
      {
         super();
         this.§@e§ = param1;
         this.§-!2§ = 0;
         this.§9m§ = 0;
         this.§&§ = new Vector.<§;K§>(0);
         this.§6?§ = new Vector.<Array>(0);
         this.§6=§ = new Vector.<§;K§>(0);
         this.§@e§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[>§);
         this.§@e§.addEventListener(KeyboardEvent.KEY_UP,this.§[>§);
      }
      
      public function dispose() : void
      {
         this.§@e§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[>§);
         this.§@e§.removeEventListener(KeyboardEvent.KEY_UP,this.§[>§);
         if(this.§>"$§)
         {
            this.§>"$§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§;K§ = null;
         var _loc5_:§;K§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§9m§ += param1;
         this.§-!2§ = 0;
         if(this.§6=§.length > 0)
         {
            _loc2_ = this.§6=§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§9m§ - this.§6=§[_loc2_].timestamp > §!"$§)
               {
                  this.§6=§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§6?§.length > 0)
         {
            §'8§.length = §&!6§.length = 0;
            for each(_loc5_ in this.§&§)
            {
               if(_loc5_.phase == §<A§.§"![§ || _loc5_.phase == §<A§.§0!;§)
               {
                  _loc5_.§6!=§(§<A§.§2[§);
               }
            }
            while(this.§6?§.length > 0 && §'8§.indexOf(this.§6?§[this.§6?§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§6?§.pop())[0] as int;
               if((_loc4_ = this.§]!B§(_loc3_)) && _loc4_.phase == §<A§.§0!U§ && _loc4_.target)
               {
                  §&!6§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§^f§.apply(this,_loc7_);
               §'8§.push(_loc3_);
            }
            for each(_loc6_ in §&!6§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!L§,this.§&§,this.§1"#§,this.§!p§));
               }
            }
            for each(_loc3_ in §'8§)
            {
               if((_loc4_ = this.§]!B§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!L§,this.§&§,this.§1"#§,this.§!p§));
               }
            }
            _loc2_ = this.§&§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&§[_loc2_].phase == §<A§.§2!R§)
               {
                  this.§&§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§-!2§ += 0.00001;
         }
      }
      
      public function §^!]§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§6?§.unshift(arguments);
         if(this.§!p§ && this.§>B§ && param1 == 0)
         {
            this.§>"$§.§7!v§(param3,param4,this.§1"#§);
            this.§6?§.unshift([1,param2,this.§>"$§.§0!]§,this.§>"$§.§;6§]);
         }
      }
      
      private function §^f§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§;K§;
         if((_loc6_ = this.§]!B§(param1)) == null)
         {
            _loc6_ = new §;K§(param1,param3,param4,param2,null);
            this.§=! §(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§6!=§(param2);
         _loc6_.§5g§(this.§9m§ + this.§-!2§);
         if(param2 == §<A§.§0!U§ || param2 == §<A§.§"![§)
         {
            _loc6_.§<!1§(this.§@e§.hitTest(_loc5_,true));
         }
         if(param2 == §<A§.§"![§)
         {
            this.§>@§(_loc6_);
         }
      }
      
      private function §[>§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;K§ = null;
         var _loc4_:§;K§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§!p§;
            this.§!p§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§>B§ && _loc2_ != this.§!p§)
            {
               this.§>"$§.visible = this.§!p§;
               this.§>"$§.§"!#§(this.§@e§.stageWidth / 2,this.§@e§.stageHeight / 2);
               _loc3_ = this.§]!B§(0);
               _loc4_ = this.§]!B§(1);
               if(_loc3_)
               {
                  this.§>"$§.§7!v§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §<A§.§2!R§)
               {
                  this.§6?§.unshift([1,§<A§.§2!R§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§!p§ && _loc3_)
               {
                  if(_loc3_.phase == §<A§.§"![§ || _loc3_.phase == §<A§.§0!;§)
                  {
                     this.§6?§.unshift([1,§<A§.§"![§,this.§>"$§.§0!]§,this.§>"$§.§;6§]);
                  }
                  else
                  {
                     this.§6?§.unshift([1,§<A§.§0!U§,this.§>"$§.§0!]§,this.§>"$§.§;6§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§1"#§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §>@§(param1:§;K§) : void
      {
         var _loc4_:§;K§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§;K§ = null;
         var _loc3_:Number = §"%§ * §"%§;
         for each(_loc4_ in this.§6=§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§<S§(_loc2_.§9!7§ + 1);
            this.§6=§.splice(this.§6=§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§<S§(1);
         }
         this.§6=§.push(param1.clone());
      }
      
      private function §=! §(param1:§;K§) : void
      {
         var _loc2_:int = this.§&§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§&§[_loc2_].id == param1.id)
            {
               this.§&§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&§.push(param1);
      }
      
      private function §]!B§(param1:int) : §;K§
      {
         var _loc2_:§;K§ = null;
         for each(_loc2_ in this.§&§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §>B§() : Boolean
      {
         return this.§>"$§ != null;
      }
      
      public function set §>B§(param1:Boolean) : void
      {
         if(this.§>B§ == param1)
         {
            return;
         }
      }
   }
}
