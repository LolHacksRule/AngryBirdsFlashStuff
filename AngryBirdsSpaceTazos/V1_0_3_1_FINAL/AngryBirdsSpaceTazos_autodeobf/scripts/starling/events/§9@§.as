package starling.events
{
   import §4"@§.Stage;
   import flash.geom.Point;
   
   public class §9@§
   {
      
      private static const §#$§:Number = 0.3;
      
      private static const §with§:Number = 25;
      
      private static var §6"-§:Vector.<int> = new Vector.<int>(0);
      
      private static var §,%§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §,"<§:Stage;
      
      private var § !8§:Number;
      
      private var §'!?§:Number;
      
      private var §^A§:§%!c§;
      
      private var §!!L§:Vector.<§4"=§>;
      
      private var §^R§:Vector.<Array>;
      
      private var §4`§:Vector.<§4"=§>;
      
      private var §96§:Boolean = false;
      
      private var §4"$§:Boolean = false;
      
      public function §9@§(param1:Stage)
      {
         super();
         this.§,"<§ = param1;
         this.§'!?§ = 0;
         this.§ !8§ = 0;
         this.§!!L§ = new Vector.<§4"=§>(0);
         this.§^R§ = new Vector.<Array>(0);
         this.§4`§ = new Vector.<§4"=§>(0);
         this.§,"<§.addEventListener(KeyboardEvent.KEY_DOWN,this.§`!Q§);
         this.§,"<§.addEventListener(KeyboardEvent.KEY_UP,this.§`!Q§);
      }
      
      public function dispose() : void
      {
         this.§,"<§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§`!Q§);
         this.§,"<§.removeEventListener(KeyboardEvent.KEY_UP,this.§`!Q§);
         if(this.§^A§)
         {
            this.§^A§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§4"=§ = null;
         var _loc5_:§4"=§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§ !8§ += param1;
         this.§'!?§ = 0;
         if(this.§4`§.length > 0)
         {
            _loc2_ = this.§4`§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§ !8§ - this.§4`§[_loc2_].timestamp > §#$§)
               {
                  this.§4`§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§^R§.length > 0)
         {
            §6"-§.length = §,%§.length = 0;
            for each(_loc5_ in this.§!!L§)
            {
               if(_loc5_.phase == §+0§.§6§ || _loc5_.phase == §+0§.§%F§)
               {
                  _loc5_.§^"G§(§+0§.§]!9§);
               }
            }
            while(this.§^R§.length > 0 && §6"-§.indexOf(this.§^R§[this.§^R§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§^R§.pop())[0] as int;
               if((_loc4_ = this.§4'§(_loc3_)) && _loc4_.phase == §+0§.§,!_§ && _loc4_.target)
               {
                  §,%§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§1!V§.apply(this,_loc7_);
               §6"-§.push(_loc3_);
            }
            for each(_loc6_ in §,%§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§3Q§,this.§!!L§,this.§96§,this.§4"$§));
               }
            }
            for each(_loc3_ in §6"-§)
            {
               if((_loc4_ = this.§4'§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§3Q§,this.§!!L§,this.§96§,this.§4"$§));
               }
            }
            _loc2_ = this.§!!L§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§!!L§[_loc2_].phase == §+0§.§-O§)
               {
                  this.§!!L§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§'!?§ += 0.00001;
         }
      }
      
      public function §8"D§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§^R§.unshift(arguments);
         if(this.§4"$§ && this.§6!"§ && param1 == 0)
         {
            this.§^A§.§4?§(param3,param4,this.§96§);
            this.§^R§.unshift([1,param2,this.§^A§.§9F§,this.§^A§.§=q§]);
         }
      }
      
      private function §1!V§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§4"=§;
         if((_loc6_ = this.§4'§(param1)) == null)
         {
            _loc6_ = new §4"=§(param1,param3,param4,param2,null);
            this.§#d§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§^"G§(param2);
         _loc6_.§"z§(this.§ !8§ + this.§'!?§);
         if(param2 == §+0§.§,!_§ || param2 == §+0§.§6§)
         {
            _loc6_.§'!U§(this.§,"<§.hitTest(_loc5_,true));
         }
         if(param2 == §+0§.§6§)
         {
            this.§#=§(_loc6_);
         }
      }
      
      private function §`!Q§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§4"=§ = null;
         var _loc4_:§4"=§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§4"$§;
            this.§4"$§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§6!"§ && _loc2_ != this.§4"$§)
            {
               this.§^A§.visible = this.§4"$§;
               this.§^A§.§%!R§(this.§,"<§.stageWidth / 2,this.§,"<§.stageHeight / 2);
               _loc3_ = this.§4'§(0);
               _loc4_ = this.§4'§(1);
               if(_loc3_)
               {
                  this.§^A§.§4?§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §+0§.§-O§)
               {
                  this.§^R§.unshift([1,§+0§.§-O§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§4"$§ && _loc3_)
               {
                  if(_loc3_.phase == §+0§.§6§ || _loc3_.phase == §+0§.§%F§)
                  {
                     this.§^R§.unshift([1,§+0§.§6§,this.§^A§.§9F§,this.§^A§.§=q§]);
                  }
                  else
                  {
                     this.§^R§.unshift([1,§+0§.§,!_§,this.§^A§.§9F§,this.§^A§.§=q§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§96§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §#=§(param1:§4"=§) : void
      {
         var _loc4_:§4"=§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§4"=§ = null;
         var _loc3_:Number = §with§ * §with§;
         for each(_loc4_ in this.§4`§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§69§(_loc2_.§=!6§ + 1);
            this.§4`§.splice(this.§4`§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§69§(1);
         }
         this.§4`§.push(param1.clone());
      }
      
      private function §#d§(param1:§4"=§) : void
      {
         var _loc2_:int = this.§!!L§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§!!L§[_loc2_].id == param1.id)
            {
               this.§!!L§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§!!L§.push(param1);
      }
      
      private function §4'§(param1:int) : §4"=§
      {
         var _loc2_:§4"=§ = null;
         for each(_loc2_ in this.§!!L§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §6!"§() : Boolean
      {
         return this.§^A§ != null;
      }
      
      public function set §6!"§(param1:Boolean) : void
      {
         if(this.§6!"§ == param1)
         {
            return;
         }
      }
   }
}
