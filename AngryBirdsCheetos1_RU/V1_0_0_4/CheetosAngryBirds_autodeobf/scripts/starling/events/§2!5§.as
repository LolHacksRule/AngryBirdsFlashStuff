package starling.events
{
   import §1!A§.Stage;
   import flash.geom.Point;
   
   public class §2!5§
   {
      
      private static const §7!8§:Number = 0.3;
      
      private static const §-r§:Number = 25;
      
      private static var §!,§:Vector.<int> = new Vector.<int>(0);
      
      private static var §2!R§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §7!'§:Stage;
      
      private var §4![§:Number;
      
      private var §>!Z§:Number;
      
      private var §'v§:§!%§;
      
      private var §^+§:Vector.<§0+§>;
      
      private var §&&§:Vector.<Array>;
      
      private var §?!T§:Vector.<§0+§>;
      
      private var §!C§:Boolean = false;
      
      private var §]z§:Boolean = false;
      
      public function §2!5§(param1:Stage)
      {
         super();
         this.§7!'§ = param1;
         this.§>!Z§ = 0;
         this.§4![§ = 0;
         this.§^+§ = new Vector.<§0+§>(0);
         this.§&&§ = new Vector.<Array>(0);
         this.§?!T§ = new Vector.<§0+§>(0);
         this.§7!'§.addEventListener(KeyboardEvent.KEY_DOWN,this.§5!R§);
         this.§7!'§.addEventListener(KeyboardEvent.KEY_UP,this.§5!R§);
      }
      
      public function dispose() : void
      {
         this.§7!'§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§5!R§);
         this.§7!'§.removeEventListener(KeyboardEvent.KEY_UP,this.§5!R§);
         if(this.§'v§)
         {
            this.§'v§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§0+§ = null;
         var _loc5_:§0+§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§4![§ += param1;
         this.§>!Z§ = 0;
         if(this.§?!T§.length > 0)
         {
            _loc2_ = this.§?!T§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§4![§ - this.§?!T§[_loc2_].timestamp > §7!8§)
               {
                  this.§?!T§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§&&§.length > 0)
         {
            §!,§.length = §2!R§.length = 0;
            for each(_loc5_ in this.§^+§)
            {
               if(_loc5_.phase == §;'§.§"!I§ || _loc5_.phase == §;'§.§;l§)
               {
                  _loc5_.§switch§(§;'§.§3^§);
               }
            }
            while(this.§&&§.length > 0 && §!,§.indexOf(this.§&&§[this.§&&§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§&&§.pop())[0] as int;
               if((_loc4_ = this.§^<§(_loc3_)) && _loc4_.phase == §;'§.§ y§ && _loc4_.target)
               {
                  §2!R§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§-!$§.apply(this,_loc7_);
               §!,§.push(_loc3_);
            }
            for each(_loc6_ in §2!R§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§<!4§,this.§^+§,this.§!C§,this.§]z§));
               }
            }
            for each(_loc3_ in §!,§)
            {
               if((_loc4_ = this.§^<§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§<!4§,this.§^+§,this.§!C§,this.§]z§));
               }
            }
            _loc2_ = this.§^+§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^+§[_loc2_].phase == §;'§.§[U§)
               {
                  this.§^+§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§>!Z§ += 0.00001;
         }
      }
      
      public function §;G§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§&&§.unshift(arguments);
         if(this.§]z§ && this.§+!&§ && param1 == 0)
         {
            this.§'v§.§?;§(param3,param4,this.§!C§);
            this.§&&§.unshift([1,param2,this.§'v§.§%!^§,this.§'v§.§^!0§]);
         }
      }
      
      private function §-!$§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§0+§;
         if((_loc6_ = this.§^<§(param1)) == null)
         {
            _loc6_ = new §0+§(param1,param3,param4,param2,null);
            this.§7k§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§switch§(param2);
         _loc6_.§9!5§(this.§4![§ + this.§>!Z§);
         if(param2 == §;'§.§ y§ || param2 == §;'§.§"!I§)
         {
            _loc6_.§#!-§(this.§7!'§.hitTest(_loc5_,true));
         }
         if(param2 == §;'§.§"!I§)
         {
            this.§<!S§(_loc6_);
         }
      }
      
      private function §5!R§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§0+§ = null;
         var _loc4_:§0+§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§]z§;
            this.§]z§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§+!&§ && _loc2_ != this.§]z§)
            {
               this.§'v§.visible = this.§]z§;
               this.§'v§.§?!-§(this.§7!'§.stageWidth / 2,this.§7!'§.stageHeight / 2);
               _loc3_ = this.§^<§(0);
               _loc4_ = this.§^<§(1);
               if(_loc3_)
               {
                  this.§'v§.§?;§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §;'§.§[U§)
               {
                  this.§&&§.unshift([1,§;'§.§[U§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§]z§ && _loc3_)
               {
                  if(_loc3_.phase == §;'§.§"!I§ || _loc3_.phase == §;'§.§;l§)
                  {
                     this.§&&§.unshift([1,§;'§.§"!I§,this.§'v§.§%!^§,this.§'v§.§^!0§]);
                  }
                  else
                  {
                     this.§&&§.unshift([1,§;'§.§ y§,this.§'v§.§%!^§,this.§'v§.§^!0§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§!C§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §<!S§(param1:§0+§) : void
      {
         var _loc4_:§0+§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§0+§ = null;
         var _loc3_:Number = §-r§ * §-r§;
         for each(_loc4_ in this.§?!T§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§false§(_loc2_.§ !<§ + 1);
            this.§?!T§.splice(this.§?!T§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§false§(1);
         }
         this.§?!T§.push(param1.clone());
      }
      
      private function §7k§(param1:§0+§) : void
      {
         var _loc2_:int = this.§^+§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§^+§[_loc2_].id == param1.id)
            {
               this.§^+§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§^+§.push(param1);
      }
      
      private function §^<§(param1:int) : §0+§
      {
         var _loc2_:§0+§ = null;
         for each(_loc2_ in this.§^+§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §+!&§() : Boolean
      {
         return this.§'v§ != null;
      }
      
      public function set §+!&§(param1:Boolean) : void
      {
         if(this.§+!&§ == param1)
         {
            return;
         }
      }
   }
}
