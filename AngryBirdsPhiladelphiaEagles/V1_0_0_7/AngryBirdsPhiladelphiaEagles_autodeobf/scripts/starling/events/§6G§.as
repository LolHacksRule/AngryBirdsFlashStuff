package starling.events
{
   import §4G§.Stage;
   import flash.geom.Point;
   
   public class §6G§
   {
      
      private static const §<!B§:Number = 0.3;
      
      private static const §5i§:Number = 25;
      
      private static var §'e§:Vector.<int> = new Vector.<int>(0);
      
      private static var §"Q§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §`v§:Stage;
      
      private var §&#§:Number;
      
      private var §9!!§:Number;
      
      private var §?z§:§=[§;
      
      private var §>y§:Vector.<§%!M§>;
      
      private var §"k§:Vector.<Array>;
      
      private var §3^§:Vector.<§%!M§>;
      
      private var §4e§:Boolean = false;
      
      private var §&f§:Boolean = false;
      
      public function §6G§(param1:Stage)
      {
         super();
         this.§`v§ = param1;
         this.§9!!§ = 0;
         this.§&#§ = 0;
         this.§>y§ = new Vector.<§%!M§>(0);
         this.§"k§ = new Vector.<Array>(0);
         this.§3^§ = new Vector.<§%!M§>(0);
         this.§`v§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!O§);
         this.§`v§.addEventListener(KeyboardEvent.KEY_UP,this.§8!O§);
      }
      
      public function dispose() : void
      {
         this.§`v§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8!O§);
         this.§`v§.removeEventListener(KeyboardEvent.KEY_UP,this.§8!O§);
         if(this.§?z§)
         {
            this.§?z§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§%!M§ = null;
         var _loc5_:§%!M§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§&#§ += param1;
         this.§9!!§ = 0;
         if(this.§3^§.length > 0)
         {
            _loc2_ = this.§3^§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&#§ - this.§3^§[_loc2_].timestamp > §<!B§)
               {
                  this.§3^§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§"k§.length > 0)
         {
            §'e§.length = §"Q§.length = 0;
            for each(_loc5_ in this.§>y§)
            {
               if(_loc5_.phase == § else§.§#!&§ || _loc5_.phase == § else§.§'!0§)
               {
                  _loc5_.§?!8§(§ else§.§[h§);
               }
            }
            while(this.§"k§.length > 0 && §'e§.indexOf(this.§"k§[this.§"k§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§"k§.pop())[0] as int;
               if((_loc4_ = this.§]N§(_loc3_)) && _loc4_.phase == § else§.§<!;§ && _loc4_.target)
               {
                  §"Q§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§!o§.apply(this,_loc7_);
               §'e§.push(_loc3_);
            }
            for each(_loc6_ in §"Q§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§;o§,this.§>y§,this.§4e§,this.§&f§));
               }
            }
            for each(_loc3_ in §'e§)
            {
               if((_loc4_ = this.§]N§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§;o§,this.§>y§,this.§4e§,this.§&f§));
               }
            }
            _loc2_ = this.§>y§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§>y§[_loc2_].phase == § else§.§&!2§)
               {
                  this.§>y§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§9!!§ += 0.00001;
         }
      }
      
      public function include(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§"k§.unshift(arguments);
         if(this.§&f§ && this.§2`§ && param1 == 0)
         {
            this.§?z§.dynamic(param3,param4,this.§4e§);
            this.§"k§.unshift([1,param2,this.§?z§.§=4§,this.§?z§.§'Y§]);
         }
      }
      
      private function §!o§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§%!M§;
         if((_loc6_ = this.§]N§(param1)) == null)
         {
            _loc6_ = new §%!M§(param1,param3,param4,param2,null);
            this.§function§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§?!8§(param2);
         _loc6_.§`!6§(this.§&#§ + this.§9!!§);
         if(param2 == § else§.§<!;§ || param2 == § else§.§#!&§)
         {
            _loc6_.§0%§(this.§`v§.hitTest(_loc5_,true));
         }
         if(param2 == § else§.§#!&§)
         {
            this.§^0§(_loc6_);
         }
      }
      
      private function §8!O§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§%!M§ = null;
         var _loc4_:§%!M§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§&f§;
            this.§&f§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§2`§ && _loc2_ != this.§&f§)
            {
               this.§?z§.visible = this.§&f§;
               this.§?z§.§4§(this.§`v§.stageWidth / 2,this.§`v§.stageHeight / 2);
               _loc3_ = this.§]N§(0);
               _loc4_ = this.§]N§(1);
               if(_loc3_)
               {
                  this.§?z§.dynamic(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != § else§.§&!2§)
               {
                  this.§"k§.unshift([1,§ else§.§&!2§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§&f§ && _loc3_)
               {
                  if(_loc3_.phase == § else§.§#!&§ || _loc3_.phase == § else§.§'!0§)
                  {
                     this.§"k§.unshift([1,§ else§.§#!&§,this.§?z§.§=4§,this.§?z§.§'Y§]);
                  }
                  else
                  {
                     this.§"k§.unshift([1,§ else§.§<!;§,this.§?z§.§=4§,this.§?z§.§'Y§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§4e§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §^0§(param1:§%!M§) : void
      {
         var _loc4_:§%!M§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§%!M§ = null;
         var _loc3_:Number = §5i§ * §5i§;
         for each(_loc4_ in this.§3^§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§implements§(_loc2_.§^!J§ + 1);
            this.§3^§.splice(this.§3^§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§implements§(1);
         }
         this.§3^§.push(param1.clone());
      }
      
      private function §function§(param1:§%!M§) : void
      {
         var _loc2_:int = this.§>y§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§>y§[_loc2_].id == param1.id)
            {
               this.§>y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§>y§.push(param1);
      }
      
      private function §]N§(param1:int) : §%!M§
      {
         var _loc2_:§%!M§ = null;
         for each(_loc2_ in this.§>y§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §2`§() : Boolean
      {
         return this.§?z§ != null;
      }
      
      public function set §2`§(param1:Boolean) : void
      {
         if(this.§2`§ == param1)
         {
            return;
         }
      }
   }
}
