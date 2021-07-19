package §'4§
{
   import §9!w§.§9!,§;
   
   public class §>"A§
   {
      
      protected static const §#!W§:Number = 1000 / 60;
       
      
      protected var §`A§:Number = 0;
      
      protected var §'>§:Number = 0;
      
      protected var §4!_§:Number = 0;
      
      protected var §;"$§:Number = 0;
      
      protected var §%"8§:Number = 0;
      
      protected var §3"F§:Number = 0;
      
      protected var §+!l§:Number = 0;
      
      public function §>"A§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§4!_§ = param1;
         this.§;"$§ = param2;
         this.§3"F§ = param1;
         this.§+!l§ = param2;
         this.§`A§ = 0;
         this.§'>§ = 0;
         this.§%"8§ = param3;
      }
      
      public function §`!r§(param1:§9!,§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`A§ < this.§%"8§)
         {
            this.§`A§ += param2;
            this.§'>§ += this.§4!_§;
            _loc3_ = param2 / §#!W§ * this.§;"$§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§'>§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§;"$§ -= param2 / this.§%"8§ * this.§+!l§;
            this.§4!_§ -= param2 / this.§%"8§ * this.§3"F§;
            param1.§7H§(_loc4_,_loc5_);
            param1.§+"-§();
            return true;
         }
         return false;
      }
   }
}
