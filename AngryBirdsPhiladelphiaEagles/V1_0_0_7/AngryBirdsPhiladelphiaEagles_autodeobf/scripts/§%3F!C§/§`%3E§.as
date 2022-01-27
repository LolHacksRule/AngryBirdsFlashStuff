package §?!C§
{
   public class §`>§ extends §!M§ implements §7!3§
   {
       
      
      private var §7!6§:Number;
      
      private var §?!2§:Boolean;
      
      private var §0!,§:Boolean;
      
      private var §@$§:String;
      
      private var §<#§:Object;
      
      private var §?!B§:Object;
      
      private var §>!2§:Object;
      
      public function §`>§(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         super();
         if(param4 <= 0)
         {
            param4 = 0;
         }
         this.§7!6§ = param4 * 1000;
         this.§@$§ = param5;
         §!p§ = 0;
         this.§0!,§ = true;
         this.§?!2§ = false;
         param2 = this.§?<§(param2,param1);
         if(param3 != null)
         {
            param3 = this.§?<§(param3,param2);
            this.§;!M§(param2,param3);
         }
         else
         {
            this.§;!M§(param2,param1);
         }
         this.§<#§ = param1;
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§?!2§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§0!,§;
      }
      
      public function dispose() : void
      {
         this.stop();
         this.§<#§ = null;
         this.§>!2§ = null;
         this.§?!B§ = null;
      }
      
      public function §"U§() : void
      {
         §!p§ = -§#!N§;
         this.§?!2§ = false;
      }
      
      private function §?<§(param1:Object, param2:Object) : Object
      {
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         for(_loc4_ in param1)
         {
            if(param2[_loc4_] != null && param1[_loc4_] is Number && param2[_loc4_] is Number)
            {
               _loc3_[_loc4_] = param1[_loc4_];
            }
         }
         return _loc3_;
      }
      
      private function §;!M§(param1:Object, param2:Object) : void
      {
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
            _loc4_[_loc5_] = param2[_loc5_];
         }
         this.§>!2§ = _loc3_;
         this.§?!B§ = _loc4_;
      }
      
      public function stop() : void
      {
         if(!this.§?!2§)
         {
            this.§?!2§ = true;
            §&m§ = null;
            §!p§ = this.§7!6§;
         }
      }
      
      public function § O§() : void
      {
         if(!this.§?!2§)
         {
            this.§?!2§ = true;
            §!p§ = this.§7!6§;
            this.§<@§();
         }
      }
      
      public function pause() : void
      {
         this.§0!,§ = true;
      }
      
      public function play() : void
      {
         this.§0!,§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§0!,§ || this.isCompleted)
         {
            return;
         }
         §!p§ += param1;
         if(§!p§ >= this.§7!6§)
         {
            if(§ !0§)
            {
               §!p§ = this.§7!6§;
               this.§?!2§ = true;
            }
            else
            {
               §!p§ = 0;
            }
         }
         this.§<@§();
         this.§4-§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §<@§() : void
      {
         var timeValue:Number = NaN;
         var attribute:* = undefined;
         try
         {
            timeValue = this.§'!G§();
            for(attribute in this.§>!2§)
            {
               this.§<#§[attribute] = this.§?!B§[attribute] + this.§>!2§[attribute] * timeValue;
            }
         }
         catch(e:Error)
         {
            §?!2§ = true;
            if(!§@E§)
            {
               throw e;
            }
         }
      }
      
      private function §4-§() : void
      {
         if(this.isCompleted && §&m§ != null)
         {
            try
            {
               §&m§();
               §&m§ = null;
            }
            catch(e:Error)
            {
               §&m§ = null;
               if(!§@E§)
               {
                  throw e;
               }
            }
         }
      }
      
      private function §'!G§() : Number
      {
         if(this.§7!6§ <= 0)
         {
            return 1;
         }
         var _loc1_:Number = Math.max(0,§!p§);
         _loc1_ = Math.min(_loc1_,this.§7!6§);
         var _loc2_:Number = _loc1_ / this.§7!6§;
         switch(this.§@$§)
         {
            case §[!-§.§'!P§:
               break;
            case §[!-§.§%!D§:
            case §[!-§.§>^§:
               if(this.§@$§ == §[!-§.§>^§)
               {
                  _loc2_ = 1 - _loc2_;
               }
               if(_loc2_ < 1 / 2.75)
               {
                  return 7.5625 * _loc2_ * _loc2_;
               }
               if(_loc2_ < 2 / 2.75)
               {
                  return 7.5625 * (_loc2_ = _loc2_ - 1.5 / 2.75) * _loc2_ + 0.75;
               }
               if(_loc2_ < 2.5 / 2.75)
               {
                  return 7.5625 * (_loc2_ = _loc2_ - 2.25 / 2.75) * _loc2_ + 0.9375;
               }
               return 7.5625 * (_loc2_ = _loc2_ - 2.625 / 2.75) * _loc2_ + 0.984375;
               break;
            case §[!-§.§>X§:
               return -_loc2_ * (_loc2_ - 2);
            case §[!-§.§3d§:
               return _loc2_ * _loc2_;
            case §[!-§.§0!§:
               return Math.sin(_loc2_ * (Math.PI / 2));
            case §[!-§.§3N§:
               return 1 - Math.cos(_loc2_ * (Math.PI / 2));
            case §[!-§.§9!6§:
               _loc2_--;
               return Math.sqrt(1 - _loc2_ * _loc2_);
            case §[!-§.§-5§:
               return 1 - Math.sqrt(1 - _loc2_ * _loc2_);
         }
         return _loc2_;
      }
   }
}
