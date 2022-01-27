package starling.events
{
   import §'!&§.Stage;
   import flash.geom.Point;
   
   public class §&!+§
   {
      
      private static const §!!P§:Number = 0.3;
      
      private static const §=Y§:Number = 25;
      
      private static var §2"4§:Vector.<int> = new Vector.<int>(0);
      
      private static var §3j§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §,""§:Stage;
      
      private var §9!+§:Number;
      
      private var §%!l§:Number;
      
      private var §9G§:§-C§;
      
      private var §,!G§:Vector.<§^!w§>;
      
      private var §4"E§:Vector.<Array>;
      
      private var §]!&§:Vector.<§^!w§>;
      
      private var §-"<§:Boolean = false;
      
      private var §4S§:Boolean = false;
      
      public function §&!+§(param1:Stage)
      {
         super();
         this.§,""§ = param1;
         this.§%!l§ = 0;
         this.§9!+§ = 0;
         this.§,!G§ = new Vector.<§^!w§>(0);
         this.§4"E§ = new Vector.<Array>(0);
         this.§]!&§ = new Vector.<§^!w§>(0);
         this.§,""§.addEventListener(KeyboardEvent.KEY_DOWN,this.§0[§);
         this.§,""§.addEventListener(KeyboardEvent.KEY_UP,this.§0[§);
      }
      
      public function dispose() : void
      {
         this.§,""§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0[§);
         this.§,""§.removeEventListener(KeyboardEvent.KEY_UP,this.§0[§);
         if(this.§9G§)
         {
            this.§9G§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§^!w§ = null;
         var _loc5_:§^!w§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§9!+§ += param1;
         this.§%!l§ = 0;
         if(this.§]!&§.length > 0)
         {
            _loc2_ = this.§]!&§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§9!+§ - this.§]!&§[_loc2_].timestamp > §!!P§)
               {
                  this.§]!&§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§4"E§.length > 0)
         {
            §2"4§.length = §3j§.length = 0;
            for each(_loc5_ in this.§,!G§)
            {
               if(_loc5_.phase == §0!i§.§>! § || _loc5_.phase == §0!i§.§3!r§)
               {
                  _loc5_.§`R§(§0!i§.§4g§);
               }
            }
            while(this.§4"E§.length > 0 && §2"4§.indexOf(this.§4"E§[this.§4"E§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§4"E§.pop())[0] as int;
               if((_loc4_ = this.§^!q§(_loc3_)) && _loc4_.phase == §0!i§.§"!j§ && _loc4_.target)
               {
                  §3j§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§8""§.apply(this,_loc7_);
               §2"4§.push(_loc3_);
            }
            for each(_loc6_ in §3j§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§;;§,this.§,!G§,this.§-"<§,this.§4S§));
               }
            }
            for each(_loc3_ in §2"4§)
            {
               if((_loc4_ = this.§^!q§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§;;§,this.§,!G§,this.§-"<§,this.§4S§));
               }
            }
            _loc2_ = this.§,!G§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§,!G§[_loc2_].phase == §0!i§.§?!-§)
               {
                  this.§,!G§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§%!l§ += 0.00001;
         }
      }
      
      public function § !s§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§4"E§.unshift(arguments);
         if(this.§4S§ && this.§>H§ && param1 == 0)
         {
            this.§9G§.§"1§(param3,param4,this.§-"<§);
            this.§4"E§.unshift([1,param2,this.§9G§.§<0§,this.§9G§.§0!e§]);
         }
      }
      
      private function §8""§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§^!w§;
         if((_loc6_ = this.§^!q§(param1)) == null)
         {
            _loc6_ = new §^!w§(param1,param3,param4,param2,null);
            this.§?p§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§`R§(param2);
         _loc6_.§0![§(this.§9!+§ + this.§%!l§);
         if(param2 == §0!i§.§"!j§ || param2 == §0!i§.§>! §)
         {
            _loc6_.§&X§(this.§,""§.hitTest(_loc5_,true));
         }
         if(param2 == §0!i§.§>! §)
         {
            this.§]!v§(_loc6_);
         }
      }
      
      private function §0[§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§^!w§ = null;
         var _loc4_:§^!w§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§4S§;
            this.§4S§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§>H§ && _loc2_ != this.§4S§)
            {
               this.§9G§.visible = this.§4S§;
               this.§9G§.§>f§(this.§,""§.stageWidth / 2,this.§,""§.stageHeight / 2);
               _loc3_ = this.§^!q§(0);
               _loc4_ = this.§^!q§(1);
               if(_loc3_)
               {
                  this.§9G§.§"1§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §0!i§.§?!-§)
               {
                  this.§4"E§.unshift([1,§0!i§.§?!-§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§4S§ && _loc3_)
               {
                  if(_loc3_.phase == §0!i§.§>! § || _loc3_.phase == §0!i§.§3!r§)
                  {
                     this.§4"E§.unshift([1,§0!i§.§>! §,this.§9G§.§<0§,this.§9G§.§0!e§]);
                  }
                  else
                  {
                     this.§4"E§.unshift([1,§0!i§.§"!j§,this.§9G§.§<0§,this.§9G§.§0!e§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§-"<§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §]!v§(param1:§^!w§) : void
      {
         var _loc4_:§^!w§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§^!w§ = null;
         var _loc3_:Number = §=Y§ * §=Y§;
         for each(_loc4_ in this.§]!&§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§-!6§(_loc2_.§6!>§ + 1);
            this.§]!&§.splice(this.§]!&§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§-!6§(1);
         }
         this.§]!&§.push(param1.clone());
      }
      
      private function §?p§(param1:§^!w§) : void
      {
         var _loc2_:int = this.§,!G§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§,!G§[_loc2_].id == param1.id)
            {
               this.§,!G§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,!G§.push(param1);
      }
      
      private function §^!q§(param1:int) : §^!w§
      {
         var _loc2_:§^!w§ = null;
         for each(_loc2_ in this.§,!G§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §>H§() : Boolean
      {
         return this.§9G§ != null;
      }
      
      public function set §>H§(param1:Boolean) : void
      {
         if(this.§>H§ == param1)
         {
            return;
         }
      }
   }
}
