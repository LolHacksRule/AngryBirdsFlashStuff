package §!X§
{
   import §?h§.§<I§;
   
   public class §65§
   {
       
      
      public var §+!I§:Number = 0;
      
      public var §4!M§:Number = 0;
      
      public var §-]§:Number;
      
      public var §6p§:Number;
      
      public function §65§(param1:Number, param2:Number)
      {
         this.§-]§ = §!j§.§!2§;
         this.§6p§ = §!j§.§2!0§;
         super();
         this.§-]§ = param1;
         this.§6p§ = param2;
         this.§+!I§ = 0;
         this.§4!M§ = 0;
      }
      
      public function §`X§(param1:§<I§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§+!I§ < §!j§.§1^§)
         {
            this.§+!I§ += param2;
            this.§4!M§ += this.§-]§;
            _loc3_ = param2 / §!j§.§'#§ * this.§6p§ * Math.sin(Math.PI / 4 + this.§4!M§ * 2 * Math.PI);
            _loc4_ = param2 / §!j§.§'#§ * this.§6p§ * Math.sin(this.§4!M§ * 2.1 * Math.PI);
            this.§6p§ -= param2 * §!j§.§2!0§ / §!j§.§1^§;
            this.§-]§ -= param2 * §!j§.§!2§ / §!j§.§1^§;
            param1.§&!G§(_loc3_,_loc4_);
            param1.§?e§();
            return true;
         }
         return false;
      }
   }
}
