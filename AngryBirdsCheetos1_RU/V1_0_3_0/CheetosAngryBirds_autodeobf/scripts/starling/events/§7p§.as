package starling.events
{
   import §9!a§.Stage;
   import flash.geom.Point;
   
   public class §7p§
   {
      
      private static const §-R§:Number = 0.3;
      
      private static const §=!X§:Number = 25;
      
      private static var §6!X§:Vector.<int> = new Vector.<int>(0);
      
      private static var §#L§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §@'§:Stage;
      
      private var §!G§:Number;
      
      private var §]!1§:Number;
      
      private var §@!R§:§>f§;
      
      private var §7!a§:Vector.<§31§>;
      
      private var §%g§:Vector.<Array>;
      
      private var §&o§:Vector.<§31§>;
      
      private var §"&§:Boolean = false;
      
      private var §'!0§:Boolean = false;
      
      public function §7p§(param1:Stage)
      {
         super();
         this.§@'§ = param1;
         this.§]!1§ = 0;
         this.§!G§ = 0;
         this.§7!a§ = new Vector.<§31§>(0);
         this.§%g§ = new Vector.<Array>(0);
         this.§&o§ = new Vector.<§31§>(0);
         this.§@'§.addEventListener(KeyboardEvent.KEY_DOWN,this.§'I§);
         this.§@'§.addEventListener(KeyboardEvent.KEY_UP,this.§'I§);
      }
      
      public function dispose() : void
      {
         this.§@'§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'I§);
         this.§@'§.removeEventListener(KeyboardEvent.KEY_UP,this.§'I§);
         if(this.§@!R§)
         {
            this.§@!R§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§31§ = null;
         var _loc5_:§31§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§!G§ += param1;
         this.§]!1§ = 0;
         if(this.§&o§.length > 0)
         {
            _loc2_ = this.§&o§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§!G§ - this.§&o§[_loc2_].timestamp > §-R§)
               {
                  this.§&o§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§%g§.length > 0)
         {
            §6!X§.length = §#L§.length = 0;
            for each(_loc5_ in this.§7!a§)
            {
               if(_loc5_.phase == §'S§.§=n§ || _loc5_.phase == §'S§.§@!_§)
               {
                  _loc5_.§+i§(§'S§.§'!^§);
               }
            }
            while(this.§%g§.length > 0 && §6!X§.indexOf(this.§%g§[this.§%g§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§%g§.pop())[0] as int;
               if((_loc4_ = this.§3u§(_loc3_)) && _loc4_.phase == §'S§.§>8§ && _loc4_.target)
               {
                  §#L§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§1e§.apply(this,_loc7_);
               §6!X§.push(_loc3_);
            }
            for each(_loc6_ in §#L§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§<d§,this.§7!a§,this.§"&§,this.§'!0§));
               }
            }
            for each(_loc3_ in §6!X§)
            {
               if((_loc4_ = this.§3u§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§<d§,this.§7!a§,this.§"&§,this.§'!0§));
               }
            }
            _loc2_ = this.§7!a§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§7!a§[_loc2_].phase == §'S§.§"3§)
               {
                  this.§7!a§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§]!1§ += 0.00001;
         }
      }
      
      public function §&!8§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§%g§.unshift(arguments);
         if(this.§'!0§ && this.§9L§ && param1 == 0)
         {
            this.§@!R§.§;!$§(param3,param4,this.§"&§);
            this.§%g§.unshift([1,param2,this.§@!R§.§"W§,this.§@!R§.§!!H§]);
         }
      }
      
      private function §1e§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§31§;
         if((_loc6_ = this.§3u§(param1)) == null)
         {
            _loc6_ = new §31§(param1,param3,param4,param2,null);
            this.§-!Z§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§+i§(param2);
         _loc6_.§catch§(this.§!G§ + this.§]!1§);
         if(param2 == §'S§.§>8§ || param2 == §'S§.§=n§)
         {
            _loc6_.§+J§(this.§@'§.hitTest(_loc5_,true));
         }
         if(param2 == §'S§.§=n§)
         {
            this.§8Z§(_loc6_);
         }
      }
      
      private function §'I§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§31§ = null;
         var _loc4_:§31§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§'!0§;
            this.§'!0§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§9L§ && _loc2_ != this.§'!0§)
            {
               this.§@!R§.visible = this.§'!0§;
               this.§@!R§.§#r§(this.§@'§.stageWidth / 2,this.§@'§.stageHeight / 2);
               _loc3_ = this.§3u§(0);
               _loc4_ = this.§3u§(1);
               if(_loc3_)
               {
                  this.§@!R§.§;!$§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §'S§.§"3§)
               {
                  this.§%g§.unshift([1,§'S§.§"3§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§'!0§ && _loc3_)
               {
                  if(_loc3_.phase == §'S§.§=n§ || _loc3_.phase == §'S§.§@!_§)
                  {
                     this.§%g§.unshift([1,§'S§.§=n§,this.§@!R§.§"W§,this.§@!R§.§!!H§]);
                  }
                  else
                  {
                     this.§%g§.unshift([1,§'S§.§>8§,this.§@!R§.§"W§,this.§@!R§.§!!H§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§"&§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §8Z§(param1:§31§) : void
      {
         var _loc4_:§31§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§31§ = null;
         var _loc3_:Number = §=!X§ * §=!X§;
         for each(_loc4_ in this.§&o§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§!H§(_loc2_.§]!4§ + 1);
            this.§&o§.splice(this.§&o§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§!H§(1);
         }
         this.§&o§.push(param1.clone());
      }
      
      private function §-!Z§(param1:§31§) : void
      {
         var _loc2_:int = this.§7!a§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§7!a§[_loc2_].id == param1.id)
            {
               this.§7!a§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7!a§.push(param1);
      }
      
      private function §3u§(param1:int) : §31§
      {
         var _loc2_:§31§ = null;
         for each(_loc2_ in this.§7!a§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §9L§() : Boolean
      {
         return this.§@!R§ != null;
      }
      
      public function set §9L§(param1:Boolean) : void
      {
         if(this.§9L§ == param1)
         {
            return;
         }
      }
   }
}
