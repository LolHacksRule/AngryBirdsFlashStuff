package §!E§
{
   import §%!G§.§ !G§;
   import §2!$§.§=!&§;
   import flash.display.MovieClip;
   
   public class §%G§ extends §-!%§
   {
       
      
      public var §#c§:int;
      
      public var §>!&§:int;
      
      public var §2!M§:int;
      
      public var §6"§:int;
      
      public var §@!J§:Number;
      
      public var § P§:Number;
      
      public var §=j§:Number;
      
      public var §2V§:Number;
      
      public var §;!<§:Number;
      
      public function §%G§(param1:XML, param2:§-!%§, param3:§ !G§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §]!5§ = true;
      }
      
      public function §@!3§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§2!M§ = param6;
         this.§6"§ = param1 * this.§2!M§;
         this.§;!<§ = param7;
         this.§=j§ = param2;
         this.§2V§ = param3;
         this.§@!J§ = param4;
         this.§ P§ = param5;
         if(false)
         {
            this.§>!&§ = Math.max(1,Math.ceil(§ 7§.length / this.§6"§));
         }
         else
         {
            this.§>!&§ = 1;
            if(§ 7§.length > this.§6"§)
            {
               this.§>!&§ += Math.ceil((§ 7§.length - this.§6"§) / (this.§2!M§ * this.§;!<§));
            }
         }
         this.§4!#§(0);
      }
      
      public function §4!#§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§>!&§)
         {
            param1 = this.§>!&§ - 1;
         }
         this.§#c§ = param1;
         var _loc2_:int = this.§#c§ * this.§;!<§ * this.§2!M§;
         var _loc3_:int = _loc2_ + this.§6"§;
         var _loc4_:int = 0;
         while(_loc4_ < § 7§.length)
         {
            (§ 7§[_loc4_] as §=!&§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§=j§ - this.§#c§ * this.§@!J§;
         y = this.§2V§ - this.§#c§ * this.§ P§;
      }
   }
}
