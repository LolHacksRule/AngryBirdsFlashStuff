package starling.events
{
   import §,H§.Stage;
   import flash.geom.Point;
   
   public class §8u§
   {
      
      private static const §@+§:Number = 0.3;
      
      private static const §2Z§:Number = 25;
      
      private static var §38§:Vector.<int> = new Vector.<int>(0);
      
      private static var §finally§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §[!<§:Stage;
      
      private var §6-§:Number;
      
      private var §@o§:Number;
      
      private var §1!a§:§?!N§;
      
      private var §1!M§:Vector.<§4]§>;
      
      private var §&!0§:Vector.<Array>;
      
      private var §"b§:Vector.<§4]§>;
      
      private var §[!@§:Boolean = false;
      
      private var §-!-§:Boolean = false;
      
      public function §8u§(param1:Stage)
      {
         super();
         this.§[!<§ = param1;
         this.§@o§ = 0;
         this.§6-§ = 0;
         this.§1!M§ = new Vector.<§4]§>(0);
         this.§&!0§ = new Vector.<Array>(0);
         this.§"b§ = new Vector.<§4]§>(0);
         this.§[!<§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[§);
         this.§[!<§.addEventListener(KeyboardEvent.KEY_UP,this.§[§);
      }
      
      public function dispose() : void
      {
         this.§[!<§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[§);
         this.§[!<§.removeEventListener(KeyboardEvent.KEY_UP,this.§[§);
         if(this.§1!a§)
         {
            this.§1!a§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§4]§ = null;
         var _loc5_:§4]§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§6-§ += param1;
         this.§@o§ = 0;
         if(this.§"b§.length > 0)
         {
            _loc2_ = this.§"b§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§6-§ - this.§"b§[_loc2_].timestamp > §@+§)
               {
                  this.§"b§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§&!0§.length > 0)
         {
            §38§.length = §finally§.length = 0;
            for each(_loc5_ in this.§1!M§)
            {
               if(_loc5_.phase == §0!?§.§?Y§ || _loc5_.phase == §0!?§.§-!K§)
               {
                  _loc5_.§9F§(§0!?§.§-G§);
               }
            }
            while(this.§&!0§.length > 0 && §38§.indexOf(this.§&!0§[this.§&!0§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§&!0§.pop())[0] as int;
               if((_loc4_ = this.§9G§(_loc3_)) && _loc4_.phase == §0!?§.§5!_§ && _loc4_.target)
               {
                  §finally§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§!E§.apply(this,_loc7_);
               §38§.push(_loc3_);
            }
            for each(_loc6_ in §finally§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7X§,this.§1!M§,this.§[!@§,this.§-!-§));
               }
            }
            for each(_loc3_ in §38§)
            {
               if((_loc4_ = this.§9G§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§7X§,this.§1!M§,this.§[!@§,this.§-!-§));
               }
            }
            _loc2_ = this.§1!M§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§1!M§[_loc2_].phase == §0!?§.§1!Y§)
               {
                  this.§1!M§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§@o§ += 0.00001;
         }
      }
      
      public function §4!;§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§&!0§.unshift(arguments);
         if(this.§-!-§ && this.§>!E§ && param1 == 0)
         {
            this.§1!a§.§!l§(param3,param4,this.§[!@§);
            this.§&!0§.unshift([1,param2,this.§1!a§.§4f§,this.§1!a§.§4!9§]);
         }
      }
      
      private function §!E§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§4]§;
         if((_loc6_ = this.§9G§(param1)) == null)
         {
            _loc6_ = new §4]§(param1,param3,param4,param2,null);
            this.§?h§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§9F§(param2);
         _loc6_.§"!R§(this.§6-§ + this.§@o§);
         if(param2 == §0!?§.§5!_§ || param2 == §0!?§.§?Y§)
         {
            _loc6_.§7f§(this.§[!<§.hitTest(_loc5_,true));
         }
         if(param2 == §0!?§.§?Y§)
         {
            this.§1!>§(_loc6_);
         }
      }
      
      private function §[§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§4]§ = null;
         var _loc4_:§4]§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§-!-§;
            this.§-!-§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§>!E§ && _loc2_ != this.§-!-§)
            {
               this.§1!a§.visible = this.§-!-§;
               this.§1!a§.§%0§(this.§[!<§.stageWidth / 2,this.§[!<§.stageHeight / 2);
               _loc3_ = this.§9G§(0);
               _loc4_ = this.§9G§(1);
               if(_loc3_)
               {
                  this.§1!a§.§!l§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §0!?§.§1!Y§)
               {
                  this.§&!0§.unshift([1,§0!?§.§1!Y§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§-!-§ && _loc3_)
               {
                  if(_loc3_.phase == §0!?§.§?Y§ || _loc3_.phase == §0!?§.§-!K§)
                  {
                     this.§&!0§.unshift([1,§0!?§.§?Y§,this.§1!a§.§4f§,this.§1!a§.§4!9§]);
                  }
                  else
                  {
                     this.§&!0§.unshift([1,§0!?§.§5!_§,this.§1!a§.§4f§,this.§1!a§.§4!9§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§[!@§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §1!>§(param1:§4]§) : void
      {
         var _loc4_:§4]§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§4]§ = null;
         var _loc3_:Number = §2Z§ * §2Z§;
         for each(_loc4_ in this.§"b§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§#C§(_loc2_.§%d§ + 1);
            this.§"b§.splice(this.§"b§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§#C§(1);
         }
         this.§"b§.push(param1.clone());
      }
      
      private function §?h§(param1:§4]§) : void
      {
         var _loc2_:int = this.§1!M§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§1!M§[_loc2_].id == param1.id)
            {
               this.§1!M§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§1!M§.push(param1);
      }
      
      private function §9G§(param1:int) : §4]§
      {
         var _loc2_:§4]§ = null;
         for each(_loc2_ in this.§1!M§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §>!E§() : Boolean
      {
         return this.§1!a§ != null;
      }
      
      public function set §>!E§(param1:Boolean) : void
      {
         if(this.§>!E§ == param1)
         {
            return;
         }
      }
   }
}
