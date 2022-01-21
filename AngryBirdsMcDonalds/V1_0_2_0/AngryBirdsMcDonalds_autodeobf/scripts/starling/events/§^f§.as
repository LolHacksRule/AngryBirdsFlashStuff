package starling.events
{
   import §5x§.Stage;
   import flash.geom.Point;
   
   public class §^f§
   {
      
      private static const §-!0§:Number = 0.3;
      
      private static const §#G§:Number = 25;
      
      private static var §7u§:Vector.<int> = new Vector.<int>(0);
      
      private static var §7B§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §#Z§:Stage;
      
      private var §^! §:Number;
      
      private var §;^§:Number;
      
      private var §,!C§:§=! §;
      
      private var §&v§:Vector.<§implements§>;
      
      private var §64§:Vector.<Array>;
      
      private var §@h§:Vector.<§implements§>;
      
      private var §%y§:Boolean = false;
      
      private var §4m§:Boolean = false;
      
      public function §^f§(param1:Stage)
      {
         super();
         this.§#Z§ = param1;
         this.§;^§ = 0;
         this.§^! § = 0;
         this.§&v§ = new Vector.<§implements§>(0);
         this.§64§ = new Vector.<Array>(0);
         this.§@h§ = new Vector.<§implements§>(0);
         this.§#Z§.addEventListener(KeyboardEvent.KEY_DOWN,this.§;j§);
         this.§#Z§.addEventListener(KeyboardEvent.KEY_UP,this.§;j§);
      }
      
      public function dispose() : void
      {
         this.§#Z§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§;j§);
         this.§#Z§.removeEventListener(KeyboardEvent.KEY_UP,this.§;j§);
         if(this.§,!C§)
         {
            this.§,!C§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§implements§ = null;
         var _loc5_:§implements§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§^! § += param1;
         this.§;^§ = 0;
         if(this.§@h§.length > 0)
         {
            _loc2_ = this.§@h§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§^! § - this.§@h§[_loc2_].timestamp > §-!0§)
               {
                  this.§@h§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§64§.length > 0)
         {
            §7u§.length = §7B§.length = 0;
            for each(_loc5_ in this.§&v§)
            {
               if(_loc5_.phase == §?I§.§1!^§ || _loc5_.phase == §?I§.§'i§)
               {
                  _loc5_.§6!%§(§?I§.§%D§);
               }
            }
            while(this.§64§.length > 0 && §7u§.indexOf(this.§64§[this.§64§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§64§.pop())[0] as int;
               if((_loc4_ = this.§5D§(_loc3_)) && _loc4_.phase == §?I§.§#!N§ && _loc4_.target)
               {
                  §7B§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§ !=§.apply(this,_loc7_);
               §7u§.push(_loc3_);
            }
            for each(_loc6_ in §7B§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§8i§,this.§&v§,this.§%y§,this.§4m§));
               }
            }
            for each(_loc3_ in §7u§)
            {
               if((_loc4_ = this.§5D§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§8i§,this.§&v§,this.§%y§,this.§4m§));
               }
            }
            _loc2_ = this.§&v§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§&v§[_loc2_].phase == §?I§.§%!G§)
               {
                  this.§&v§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§;^§ += 0.00001;
         }
      }
      
      public function §>^§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§64§.unshift(arguments);
         if(this.§4m§ && this.simulateMultitouch && param1 == 0)
         {
            this.§,!C§.§1n§(param3,param4,this.§%y§);
            this.§64§.unshift([1,param2,this.§,!C§.§[!D§,this.§,!C§.§9§]);
         }
      }
      
      private function § !=§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§implements§;
         if((_loc6_ = this.§5D§(param1)) == null)
         {
            _loc6_ = new §implements§(param1,param3,param4,param2,null);
            this.§4B§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§6!%§(param2);
         _loc6_.§7A§(this.§^! § + this.§;^§);
         if(param2 == §?I§.§#!N§ || param2 == §?I§.§1!^§)
         {
            _loc6_.§!!l§(this.§#Z§.hitTest(_loc5_,true));
         }
         if(param2 == §?I§.§1!^§)
         {
            this.§%^§(_loc6_);
         }
      }
      
      private function §;j§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§implements§ = null;
         var _loc4_:§implements§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§4m§;
            this.§4m§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.§4m§)
            {
               this.§,!C§.visible = this.§4m§;
               this.§,!C§.§`<§(this.§#Z§.stageWidth / 2,this.§#Z§.stageHeight / 2);
               _loc3_ = this.§5D§(0);
               _loc4_ = this.§5D§(1);
               if(_loc3_)
               {
                  this.§,!C§.§1n§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §?I§.§%!G§)
               {
                  this.§64§.unshift([1,§?I§.§%!G§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§4m§ && _loc3_)
               {
                  if(_loc3_.phase == §?I§.§1!^§ || _loc3_.phase == §?I§.§'i§)
                  {
                     this.§64§.unshift([1,§?I§.§1!^§,this.§,!C§.§[!D§,this.§,!C§.§9§]);
                  }
                  else
                  {
                     this.§64§.unshift([1,§?I§.§#!N§,this.§,!C§.§[!D§,this.§,!C§.§9§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§%y§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §%^§(param1:§implements§) : void
      {
         var _loc4_:§implements§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§implements§ = null;
         var _loc3_:Number = §#G§ * §#G§;
         for each(_loc4_ in this.§@h§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§7!@§(_loc2_.§"@§ + 1);
            this.§@h§.splice(this.§@h§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§7!@§(1);
         }
         this.§@h§.push(param1.clone());
      }
      
      private function §4B§(param1:§implements§) : void
      {
         var _loc2_:int = this.§&v§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§&v§[_loc2_].id == param1.id)
            {
               this.§&v§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&v§.push(param1);
      }
      
      private function §5D§(param1:int) : §implements§
      {
         var _loc2_:§implements§ = null;
         for each(_loc2_ in this.§&v§)
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
         return this.§,!C§ != null;
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
