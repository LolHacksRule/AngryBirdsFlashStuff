package starling.events
{
   import §^a§.Stage;
   import flash.geom.Point;
   
   public class §1a§
   {
      
      private static const §?!%§:Number = 0.3;
      
      private static const §@X§:Number = 25;
      
      private static var §&P§:Vector.<int> = new Vector.<int>(0);
      
      private static var §%A§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §!H§:Stage;
      
      private var §=M§:Number;
      
      private var §;W§:Number;
      
      private var §0!1§:§"!1§;
      
      private var §&!K§:Vector.<§#v§>;
      
      private var §3r§:Vector.<Array>;
      
      private var §5!,§:Vector.<§#v§>;
      
      private var §#s§:Boolean = false;
      
      private var §,@§:Boolean = false;
      
      public function §1a§(param1:Stage)
      {
         super();
         this.§!H§ = param1;
         this.§;W§ = 0;
         this.§=M§ = 0;
         this.§&!K§ = new Vector.<§#v§>(0);
         this.§3r§ = new Vector.<Array>(0);
         this.§5!,§ = new Vector.<§#v§>(0);
         this.§!H§.addEventListener(KeyboardEvent.KEY_DOWN,this.§'t§);
         this.§!H§.addEventListener(KeyboardEvent.KEY_UP,this.§'t§);
      }
      
      public function dispose() : void
      {
         this.§!H§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§'t§);
         this.§!H§.removeEventListener(KeyboardEvent.KEY_UP,this.§'t§);
         if(this.§0!1§)
         {
            this.§0!1§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§#v§ = null;
         var _loc5_:§#v§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§=M§ += param1;
         this.§;W§ = 0;
         if(this.§5!,§.length > 0)
         {
            _loc2_ = this.§5!,§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§=M§ - this.§5!,§[_loc2_].timestamp > §?!%§)
               {
                  this.§5!,§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§3r§.length > 0)
         {
            §&P§.length = §%A§.length = 0;
            for each(_loc5_ in this.§&!K§)
            {
               if(_loc5_.phase == §?!E§.§^2§ || _loc5_.phase == §?!E§.§-!"§)
               {
                  _loc5_.§"4§(§?!E§.§^%§);
               }
            }
            while(this.§3r§.length > 0 && §&P§.indexOf(this.§3r§[this.§3r§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§3r§.pop())[0] as int;
               if((_loc4_ = this.§&c§(_loc3_)) && _loc4_.phase == §?!E§.§4R§ && _loc4_.target)
               {
                  §%A§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§#A§.apply(this,_loc7_);
               §&P§.push(_loc3_);
            }
            for each(_loc6_ in §%A§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§5a§,this.§&!K§,this.§#s§,this.§,@§));
               }
            }
            for each(_loc3_ in §&P§)
            {
               if((_loc4_ = this.§&c§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§5a§,this.§&!K§,this.§#s§,this.§,@§));
               }
            }
            _loc2_ = this.§&!K§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&!K§[_loc2_].phase == §?!E§.§'s§)
               {
                  this.§&!K§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§;W§ += 0.00001;
         }
      }
      
      public function §4!I§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§3r§.unshift(arguments);
         if(this.§,@§ && this.§^F§ && param1 == 0)
         {
            this.§0!1§.§^!5§(param3,param4,this.§#s§);
            this.§3r§.unshift([1,param2,this.§0!1§.§+=§,this.§0!1§.§4!J§]);
         }
      }
      
      private function §#A§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§#v§;
         if((_loc6_ = this.§&c§(param1)) == null)
         {
            _loc6_ = new §#v§(param1,param3,param4,param2,null);
            this.§9k§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§"4§(param2);
         _loc6_.§?!7§(this.§=M§ + this.§;W§);
         if(param2 == §?!E§.§4R§ || param2 == §?!E§.§^2§)
         {
            _loc6_.§4!E§(this.§!H§.hitTest(_loc5_,true));
         }
         if(param2 == §?!E§.§^2§)
         {
            this.§^I§(_loc6_);
         }
      }
      
      private function §'t§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§#v§ = null;
         var _loc4_:§#v§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§,@§;
            this.§,@§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§^F§ && _loc2_ != this.§,@§)
            {
               this.§0!1§.visible = this.§,@§;
               this.§0!1§.§&!Z§(this.§!H§.stageWidth / 2,this.§!H§.stageHeight / 2);
               _loc3_ = this.§&c§(0);
               _loc4_ = this.§&c§(1);
               if(_loc3_)
               {
                  this.§0!1§.§^!5§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §?!E§.§'s§)
               {
                  this.§3r§.unshift([1,§?!E§.§'s§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§,@§ && _loc3_)
               {
                  if(_loc3_.phase == §?!E§.§^2§ || _loc3_.phase == §?!E§.§-!"§)
                  {
                     this.§3r§.unshift([1,§?!E§.§^2§,this.§0!1§.§+=§,this.§0!1§.§4!J§]);
                  }
                  else
                  {
                     this.§3r§.unshift([1,§?!E§.§4R§,this.§0!1§.§+=§,this.§0!1§.§4!J§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§#s§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §^I§(param1:§#v§) : void
      {
         var _loc4_:§#v§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§#v§ = null;
         var _loc3_:Number = §@X§ * §@X§;
         for each(_loc4_ in this.§5!,§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§5!1§(_loc2_.§=!i§ + 1);
            this.§5!,§.splice(this.§5!,§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§5!1§(1);
         }
         this.§5!,§.push(param1.clone());
      }
      
      private function §9k§(param1:§#v§) : void
      {
         var _loc2_:int = this.§&!K§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§&!K§[_loc2_].id == param1.id)
            {
               this.§&!K§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&!K§.push(param1);
      }
      
      private function §&c§(param1:int) : §#v§
      {
         var _loc2_:§#v§ = null;
         for each(_loc2_ in this.§&!K§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §^F§() : Boolean
      {
         return this.§0!1§ != null;
      }
      
      public function set §^F§(param1:Boolean) : void
      {
         if(this.§^F§ == param1)
         {
            return;
         }
      }
   }
}
