package §%i§
{
   import §1!t§.§!>§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   
   public class §+"6§ extends §0!Y§
   {
       
      
      public var §6"B§:int;
      
      public var §<'§:int;
      
      public var §2!k§:int;
      
      public var §8c§:int;
      
      public var §'o§:Number;
      
      public var §0!R§:Number;
      
      public var § !9§:Number;
      
      public var §3!f§:Number;
      
      public var §+!B§:Number;
      
      public function §+"6§(param1:XML, param2:§0!Y§, param3:§`_§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §'!u§ = true;
      }
      
      public function §2"[§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§2!k§ = param6;
         this.§8c§ = param1 * this.§2!k§;
         this.§+!B§ = param7;
         this.§ !9§ = param2;
         this.§3!f§ = param3;
         this.§'o§ = param4;
         this.§0!R§ = param5;
         if(false)
         {
            this.§<'§ = Math.max(1,Math.ceil(§+?§.length / this.§8c§));
         }
         else
         {
            this.§<'§ = 1;
            if(§+?§.length > this.§8c§)
            {
               this.§<'§ += Math.ceil((§+?§.length - this.§8c§) / (this.§2!k§ * this.§+!B§));
            }
         }
         this.§;!i§(0);
      }
      
      public function §;!i§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§<'§)
         {
            param1 = this.§<'§ - 1;
         }
         this.§6"B§ = param1;
         var _loc2_:int = this.§6"B§ * this.§+!B§ * this.§2!k§;
         var _loc3_:int = _loc2_ + this.§8c§;
         var _loc4_:int = 0;
         while(_loc4_ < §+?§.length)
         {
            (§+?§[_loc4_] as §!>§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§ !9§ - this.§6"B§ * this.§'o§;
         y = this.§3!f§ - this.§6"B§ * this.§0!R§;
      }
   }
}
