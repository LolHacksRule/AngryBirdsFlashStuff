package starling.events
{
   import §^I§.Stage;
   import flash.geom.Point;
   
   public class § 3§
   {
      
      private static const §+!!§:Number = 0.3;
      
      private static const §3"6§:Number = 25;
      
      private static var §1!Q§:Vector.<int> = new Vector.<int>(0);
      
      private static var §]5§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §0!^§:Stage;
      
      private var §;"4§:Number;
      
      private var §3=§:Number;
      
      private var §!!W§:§=1§;
      
      private var §1!l§:Vector.<§-!y§>;
      
      private var §4,§:Vector.<Array>;
      
      private var §0!R§:Vector.<§-!y§>;
      
      private var §]!o§:Boolean = false;
      
      private var §0%§:Boolean = false;
      
      public function § 3§(param1:Stage)
      {
         super();
         this.§0!^§ = param1;
         this.§3=§ = 0;
         this.§;"4§ = 0;
         this.§1!l§ = new Vector.<§-!y§>(0);
         this.§4,§ = new Vector.<Array>(0);
         this.§0!R§ = new Vector.<§-!y§>(0);
         this.§0!^§.addEventListener(KeyboardEvent.KEY_DOWN,this.§"&§);
         this.§0!^§.addEventListener(KeyboardEvent.KEY_UP,this.§"&§);
      }
      
      public function dispose() : void
      {
         this.§0!^§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§"&§);
         this.§0!^§.removeEventListener(KeyboardEvent.KEY_UP,this.§"&§);
         if(this.§!!W§)
         {
            this.§!!W§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§-!y§ = null;
         var _loc5_:§-!y§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§;"4§ += param1;
         this.§3=§ = 0;
         if(this.§0!R§.length > 0)
         {
            _loc2_ = this.§0!R§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§;"4§ - this.§0!R§[_loc2_].timestamp > §+!!§)
               {
                  this.§0!R§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§4,§.length > 0)
         {
            §1!Q§.length = §]5§.length = 0;
            for each(_loc5_ in this.§1!l§)
            {
               if(_loc5_.phase == §-B§.§#!T§ || _loc5_.phase == §-B§.§@Z§)
               {
                  _loc5_.§=k§(§-B§.§8k§);
               }
            }
            while(this.§4,§.length > 0 && §1!Q§.indexOf(this.§4,§[this.§4,§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§4,§.pop())[0] as int;
               if((_loc4_ = this.§+!e§(_loc3_)) && _loc4_.phase == §-B§.§3!R§ && _loc4_.target)
               {
                  §]5§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§&e§.apply(this,_loc7_);
               §1!Q§.push(_loc3_);
            }
            for each(_loc6_ in §]5§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§%!r§,this.§1!l§,this.§]!o§,this.§0%§));
               }
            }
            for each(_loc3_ in §1!Q§)
            {
               if((_loc4_ = this.§+!e§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§%!r§,this.§1!l§,this.§]!o§,this.§0%§));
               }
            }
            _loc2_ = this.§1!l§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§1!l§[_loc2_].phase == §-B§.§>!A§)
               {
                  this.§1!l§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§3=§ += 0.00001;
         }
      }
      
      public function §`!w§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§4,§.unshift(arguments);
         if(this.§0%§ && this.§"5§ && param1 == 0)
         {
            this.§!!W§.§8!c§(param3,param4,this.§]!o§);
            this.§4,§.unshift([1,param2,this.§!!W§.§4g§,this.§!!W§.§9i§]);
         }
      }
      
      private function §&e§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§-!y§;
         if((_loc6_ = this.§+!e§(param1)) == null)
         {
            _loc6_ = new §-!y§(param1,param3,param4,param2,null);
            this.§[1§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§=k§(param2);
         _loc6_.§=!a§(this.§;"4§ + this.§3=§);
         if(param2 == §-B§.§3!R§ || param2 == §-B§.§#!T§)
         {
            _loc6_.§<T§(this.§0!^§.hitTest(_loc5_,true));
         }
         if(param2 == §-B§.§#!T§)
         {
            this.§&!>§(_loc6_);
         }
      }
      
      private function §"&§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§-!y§ = null;
         var _loc4_:§-!y§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§0%§;
            this.§0%§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§"5§ && _loc2_ != this.§0%§)
            {
               this.§!!W§.visible = this.§0%§;
               this.§!!W§.§ "+§(this.§0!^§.stageWidth / 2,this.§0!^§.stageHeight / 2);
               _loc3_ = this.§+!e§(0);
               _loc4_ = this.§+!e§(1);
               if(_loc3_)
               {
                  this.§!!W§.§8!c§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §-B§.§>!A§)
               {
                  this.§4,§.unshift([1,§-B§.§>!A§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§0%§ && _loc3_)
               {
                  if(_loc3_.phase == §-B§.§#!T§ || _loc3_.phase == §-B§.§@Z§)
                  {
                     this.§4,§.unshift([1,§-B§.§#!T§,this.§!!W§.§4g§,this.§!!W§.§9i§]);
                  }
                  else
                  {
                     this.§4,§.unshift([1,§-B§.§3!R§,this.§!!W§.§4g§,this.§!!W§.§9i§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§]!o§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §&!>§(param1:§-!y§) : void
      {
         var _loc4_:§-!y§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§-!y§ = null;
         var _loc3_:Number = §3"6§ * §3"6§;
         for each(_loc4_ in this.§0!R§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§-?§(_loc2_.§>L§ + 1);
            this.§0!R§.splice(this.§0!R§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§-?§(1);
         }
         this.§0!R§.push(param1.clone());
      }
      
      private function §[1§(param1:§-!y§) : void
      {
         var _loc2_:int = this.§1!l§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§1!l§[_loc2_].id == param1.id)
            {
               this.§1!l§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§1!l§.push(param1);
      }
      
      private function §+!e§(param1:int) : §-!y§
      {
         var _loc2_:§-!y§ = null;
         for each(_loc2_ in this.§1!l§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §"5§() : Boolean
      {
         return this.§!!W§ != null;
      }
      
      public function set §"5§(param1:Boolean) : void
      {
         if(this.§"5§ == param1)
         {
            return;
         }
      }
   }
}
