package §68§
{
   import §&V§.§!q§;
   import §^6§.§;l§;
   import flash.display.MovieClip;
   
   public class §&k§ extends §`?§
   {
       
      
      public var §++§:int;
      
      public var §-n§:int;
      
      public var §4E§:int;
      
      public var §71§:int;
      
      public var §["§:Number;
      
      public var §2!]§:Number;
      
      public var §92§:Number;
      
      public var §2!+§:Number;
      
      public var §6T§:Number;
      
      public function §&k§(param1:XML, param2:§`?§, param3:§;l§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §09§ = true;
      }
      
      public function §80§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§4E§ = param6;
         this.§71§ = param1 * this.§4E§;
         this.§6T§ = param7;
         this.§92§ = param2;
         this.§2!+§ = param3;
         this.§["§ = param4;
         this.§2!]§ = param5;
         if(false)
         {
            this.§-n§ = Math.max(1,Math.ceil(§+z§.length / this.§71§));
         }
         else
         {
            this.§-n§ = 1;
            if(§+z§.length > this.§71§)
            {
               this.§-n§ += Math.ceil((§+z§.length - this.§71§) / (this.§4E§ * this.§6T§));
            }
         }
         this.§''§(0);
      }
      
      public function §''§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§-n§)
         {
            param1 = this.§-n§ - 1;
         }
         this.§++§ = param1;
         var _loc2_:int = this.§++§ * this.§6T§ * this.§4E§;
         var _loc3_:int = _loc2_ + this.§71§;
         var _loc4_:int = 0;
         while(_loc4_ < §+z§.length)
         {
            (§+z§[_loc4_] as §!q§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§92§ - this.§++§ * this.§["§;
         y = this.§2!+§ - this.§++§ * this.§2!]§;
      }
   }
}
