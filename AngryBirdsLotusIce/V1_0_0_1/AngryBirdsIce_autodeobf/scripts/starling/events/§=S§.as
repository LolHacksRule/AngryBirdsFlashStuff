package starling.events
{
   import §@!=§.Stage;
   import flash.geom.Point;
   
   public class §=S§
   {
      
      private static const §@g§:Number = 0.3;
      
      private static const §2!4§:Number = 25;
      
      private static var §14§:Vector.<int> = new Vector.<int>(0);
      
      private static var §"0§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §>t§:Stage;
      
      private var §[d§:Number;
      
      private var §"Z§:Number;
      
      private var §=! §:§-!&§;
      
      private var § !?§:Vector.<§"c§>;
      
      private var §?<§:Vector.<Array>;
      
      private var §5!;§:Vector.<§"c§>;
      
      private var §!m§:Boolean = false;
      
      private var §>!C§:Boolean = false;
      
      public function §=S§(param1:Stage)
      {
         super();
         this.§>t§ = param1;
         this.§"Z§ = 0;
         this.§[d§ = 0;
         this.§ !?§ = new Vector.<§"c§>(0);
         this.§?<§ = new Vector.<Array>(0);
         this.§5!;§ = new Vector.<§"c§>(0);
         this.§>t§.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§>t§.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.§>t§.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.§>t§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.§=! §)
         {
            this.§=! §.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§"c§ = null;
         var _loc5_:§"c§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§[d§ += param1;
         this.§"Z§ = 0;
         if(this.§5!;§.length > 0)
         {
            _loc2_ = this.§5!;§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[d§ - this.§5!;§[_loc2_].timestamp > §@g§)
               {
                  this.§5!;§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§?<§.length > 0)
         {
            §14§.length = §"0§.length = 0;
            for each(_loc5_ in this.§ !?§)
            {
               if(_loc5_.phase == §>w§.§9a§ || _loc5_.phase == §>w§.§`'§)
               {
                  _loc5_.§62§(§>w§.§]d§);
               }
            }
            while(this.§?<§.length > 0 && §14§.indexOf(this.§?<§[this.§?<§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§?<§.pop())[0] as int;
               if((_loc4_ = this.§'x§(_loc3_)) && _loc4_.phase == §>w§.§#j§ && _loc4_.target)
               {
                  §"0§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§,k§.apply(this,_loc7_);
               §14§.push(_loc3_);
            }
            for each(_loc6_ in §"0§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§!&§,this.§ !?§,this.§!m§,this.§>!C§));
               }
            }
            for each(_loc3_ in §14§)
            {
               if((_loc4_ = this.§'x§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§!&§,this.§ !?§,this.§!m§,this.§>!C§));
               }
            }
            _loc2_ = this.§ !?§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§ !?§[_loc2_].phase == §>w§.§[s§)
               {
                  this.§ !?§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§"Z§ += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§?<§.unshift(arguments);
         if(this.§>!C§ && this.§=!$§ && param1 == 0)
         {
            this.§=! §.§ >§(param3,param4,this.§!m§);
            this.§?<§.unshift([1,param2,this.§=! §.§5P§,this.§=! §.§6[§]);
         }
      }
      
      private function §,k§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§"c§;
         if((_loc6_ = this.§'x§(param1)) == null)
         {
            _loc6_ = new §"c§(param1,param3,param4,param2,null);
            this.§#b§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§62§(param2);
         _loc6_.§7L§(this.§[d§ + this.§"Z§);
         if(param2 == §>w§.§#j§ || param2 == §>w§.§9a§)
         {
            _loc6_.§3#§(this.§>t§.hitTest(_loc5_,true));
         }
         if(param2 == §>w§.§9a§)
         {
            this.§65§(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§"c§ = null;
         var _loc4_:§"c§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§>!C§;
            this.§>!C§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§=!$§ && _loc2_ != this.§>!C§)
            {
               this.§=! §.visible = this.§>!C§;
               this.§=! §.§%p§(this.§>t§.stageWidth / 2,this.§>t§.stageHeight / 2);
               _loc3_ = this.§'x§(0);
               _loc4_ = this.§'x§(1);
               if(_loc3_)
               {
                  this.§=! §.§ >§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §>w§.§[s§)
               {
                  this.§?<§.unshift([1,§>w§.§[s§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§>!C§ && _loc3_)
               {
                  if(_loc3_.phase == §>w§.§9a§ || _loc3_.phase == §>w§.§`'§)
                  {
                     this.§?<§.unshift([1,§>w§.§9a§,this.§=! §.§5P§,this.§=! §.§6[§]);
                  }
                  else
                  {
                     this.§?<§.unshift([1,§>w§.§#j§,this.§=! §.§5P§,this.§=! §.§6[§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!m§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §65§(param1:§"c§) : void
      {
         var _loc4_:§"c§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§"c§ = null;
         var _loc3_:Number = §2!4§ * §2!4§;
         for each(_loc4_ in this.§5!;§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§+!6§(_loc2_.§[n§ + 1);
            this.§5!;§.splice(this.§5!;§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§+!6§(1);
         }
         this.§5!;§.push(param1.clone());
      }
      
      private function §#b§(param1:§"c§) : void
      {
         var _loc2_:int = this.§ !?§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§ !?§[_loc2_].id == param1.id)
            {
               this.§ !?§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ !?§.push(param1);
      }
      
      private function §'x§(param1:int) : §"c§
      {
         var _loc2_:§"c§ = null;
         for each(_loc2_ in this.§ !?§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §=!$§() : Boolean
      {
         return this.§=! § != null;
      }
      
      public function set §=!$§(param1:Boolean) : void
      {
         if(this.§=!$§ == param1)
         {
            return;
         }
      }
   }
}
