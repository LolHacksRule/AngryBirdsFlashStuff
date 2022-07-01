package §@V§
{
   import §#!I§.§0k§;
   
   public class §<!I§
   {
      
      protected static const §%q§:Number = 1000 / 60;
       
      
      protected var §%O§:Number = 0;
      
      protected var §1!l§:Number = 0;
      
      protected var §"r§:Number = 0;
      
      protected var §<!c§:Number = 0;
      
      protected var § h§:Number = 0;
      
      protected var § !q§:Number = 0;
      
      protected var § 1§:Number = 0;
      
      public function §<!I§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§"r§ = param1;
         this.§<!c§ = param2;
         this.§ !q§ = param1;
         this.§ 1§ = param2;
         this.§%O§ = 0;
         this.§1!l§ = 0;
         this.§ h§ = param3;
      }
      
      public function § !_§(param1:§0k§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§%O§ < this.§ h§)
         {
            this.§%O§ += param2;
            this.§1!l§ += this.§"r§;
            _loc3_ = param2 / §%q§ * this.§<!c§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§1!l§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§<!c§ -= param2 / this.§ h§ * this.§ 1§;
            this.§"r§ -= param2 / this.§ h§ * this.§ !q§;
            param1.§9;§(_loc4_,_loc5_);
            param1.§?"0§();
            return true;
         }
         return false;
      }
   }
}
