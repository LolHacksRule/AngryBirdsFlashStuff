package starling.events
{
   import §6!7§.Stage;
   import flash.geom.Point;
   
   public class TouchProcessor
   {
      
      private static const §9!2§:Number = 0.3;
      
      private static const §@b§:Number = 25;
      
      private static var §&!N§:Vector.<int> = new Vector.<int>(0);
      
      private static var § for§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §'!'§:Stage;
      
      private var §&z§:Number;
      
      private var §&!"§:Number;
      
      private var §&b§:§ !<§;
      
      private var §[e§:Vector.<§]!i§>;
      
      private var §1k§:Vector.<Array>;
      
      private var §1!A§:Vector.<§]!i§>;
      
      private var §4!F§:Boolean = false;
      
      private var §6!&§:Boolean = false;
      
      public function TouchProcessor(param1:Stage)
      {
         super();
         this.§'!'§ = param1;
         this.§&!"§ = 0;
         this.§&z§ = 0;
         this.§[e§ = new Vector.<§]!i§>(0);
         this.§1k§ = new Vector.<Array>(0);
         this.§1!A§ = new Vector.<§]!i§>(0);
         this.§'!'§.addEventListener(KeyboardEvent.KEY_DOWN,this.§,!^§);
         this.§'!'§.addEventListener(KeyboardEvent.KEY_UP,this.§,!^§);
      }
      
      public function dispose() : void
      {
         this.§'!'§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,!^§);
         this.§'!'§.removeEventListener(KeyboardEvent.KEY_UP,this.§,!^§);
         if(this.§&b§)
         {
            this.§&b§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§]!i§ = null;
         var _loc5_:§]!i§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§&z§ += param1;
         this.§&!"§ = 0;
         if(this.§1!A§.length > 0)
         {
            _loc2_ = this.§1!A§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&z§ - this.§1!A§[_loc2_].timestamp > §9!2§)
               {
                  this.§1!A§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§1k§.length > 0)
         {
            §&!N§.length = § for§.length = 0;
            for each(_loc5_ in this.§[e§)
            {
               if(_loc5_.phase == §!!j§.§ 0§ || _loc5_.phase == §!!j§.§4!^§)
               {
                  _loc5_.§`!"§(§!!j§.§@Y§);
               }
            }
            while(this.§1k§.length > 0 && §&!N§.indexOf(this.§1k§[this.§1k§.length - 1][0]) == -1)
            {
               _loc7_ = this.§1k§.pop();
               _loc3_ = _loc7_[0] as int;
               _loc4_ = this.§;i§(_loc3_);
               if(_loc4_ && _loc4_.phase == §!!j§.§^!R§ && _loc4_.target)
               {
                  § for§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§95§.apply(this,_loc7_);
               §&!N§.push(_loc3_);
            }
            for each(_loc6_ in § for§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!;§,this.§[e§,this.§4!F§,this.§6!&§));
               }
            }
            for each(_loc3_ in §&!N§)
            {
               _loc4_ = this.§;i§(_loc3_);
               if(_loc4_.target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!;§,this.§[e§,this.§4!F§,this.§6!&§));
               }
            }
            _loc2_ = this.§[e§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§[e§[_loc2_].phase == §!!j§.§?c§)
               {
                  this.§[e§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§&!"§ += 0.00001;
         }
      }
      
      public function §]!<§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§1k§.unshift(arguments);
         if(this.§6!&§ && this.§]?§ && param1 == 0)
         {
            this.§&b§.§8n§(param3,param4,this.§4!F§);
            this.§1k§.unshift([1,param2,this.§&b§.§]!X§,this.§&b§.§,g§]);
         }
      }
      
      private function §95§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§]!i§ = this.§;i§(param1);
         if(_loc6_ == null)
         {
            _loc6_ = new §]!i§(param1,param3,param4,param2,null);
            this.§"+§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§`!"§(param2);
         _loc6_.§7Q§(this.§&z§ + this.§&!"§);
         if(param2 == §!!j§.§^!R§ || param2 == §!!j§.§ 0§)
         {
            _loc6_.§,!g§(this.§'!'§.hitTest(_loc5_,true));
         }
         if(param2 == §!!j§.§ 0§)
         {
            this.§<!%§(_loc6_);
         }
      }
      
      private function §,!^§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§]!i§ = null;
         var _loc4_:§]!i§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§6!&§;
            this.§6!&§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§]?§ && _loc2_ != this.§6!&§)
            {
               this.§&b§.visible = this.§6!&§;
               this.§&b§.§,V§(this.§'!'§.stageWidth / 2,this.§'!'§.stageHeight / 2);
               _loc3_ = this.§;i§(0);
               _loc4_ = this.§;i§(1);
               if(_loc3_)
               {
                  this.§&b§.§8n§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §!!j§.§?c§)
               {
                  this.§1k§.unshift([1,§!!j§.§?c§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§6!&§ && _loc3_)
               {
                  if(_loc3_.phase == §!!j§.§ 0§ || _loc3_.phase == §!!j§.§4!^§)
                  {
                     this.§1k§.unshift([1,§!!j§.§ 0§,this.§&b§.§]!X§,this.§&b§.§,g§]);
                  }
                  else
                  {
                     this.§1k§.unshift([1,§!!j§.§^!R§,this.§&b§.§]!X§,this.§&b§.§,g§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§4!F§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §<!%§(param1:§]!i§) : void
      {
         var _loc4_:§]!i§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§]!i§ = null;
         var _loc3_:Number = §@b§ * §@b§;
         for each(_loc4_ in this.§1!A§)
         {
            _loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2);
            if(_loc5_ <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§;!i§(_loc2_.§else § + 1);
            this.§1!A§.splice(this.§1!A§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§;!i§(1);
         }
         this.§1!A§.push(param1.clone());
      }
      
      private function §"+§(param1:§]!i§) : void
      {
         var _loc2_:int = this.§[e§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§[e§[_loc2_].id == param1.id)
            {
               this.§[e§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§[e§.push(param1);
      }
      
      private function §;i§(param1:int) : §]!i§
      {
         var _loc2_:§]!i§ = null;
         for each(_loc2_ in this.§[e§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §]?§() : Boolean
      {
         return this.§&b§ != null;
      }
      
      public function set §]?§(param1:Boolean) : void
      {
         if(this.§]?§ == param1)
         {
            return;
         }
      }
   }
}
