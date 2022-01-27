package starling.events
{
   import §#!f§.Stage;
   import flash.geom.Point;
   
   public class §7G§
   {
      
      private static const §2!N§:Number = 0.3;
      
      private static const §,J§:Number = 25;
      
      private static var §2!!§:Vector.<int> = new Vector.<int>(0);
      
      private static var §[!%§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §%!$§:Stage;
      
      private var §+!"§:Number;
      
      private var §2e§:Number;
      
      private var §,0§:§-!Z§;
      
      private var §,!A§:Vector.<§8W§>;
      
      private var §%A§:Vector.<Array>;
      
      private var §`!X§:Vector.<§8W§>;
      
      private var §8-§:Boolean = false;
      
      private var §^s§:Boolean = false;
      
      public function §7G§(param1:Stage)
      {
         super();
         this.§%!$§ = param1;
         this.§2e§ = 0;
         this.§+!"§ = 0;
         this.§,!A§ = new Vector.<§8W§>(0);
         this.§%A§ = new Vector.<Array>(0);
         this.§`!X§ = new Vector.<§8W§>(0);
         this.§%!$§.addEventListener(KeyboardEvent.KEY_DOWN,this.§1x§);
         this.§%!$§.addEventListener(KeyboardEvent.KEY_UP,this.§1x§);
      }
      
      public function dispose() : void
      {
         this.§%!$§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§1x§);
         this.§%!$§.removeEventListener(KeyboardEvent.KEY_UP,this.§1x§);
         if(this.§,0§)
         {
            this.§,0§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§8W§ = null;
         var _loc5_:§8W§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§+!"§ += param1;
         this.§2e§ = 0;
         if(this.§`!X§.length > 0)
         {
            _loc2_ = this.§`!X§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§+!"§ - this.§`!X§[_loc2_].timestamp > §2!N§)
               {
                  this.§`!X§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§%A§.length > 0)
         {
            §2!!§.length = §[!%§.length = 0;
            for each(_loc5_ in this.§,!A§)
            {
               if(_loc5_.phase == §4!a§.§#!Y§ || _loc5_.phase == §4!a§.§>!%§)
               {
                  _loc5_.§3V§(§4!a§.§@!'§);
               }
            }
            while(this.§%A§.length > 0 && §2!!§.indexOf(this.§%A§[this.§%A§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§%A§.pop())[0] as int;
               if((_loc4_ = this.§<I§(_loc3_)) && _loc4_.phase == §4!a§.§-c§ && _loc4_.target)
               {
                  §[!%§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§2L§.apply(this,_loc7_);
               §2!!§.push(_loc3_);
            }
            for each(_loc6_ in §[!%§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§%H§,this.§,!A§,this.§8-§,this.§^s§));
               }
            }
            for each(_loc3_ in §2!!§)
            {
               if((_loc4_ = this.§<I§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§%H§,this.§,!A§,this.§8-§,this.§^s§));
               }
            }
            _loc2_ = this.§,!A§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§,!A§[_loc2_].phase == §4!a§.§,§)
               {
                  this.§,!A§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§2e§ += 0.00001;
         }
      }
      
      public function §#!2§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§%A§.unshift(arguments);
         if(this.§^s§ && this.simulateMultitouch && param1 == 0)
         {
            this.§,0§.§`!#§(param3,param4,this.§8-§);
            this.§%A§.unshift([1,param2,this.§,0§.§`%§,this.§,0§.§3D§]);
         }
      }
      
      private function §2L§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§8W§;
         if((_loc6_ = this.§<I§(param1)) == null)
         {
            _loc6_ = new §8W§(param1,param3,param4,param2,null);
            this.§1!#§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§3V§(param2);
         _loc6_.§;!E§(this.§+!"§ + this.§2e§);
         if(param2 == §4!a§.§-c§ || param2 == §4!a§.§#!Y§)
         {
            _loc6_.§[!P§(this.§%!$§.hitTest(_loc5_,true));
         }
         if(param2 == §4!a§.§#!Y§)
         {
            this.§=! §(_loc6_);
         }
      }
      
      private function §1x§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§8W§ = null;
         var _loc4_:§8W§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§^s§;
            this.§^s§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§^s§)
            {
               this.§,0§.visible = this.§^s§;
               this.§,0§.§6!+§(this.§%!$§.stageWidth / 2,this.§%!$§.stageHeight / 2);
               _loc3_ = this.§<I§(0);
               _loc4_ = this.§<I§(1);
               if(_loc3_)
               {
                  this.§,0§.§`!#§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §4!a§.§,§)
               {
                  this.§%A§.unshift([1,§4!a§.§,§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§^s§ && _loc3_)
               {
                  if(_loc3_.phase == §4!a§.§#!Y§ || _loc3_.phase == §4!a§.§>!%§)
                  {
                     this.§%A§.unshift([1,§4!a§.§#!Y§,this.§,0§.§`%§,this.§,0§.§3D§]);
                  }
                  else
                  {
                     this.§%A§.unshift([1,§4!a§.§-c§,this.§,0§.§`%§,this.§,0§.§3D§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§8-§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §=! §(param1:§8W§) : void
      {
         var _loc4_:§8W§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§8W§ = null;
         var _loc3_:Number = §,J§ * §,J§;
         for each(_loc4_ in this.§`!X§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§17§(_loc2_.§,c§ + 1);
            this.§`!X§.splice(this.§`!X§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§17§(1);
         }
         this.§`!X§.push(param1.clone());
      }
      
      private function §1!#§(param1:§8W§) : void
      {
         var _loc2_:int = this.§,!A§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§,!A§[_loc2_].id == param1.id)
            {
               this.§,!A§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§,!A§.push(param1);
      }
      
      private function §<I§(param1:int) : §8W§
      {
         var _loc2_:§8W§ = null;
         for each(_loc2_ in this.§,!A§)
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
         return this.§,0§ != null;
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
