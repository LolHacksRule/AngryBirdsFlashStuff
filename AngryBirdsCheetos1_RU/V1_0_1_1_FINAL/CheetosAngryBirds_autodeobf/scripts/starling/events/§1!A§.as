package starling.events
{
   import §3§.Stage;
   import flash.geom.Point;
   
   public class §1!A§
   {
      
      private static const §"O§:Number = 0.3;
      
      private static const §,!C§:Number = 25;
      
      private static var §[!1§:Vector.<int> = new Vector.<int>(0);
      
      private static var §7!$§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §^4§:Stage;
      
      private var §5]§:Number;
      
      private var §,!M§:Number;
      
      private var §8M§:§#`§;
      
      private var §8!;§:Vector.<§+!9§>;
      
      private var §,O§:Vector.<Array>;
      
      private var §>5§:Vector.<§+!9§>;
      
      private var §&K§:Boolean = false;
      
      private var §;k§:Boolean = false;
      
      public function §1!A§(param1:Stage)
      {
         super();
         this.§^4§ = param1;
         this.§,!M§ = 0;
         this.§5]§ = 0;
         this.§8!;§ = new Vector.<§+!9§>(0);
         this.§,O§ = new Vector.<Array>(0);
         this.§>5§ = new Vector.<§+!9§>(0);
         this.§^4§.addEventListener(KeyboardEvent.KEY_DOWN,this.§#!,§);
         this.§^4§.addEventListener(KeyboardEvent.KEY_UP,this.§#!,§);
      }
      
      public function dispose() : void
      {
         this.§^4§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§#!,§);
         this.§^4§.removeEventListener(KeyboardEvent.KEY_UP,this.§#!,§);
         if(this.§8M§)
         {
            this.§8M§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§+!9§ = null;
         var _loc5_:§+!9§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§5]§ += param1;
         this.§,!M§ = 0;
         if(this.§>5§.length > 0)
         {
            _loc2_ = this.§>5§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§5]§ - this.§>5§[_loc2_].timestamp > §"O§)
               {
                  this.§>5§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§,O§.length > 0)
         {
            §[!1§.length = §7!$§.length = 0;
            for each(_loc5_ in this.§8!;§)
            {
               if(_loc5_.phase == §?S§.§'t§ || _loc5_.phase == §?S§.§?W§)
               {
                  _loc5_.§4!C§(§?S§.§4!B§);
               }
            }
            while(this.§,O§.length > 0 && §[!1§.indexOf(this.§,O§[this.§,O§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§,O§.pop())[0] as int;
               if((_loc4_ = this.§=!X§(_loc3_)) && _loc4_.phase == §?S§.§+!K§ && _loc4_.target)
               {
                  §7!$§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§"6§.apply(this,_loc7_);
               §[!1§.push(_loc3_);
            }
            for each(_loc6_ in §7!$§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§?B§,this.§8!;§,this.§&K§,this.§;k§));
               }
            }
            for each(_loc3_ in §[!1§)
            {
               if((_loc4_ = this.§=!X§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§?B§,this.§8!;§,this.§&K§,this.§;k§));
               }
            }
            _loc2_ = this.§8!;§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§8!;§[_loc2_].phase == §?S§.§,i§)
               {
                  this.§8!;§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§,!M§ += 0.00001;
         }
      }
      
      public function §3!4§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§,O§.unshift(arguments);
         if(this.§;k§ && this.§;&§ && param1 == 0)
         {
            this.§8M§.§?!Y§(param3,param4,this.§&K§);
            this.§,O§.unshift([1,param2,this.§8M§.§+b§,this.§8M§.§'!C§]);
         }
      }
      
      private function §"6§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§+!9§;
         if((_loc6_ = this.§=!X§(param1)) == null)
         {
            _loc6_ = new §+!9§(param1,param3,param4,param2,null);
            this.§+9§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§4!C§(param2);
         _loc6_.§<d§(this.§5]§ + this.§,!M§);
         if(param2 == §?S§.§+!K§ || param2 == §?S§.§'t§)
         {
            _loc6_.§3P§(this.§^4§.hitTest(_loc5_,true));
         }
         if(param2 == §?S§.§'t§)
         {
            this.§2!,§(_loc6_);
         }
      }
      
      private function §#!,§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§+!9§ = null;
         var _loc4_:§+!9§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§;k§;
            this.§;k§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§;&§ && _loc2_ != this.§;k§)
            {
               this.§8M§.visible = this.§;k§;
               this.§8M§.§66§(this.§^4§.stageWidth / 2,this.§^4§.stageHeight / 2);
               _loc3_ = this.§=!X§(0);
               _loc4_ = this.§=!X§(1);
               if(_loc3_)
               {
                  this.§8M§.§?!Y§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §?S§.§,i§)
               {
                  this.§,O§.unshift([1,§?S§.§,i§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§;k§ && _loc3_)
               {
                  if(_loc3_.phase == §?S§.§'t§ || _loc3_.phase == §?S§.§?W§)
                  {
                     this.§,O§.unshift([1,§?S§.§'t§,this.§8M§.§+b§,this.§8M§.§'!C§]);
                  }
                  else
                  {
                     this.§,O§.unshift([1,§?S§.§+!K§,this.§8M§.§+b§,this.§8M§.§'!C§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§&K§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §2!,§(param1:§+!9§) : void
      {
         var _loc4_:§+!9§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§+!9§ = null;
         var _loc3_:Number = §,!C§ * §,!C§;
         for each(_loc4_ in this.§>5§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§!!X§(_loc2_.§,9§ + 1);
            this.§>5§.splice(this.§>5§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§!!X§(1);
         }
         this.§>5§.push(param1.clone());
      }
      
      private function §+9§(param1:§+!9§) : void
      {
         var _loc2_:int = this.§8!;§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§8!;§[_loc2_].id == param1.id)
            {
               this.§8!;§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§8!;§.push(param1);
      }
      
      private function §=!X§(param1:int) : §+!9§
      {
         var _loc2_:§+!9§ = null;
         for each(_loc2_ in this.§8!;§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §;&§() : Boolean
      {
         return this.§8M§ != null;
      }
      
      public function set §;&§(param1:Boolean) : void
      {
         if(this.§;&§ == param1)
         {
            return;
         }
      }
   }
}
