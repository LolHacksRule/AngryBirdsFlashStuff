package starling.events
{
   import §;t§.Stage;
   import flash.geom.Point;
   
   public class §3!?§
   {
      
      private static const §]@§:Number = 0.3;
      
      private static const §"8§:Number = 25;
      
      private static var §+G§:Vector.<int> = new Vector.<int>(0);
      
      private static var §1!a§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §7>§:Stage;
      
      private var §"p§:Number;
      
      private var §%b§:Number;
      
      private var §;e§:§?§;
      
      private var §&!S§:Vector.<§3B§>;
      
      private var §,O§:Vector.<Array>;
      
      private var §!E§:Vector.<§3B§>;
      
      private var §0!5§:Boolean = false;
      
      private var §6c§:Boolean = false;
      
      public function §3!?§(param1:Stage)
      {
         super();
         this.§7>§ = param1;
         this.§%b§ = 0;
         this.§"p§ = 0;
         this.§&!S§ = new Vector.<§3B§>(0);
         this.§,O§ = new Vector.<Array>(0);
         this.§!E§ = new Vector.<§3B§>(0);
         this.§7>§.addEventListener(KeyboardEvent.KEY_DOWN,this.§if §);
         this.§7>§.addEventListener(KeyboardEvent.KEY_UP,this.§if §);
      }
      
      public function dispose() : void
      {
         this.§7>§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§if §);
         this.§7>§.removeEventListener(KeyboardEvent.KEY_UP,this.§if §);
         if(this.§;e§)
         {
            this.§;e§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§3B§ = null;
         var _loc5_:§3B§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§"p§ += param1;
         this.§%b§ = 0;
         if(this.§!E§.length > 0)
         {
            _loc2_ = this.§!E§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§"p§ - this.§!E§[_loc2_].timestamp > §]@§)
               {
                  this.§!E§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§,O§.length > 0)
         {
            §+G§.length = §1!a§.length = 0;
            for each(_loc5_ in this.§&!S§)
            {
               if(_loc5_.phase == §><§.§"z§ || _loc5_.phase == §><§.§3!H§)
               {
                  _loc5_.§1z§(§><§.§5z§);
               }
            }
            while(this.§,O§.length > 0 && §+G§.indexOf(this.§,O§[this.§,O§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§,O§.pop())[0] as int;
               if((_loc4_ = this.§^W§(_loc3_)) && _loc4_.phase == §><§.§#z§ && _loc4_.target)
               {
                  §1!a§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§+u§.apply(this,_loc7_);
               §+G§.push(_loc3_);
            }
            for each(_loc6_ in §1!a§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§'! §,this.§&!S§,this.§0!5§,this.§6c§));
               }
            }
            for each(_loc3_ in §+G§)
            {
               if((_loc4_ = this.§^W§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§'! §,this.§&!S§,this.§0!5§,this.§6c§));
               }
            }
            _loc2_ = this.§&!S§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&!S§[_loc2_].phase == §><§.§1e§)
               {
                  this.§&!S§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§%b§ += 0.00001;
         }
      }
      
      public function §"e§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§,O§.unshift(arguments);
         if(this.§6c§ && this.simulateMultitouch && param1 == 0)
         {
            this.§;e§.§4!R§(param3,param4,this.§0!5§);
            this.§,O§.unshift([1,param2,this.§;e§.§@$§,this.§;e§.§&A§]);
         }
      }
      
      private function §+u§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§3B§;
         if((_loc6_ = this.§^W§(param1)) == null)
         {
            _loc6_ = new §3B§(param1,param3,param4,param2,null);
            this.§5!C§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§1z§(param2);
         _loc6_.§;!2§(this.§"p§ + this.§%b§);
         if(param2 == §><§.§#z§ || param2 == §><§.§"z§)
         {
            _loc6_.§5!M§(this.§7>§.hitTest(_loc5_,true));
         }
         if(param2 == §><§.§"z§)
         {
            this.§!!§(_loc6_);
         }
      }
      
      private function §if §(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§3B§ = null;
         var _loc4_:§3B§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§6c§;
            this.§6c§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§6c§)
            {
               this.§;e§.visible = this.§6c§;
               this.§;e§.§"o§(this.§7>§.stageWidth / 2,this.§7>§.stageHeight / 2);
               _loc3_ = this.§^W§(0);
               _loc4_ = this.§^W§(1);
               if(_loc3_)
               {
                  this.§;e§.§4!R§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §><§.§1e§)
               {
                  this.§,O§.unshift([1,§><§.§1e§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§6c§ && _loc3_)
               {
                  if(_loc3_.phase == §><§.§"z§ || _loc3_.phase == §><§.§3!H§)
                  {
                     this.§,O§.unshift([1,§><§.§"z§,this.§;e§.§@$§,this.§;e§.§&A§]);
                  }
                  else
                  {
                     this.§,O§.unshift([1,§><§.§#z§,this.§;e§.§@$§,this.§;e§.§&A§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§0!5§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §!!§(param1:§3B§) : void
      {
         var _loc4_:§3B§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§3B§ = null;
         var _loc3_:Number = §"8§ * §"8§;
         for each(_loc4_ in this.§!E§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§5!#§(_loc2_.§+! § + 1);
            this.§!E§.splice(this.§!E§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§5!#§(1);
         }
         this.§!E§.push(param1.clone());
      }
      
      private function §5!C§(param1:§3B§) : void
      {
         var _loc2_:int = this.§&!S§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§&!S§[_loc2_].id == param1.id)
            {
               this.§&!S§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&!S§.push(param1);
      }
      
      private function §^W§(param1:int) : §3B§
      {
         var _loc2_:§3B§ = null;
         for each(_loc2_ in this.§&!S§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§;e§ != null;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         if(this.simulateMultitouch == param1)
         {
            return;
         }
      }
   }
}
