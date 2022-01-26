package starling.events
{
   import §7u§.Stage;
   import flash.geom.Point;
   
   public class §^7§
   {
      
      private static const §]!W§:Number = 0.3;
      
      private static const §'A§:Number = 25;
      
      private static var §7'§:Vector.<int> = new Vector.<int>(0);
      
      private static var §'0§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §3!Z§:Stage;
      
      private var §66§:Number;
      
      private var §^! §:Number;
      
      private var §3;§:§"l§;
      
      private var §^]§:Vector.<§2!P§>;
      
      private var §4!D§:Vector.<Array>;
      
      private var §4J§:Vector.<§2!P§>;
      
      private var §"!D§:Boolean = false;
      
      private var §2!0§:Boolean = false;
      
      public function §^7§(param1:Stage)
      {
         super();
         this.§3!Z§ = param1;
         this.§^! § = 0;
         this.§66§ = 0;
         this.§^]§ = new Vector.<§2!P§>(0);
         this.§4!D§ = new Vector.<Array>(0);
         this.§4J§ = new Vector.<§2!P§>(0);
         this.§3!Z§.addEventListener(KeyboardEvent.KEY_DOWN,this.§%!Z§);
         this.§3!Z§.addEventListener(KeyboardEvent.KEY_UP,this.§%!Z§);
      }
      
      public function dispose() : void
      {
         this.§3!Z§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§%!Z§);
         this.§3!Z§.removeEventListener(KeyboardEvent.KEY_UP,this.§%!Z§);
         if(this.§3;§)
         {
            this.§3;§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§2!P§ = null;
         var _loc5_:§2!P§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§66§ += param1;
         this.§^! § = 0;
         if(this.§4J§.length > 0)
         {
            _loc2_ = this.§4J§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§66§ - this.§4J§[_loc2_].timestamp > §]!W§)
               {
                  this.§4J§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§4!D§.length > 0)
         {
            §7'§.length = §'0§.length = 0;
            for each(_loc5_ in this.§^]§)
            {
               if(_loc5_.phase == §6x§.§;!Y§ || _loc5_.phase == §6x§.§6!N§)
               {
                  _loc5_.§&!M§(§6x§.§"7§);
               }
            }
            while(this.§4!D§.length > 0 && §7'§.indexOf(this.§4!D§[this.§4!D§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§4!D§.pop())[0] as int;
               if((_loc4_ = this.§#!2§(_loc3_)) && _loc4_.phase == §6x§.§%V§ && _loc4_.target)
               {
                  §'0§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§7U§.apply(this,_loc7_);
               §7'§.push(_loc3_);
            }
            for each(_loc6_ in §'0§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§>W§,this.§^]§,this.§"!D§,this.§2!0§));
               }
            }
            for each(_loc3_ in §7'§)
            {
               if((_loc4_ = this.§#!2§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§>W§,this.§^]§,this.§"!D§,this.§2!0§));
               }
            }
            _loc2_ = this.§^]§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^]§[_loc2_].phase == §6x§.§9%§)
               {
                  this.§^]§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§^! § += 0.00001;
         }
      }
      
      public function §?=§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§4!D§.unshift(arguments);
         if(this.§2!0§ && this.§<!I§ && param1 == 0)
         {
            this.§3;§.§"P§(param3,param4,this.§"!D§);
            this.§4!D§.unshift([1,param2,this.§3;§.§[!@§,this.§3;§.§2,§]);
         }
      }
      
      private function §7U§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§2!P§;
         if((_loc6_ = this.§#!2§(param1)) == null)
         {
            _loc6_ = new §2!P§(param1,param3,param4,param2,null);
            this.§9e§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§&!M§(param2);
         _loc6_.§1X§(this.§66§ + this.§^! §);
         if(param2 == §6x§.§%V§ || param2 == §6x§.§;!Y§)
         {
            _loc6_.§"!I§(this.§3!Z§.hitTest(_loc5_,true));
         }
         if(param2 == §6x§.§;!Y§)
         {
            this.§+[§(_loc6_);
         }
      }
      
      private function §%!Z§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§2!P§ = null;
         var _loc4_:§2!P§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§2!0§;
            this.§2!0§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§<!I§ && _loc2_ != this.§2!0§)
            {
               this.§3;§.visible = this.§2!0§;
               this.§3;§.§&!S§(this.§3!Z§.stageWidth / 2,this.§3!Z§.stageHeight / 2);
               _loc3_ = this.§#!2§(0);
               _loc4_ = this.§#!2§(1);
               if(_loc3_)
               {
                  this.§3;§.§"P§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §6x§.§9%§)
               {
                  this.§4!D§.unshift([1,§6x§.§9%§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§2!0§ && _loc3_)
               {
                  if(_loc3_.phase == §6x§.§;!Y§ || _loc3_.phase == §6x§.§6!N§)
                  {
                     this.§4!D§.unshift([1,§6x§.§;!Y§,this.§3;§.§[!@§,this.§3;§.§2,§]);
                  }
                  else
                  {
                     this.§4!D§.unshift([1,§6x§.§%V§,this.§3;§.§[!@§,this.§3;§.§2,§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§"!D§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §+[§(param1:§2!P§) : void
      {
         var _loc4_:§2!P§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§2!P§ = null;
         var _loc3_:Number = §'A§ * §'A§;
         for each(_loc4_ in this.§4J§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§@!Q§(_loc2_.§4w§ + 1);
            this.§4J§.splice(this.§4J§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§@!Q§(1);
         }
         this.§4J§.push(param1.clone());
      }
      
      private function §9e§(param1:§2!P§) : void
      {
         var _loc2_:int = this.§^]§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§^]§[_loc2_].id == param1.id)
            {
               this.§^]§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^]§.push(param1);
      }
      
      private function §#!2§(param1:int) : §2!P§
      {
         var _loc2_:§2!P§ = null;
         for each(_loc2_ in this.§^]§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §<!I§() : Boolean
      {
         return this.§3;§ != null;
      }
      
      public function set §<!I§(param1:Boolean) : void
      {
         if(this.§<!I§ == param1)
         {
            return;
         }
      }
   }
}
