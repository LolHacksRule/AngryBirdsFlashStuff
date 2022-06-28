package §6A§
{
   import §2k§.§`n§;
   
   public class §5!F§
   {
       
      
      public var §5V§:Number = 0;
      
      public var §`[§:Number = 0;
      
      public var §<!C§:Number;
      
      public var §9!M§:Number;
      
      public function §5!F§(param1:Number, param2:Number)
      {
         this.§<!C§ = §#!E§.§'f§;
         this.§9!M§ = §#!E§.§'G§;
         super();
         this.§<!C§ = param1;
         this.§9!M§ = param2;
         this.§5V§ = 0;
         this.§`[§ = 0;
      }
      
      public function §0L§(param1:§`n§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§5V§ < §#!E§.§3!9§)
         {
            this.§5V§ += param2;
            this.§`[§ += this.§<!C§;
            _loc3_ = param2 / §#!E§.§5!$§ * this.§9!M§ * Math.sin(Math.PI / 4 + this.§`[§ * 2 * Math.PI);
            _loc4_ = param2 / §#!E§.§5!$§ * this.§9!M§ * Math.sin(this.§`[§ * 2.1 * Math.PI);
            this.§9!M§ -= param2 * §#!E§.§'G§ / §#!E§.§3!9§;
            this.§<!C§ -= param2 * §#!E§.§'f§ / §#!E§.§3!9§;
            param1.§,!%§(_loc3_,_loc4_);
            param1.§5!K§();
            return true;
         }
         return false;
      }
   }
}
