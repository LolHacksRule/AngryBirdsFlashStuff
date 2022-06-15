package §4!<§
{
   import §!!=§.§"l§;
   
   public class §`!o§
   {
       
      
      public var §#"<§:Number = 0;
      
      public var §?"W§:Number = 0;
      
      public var §2@§:Number;
      
      public var §#-§:Number;
      
      public function §`!o§(param1:Number, param2:Number)
      {
         this.§2@§ = §^!Z§.§%C§;
         this.§#-§ = §^!Z§.§#!J§;
         super();
         this.§2@§ = param1;
         this.§#-§ = param2;
         this.§#"<§ = 0;
         this.§?"W§ = 0;
      }
      
      public function §2r§(param1:§"l§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§#"<§ < §^!Z§.§?!y§)
         {
            this.§#"<§ += param2;
            this.§?"W§ += this.§2@§;
            _loc3_ = param2 / §^!Z§.§9!O§ * this.§#-§ * Math.sin(Math.PI / 4 + this.§?"W§ * 2 * Math.PI);
            _loc4_ = param2 / §^!Z§.§9!O§ * this.§#-§ * Math.sin(this.§?"W§ * 2.1 * Math.PI);
            this.§#-§ -= param2 * §^!Z§.§#!J§ / §^!Z§.§?!y§;
            this.§2@§ -= param2 * §^!Z§.§%C§ / §^!Z§.§?!y§;
            param1.§#W§(_loc3_,_loc4_);
            param1.§"P§();
            return true;
         }
         return false;
      }
   }
}
