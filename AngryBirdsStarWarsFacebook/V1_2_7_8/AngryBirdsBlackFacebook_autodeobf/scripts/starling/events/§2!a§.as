package starling.events
{
   import §1"s§.Stage;
   import flash.geom.Point;
   
   public class §2!a§
   {
      
      private static const §1##§:Number = 0.3;
      
      private static const §=a§:Number = 25;
      
      private static var §%s§:Vector.<int> = new Vector.<int>(0);
      
      private static var §&#4§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §#o§:Stage;
      
      private var §?"§:Number;
      
      private var §]!m§:Number;
      
      private var §16§:§[!W§;
      
      private var §'G§:Vector.<§#"X§>;
      
      private var §%J§:Vector.<Array>;
      
      private var §,v§:Vector.<§#"X§>;
      
      private var §=#6§:Boolean = false;
      
      private var §]!]§:Boolean = false;
      
      public function §2!a§(param1:Stage)
      {
         super();
         this.§#o§ = param1;
         this.§]!m§ = 0;
         this.§?"§ = 0;
         this.§'G§ = new Vector.<§#"X§>(0);
         this.§%J§ = new Vector.<Array>(0);
         this.§,v§ = new Vector.<§#"X§>(0);
         this.§#o§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8D§);
         this.§#o§.addEventListener(KeyboardEvent.KEY_UP,this.§8D§);
      }
      
      public function dispose() : void
      {
         this.§#o§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8D§);
         this.§#o§.removeEventListener(KeyboardEvent.KEY_UP,this.§8D§);
         if(this.§16§)
         {
            this.§16§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§#"X§ = null;
         var _loc5_:§#"X§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§?"§ += param1;
         this.§]!m§ = 0;
         if(this.§,v§.length > 0)
         {
            _loc2_ = this.§,v§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§?"§ - this.§,v§[_loc2_].timestamp > §1##§)
               {
                  this.§,v§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§%J§.length > 0)
         {
            §%s§.length = §&#4§.length = 0;
            for each(_loc5_ in this.§'G§)
            {
               if(_loc5_.phase == §;!9§.§0"1§ || _loc5_.phase == §;!9§.§%!C§)
               {
                  _loc5_.§6"z§(§;!9§.§<"+§);
               }
            }
            while(this.§%J§.length > 0 && §%s§.indexOf(this.§%J§[this.§%J§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§%J§.pop())[0] as int;
               if((_loc4_ = this.§#5§(_loc3_)) && _loc4_.phase == §;!9§.§9A§ && _loc4_.target)
               {
                  §&#4§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§3! §.apply(this,_loc7_);
               §%s§.push(_loc3_);
            }
            for each(_loc6_ in §&#4§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§]N§,this.§'G§,this.§=#6§,this.§]!]§));
               }
            }
            for each(_loc3_ in §%s§)
            {
               if((_loc4_ = this.§#5§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§]N§,this.§'G§,this.§=#6§,this.§]!]§));
               }
            }
            _loc2_ = this.§'G§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§'G§[_loc2_].phase == §;!9§.§,"F§)
               {
                  this.§'G§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§]!m§ += 0.00001;
         }
      }
      
      public function §'%§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§%J§.unshift(arguments);
         if(this.§]!]§ && this.§0!X§ && param1 == 0)
         {
            this.§16§.§`C§(param3,param4,this.§=#6§);
            this.§%J§.unshift([1,param2,this.§16§.§`H§,this.§16§.§ Y§]);
         }
      }
      
      private function §3! §(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§#"X§;
         if((_loc6_ = this.§#5§(param1)) == null)
         {
            _loc6_ = new §#"X§(param1,param3,param4,param2,null);
            this.§+!_§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§6"z§(param2);
         _loc6_.§%!b§(this.§?"§ + this.§]!m§);
         if(param2 == §;!9§.§9A§ || param2 == §;!9§.§0"1§)
         {
            _loc6_.§"!#§(this.§#o§.hitTest(_loc5_,true));
         }
         if(param2 == §;!9§.§0"1§)
         {
            this.§;#&§(_loc6_);
         }
      }
      
      private function §8D§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§#"X§ = null;
         var _loc4_:§#"X§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§]!]§;
            this.§]!]§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§0!X§ && _loc2_ != this.§]!]§)
            {
               this.§16§.visible = this.§]!]§;
               this.§16§.§["n§(this.§#o§.stageWidth / 2,this.§#o§.stageHeight / 2);
               _loc3_ = this.§#5§(0);
               _loc4_ = this.§#5§(1);
               if(_loc3_)
               {
                  this.§16§.§`C§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §;!9§.§,"F§)
               {
                  this.§%J§.unshift([1,§;!9§.§,"F§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§]!]§ && _loc3_)
               {
                  if(_loc3_.phase == §;!9§.§0"1§ || _loc3_.phase == §;!9§.§%!C§)
                  {
                     this.§%J§.unshift([1,§;!9§.§0"1§,this.§16§.§`H§,this.§16§.§ Y§]);
                  }
                  else
                  {
                     this.§%J§.unshift([1,§;!9§.§9A§,this.§16§.§`H§,this.§16§.§ Y§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§=#6§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §;#&§(param1:§#"X§) : void
      {
         var _loc4_:§#"X§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§#"X§ = null;
         var _loc3_:Number = §=a§ * §=a§;
         for each(_loc4_ in this.§,v§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§?"d§(_loc2_.§7!s§ + 1);
            this.§,v§.splice(this.§,v§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§?"d§(1);
         }
         this.§,v§.push(param1.clone());
      }
      
      private function §+!_§(param1:§#"X§) : void
      {
         var _loc2_:int = this.§'G§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§'G§[_loc2_].id == param1.id)
            {
               this.§'G§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§'G§.push(param1);
      }
      
      private function §#5§(param1:int) : §#"X§
      {
         var _loc2_:§#"X§ = null;
         for each(_loc2_ in this.§'G§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §0!X§() : Boolean
      {
         return this.§16§ != null;
      }
      
      public function set §0!X§(param1:Boolean) : void
      {
         if(this.§0!X§ == param1)
         {
            return;
         }
      }
   }
}
