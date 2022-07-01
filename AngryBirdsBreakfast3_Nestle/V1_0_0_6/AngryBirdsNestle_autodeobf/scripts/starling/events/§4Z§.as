package starling.events
{
   import §,!q§.Stage;
   import flash.geom.Point;
   
   public class §4Z§
   {
      
      private static const §5!I§:Number = 0.3;
      
      private static const §[!w§:Number = 25;
      
      private static var §^a§:Vector.<int> = new Vector.<int>(0);
      
      private static var §3o§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §'!k§:Stage;
      
      private var §#!C§:Number;
      
      private var § !p§:Number;
      
      private var §[&§:§""#§;
      
      private var §&L§:Vector.<§!v§>;
      
      private var §^W§:Vector.<Array>;
      
      private var §&!-§:Vector.<§!v§>;
      
      private var §!!M§:Boolean = false;
      
      private var §5!5§:Boolean = false;
      
      public function §4Z§(param1:Stage)
      {
         super();
         this.§'!k§ = param1;
         this.§ !p§ = 0;
         this.§#!C§ = 0;
         this.§&L§ = new Vector.<§!v§>(0);
         this.§^W§ = new Vector.<Array>(0);
         this.§&!-§ = new Vector.<§!v§>(0);
         this.§'!k§.addEventListener(KeyboardEvent.KEY_DOWN,this.§#!b§);
         this.§'!k§.addEventListener(KeyboardEvent.KEY_UP,this.§#!b§);
      }
      
      public function dispose() : void
      {
         this.§'!k§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§#!b§);
         this.§'!k§.removeEventListener(KeyboardEvent.KEY_UP,this.§#!b§);
         if(this.§[&§)
         {
            this.§[&§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§!v§ = null;
         var _loc5_:§!v§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§#!C§ += param1;
         this.§ !p§ = 0;
         if(this.§&!-§.length > 0)
         {
            _loc2_ = this.§&!-§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§#!C§ - this.§&!-§[_loc2_].timestamp > §5!I§)
               {
                  this.§&!-§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§^W§.length > 0)
         {
            §^a§.length = §3o§.length = 0;
            for each(_loc5_ in this.§&L§)
            {
               if(_loc5_.phase == §&0§.§8!u§ || _loc5_.phase == §&0§.§%d§)
               {
                  _loc5_.§#!'§(§&0§.§null §);
               }
            }
            while(this.§^W§.length > 0 && §^a§.indexOf(this.§^W§[this.§^W§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§^W§.pop())[0] as int;
               if((_loc4_ = this.§"!J§(_loc3_)) && _loc4_.phase == §&0§.HOVER && _loc4_.target)
               {
                  §3o§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§&!S§.apply(this,_loc7_);
               §^a§.push(_loc3_);
            }
            for each(_loc6_ in §3o§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§%!k§,this.§&L§,this.§!!M§,this.§5!5§));
               }
            }
            for each(_loc3_ in §^a§)
            {
               if((_loc4_ = this.§"!J§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§%!k§,this.§&L§,this.§!!M§,this.§5!5§));
               }
            }
            _loc2_ = this.§&L§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&L§[_loc2_].phase == §&0§.§5!C§)
               {
                  this.§&L§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§ !p§ += 0.00001;
         }
      }
      
      public function §+!Y§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§^W§.unshift(arguments);
         if(this.§5!5§ && this.§;X§ && param1 == 0)
         {
            this.§[&§.§'%§(param3,param4,this.§!!M§);
            this.§^W§.unshift([1,param2,this.§[&§.§05§,this.§[&§.§-!C§]);
         }
      }
      
      private function §&!S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§!v§;
         if((_loc6_ = this.§"!J§(param1)) == null)
         {
            _loc6_ = new §!v§(param1,param3,param4,param2,null);
            this.§2>§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§#!'§(param2);
         _loc6_.§-"+§(this.§#!C§ + this.§ !p§);
         if(param2 == §&0§.HOVER || param2 == §&0§.§8!u§)
         {
            _loc6_.§2h§(this.§'!k§.hitTest(_loc5_,true));
         }
         if(param2 == §&0§.§8!u§)
         {
            this.§<v§(_loc6_);
         }
      }
      
      private function §#!b§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§!v§ = null;
         var _loc4_:§!v§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§5!5§;
            this.§5!5§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§;X§ && _loc2_ != this.§5!5§)
            {
               this.§[&§.visible = this.§5!5§;
               this.§[&§.§!L§(this.§'!k§.stageWidth / 2,this.§'!k§.stageHeight / 2);
               _loc3_ = this.§"!J§(0);
               _loc4_ = this.§"!J§(1);
               if(_loc3_)
               {
                  this.§[&§.§'%§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §&0§.§5!C§)
               {
                  this.§^W§.unshift([1,§&0§.§5!C§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§5!5§ && _loc3_)
               {
                  if(_loc3_.phase == §&0§.§8!u§ || _loc3_.phase == §&0§.§%d§)
                  {
                     this.§^W§.unshift([1,§&0§.§8!u§,this.§[&§.§05§,this.§[&§.§-!C§]);
                  }
                  else
                  {
                     this.§^W§.unshift([1,§&0§.HOVER,this.§[&§.§05§,this.§[&§.§-!C§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!!M§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §<v§(param1:§!v§) : void
      {
         var _loc4_:§!v§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§!v§ = null;
         var _loc3_:Number = §[!w§ * §[!w§;
         for each(_loc4_ in this.§&!-§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§?!X§(_loc2_.§ !7§ + 1);
            this.§&!-§.splice(this.§&!-§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§?!X§(1);
         }
         this.§&!-§.push(param1.clone());
      }
      
      private function §2>§(param1:§!v§) : void
      {
         var _loc2_:int = this.§&L§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§&L§[_loc2_].id == param1.id)
            {
               this.§&L§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&L§.push(param1);
      }
      
      private function §"!J§(param1:int) : §!v§
      {
         var _loc2_:§!v§ = null;
         for each(_loc2_ in this.§&L§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §;X§() : Boolean
      {
         return this.§[&§ != null;
      }
      
      public function set §;X§(param1:Boolean) : void
      {
         if(this.§;X§ == param1)
         {
            return;
         }
      }
   }
}
