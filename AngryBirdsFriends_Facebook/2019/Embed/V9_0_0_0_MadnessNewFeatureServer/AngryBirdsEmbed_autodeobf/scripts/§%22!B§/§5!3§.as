package §"!B§
{
   import §@a§.§8H§;
   import §]!=§.§]!"§;
   import flash.display.MovieClip;
   
   public class §5!3§ extends §58§
   {
       
      
      public var §5J§:int;
      
      public var §@!3§:int;
      
      public var § case§:int;
      
      public var §5l§:int;
      
      public var §?r§:Number;
      
      public var §1Z§:Number;
      
      public var §+!-§:Number;
      
      public var §]+§:Number;
      
      public var §8"§:Number;
      
      public function §5!3§(param1:XML, param2:§58§, param3:§8H§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §&!I§ = true;
      }
      
      public function §-+§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§ case§ = param6;
         this.§5l§ = param1 * this.§ case§;
         this.§8"§ = param7;
         this.§+!-§ = param2;
         this.§]+§ = param3;
         this.§?r§ = param4;
         this.§1Z§ = param5;
         if(false)
         {
            this.§@!3§ = Math.max(1,Math.ceil(§ else§.length / this.§5l§));
         }
         else
         {
            this.§@!3§ = 1;
            if(§ else§.length > this.§5l§)
            {
               this.§@!3§ += Math.ceil((§ else§.length - this.§5l§) / (this.§ case§ * this.§8"§));
            }
         }
         this.§6k§(0);
      }
      
      public function §6k§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§@!3§)
         {
            param1 = this.§@!3§ - 1;
         }
         this.§5J§ = param1;
         var _loc2_:int = this.§5J§ * this.§8"§ * this.§ case§;
         var _loc3_:int = _loc2_ + this.§5l§;
         var _loc4_:int = 0;
         while(_loc4_ < § else§.length)
         {
            (§ else§[_loc4_] as §]!"§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§+!-§ - this.§5J§ * this.§?r§;
         y = this.§]+§ - this.§5J§ * this.§1Z§;
      }
   }
}
