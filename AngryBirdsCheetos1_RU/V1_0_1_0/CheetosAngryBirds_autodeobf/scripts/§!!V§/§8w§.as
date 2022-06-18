package §!!V§
{
   import § t§.§?U§;
   
   public class §8w§
   {
       
      
      public var §'!W§:Number = 0;
      
      public var §,S§:Number = 0;
      
      public var §1!5§:Number;
      
      public var § v§:Number;
      
      public function §8w§(param1:Number, param2:Number)
      {
         this.§1!5§ = §[K§.§0J§;
         this.§ v§ = §[K§.§>!<§;
         super();
         this.§1!5§ = param1;
         this.§ v§ = param2;
         this.§'!W§ = 0;
         this.§,S§ = 0;
      }
      
      public function §2q§(param1:§?U§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§'!W§ < §[K§.§&!;§)
         {
            this.§'!W§ += param2;
            this.§,S§ += this.§1!5§;
            _loc3_ = param2 / §[K§.§ !>§ * this.§ v§ * Math.sin(Math.PI / 4 + this.§,S§ * 2 * Math.PI);
            _loc4_ = param2 / §[K§.§ !>§ * this.§ v§ * Math.sin(this.§,S§ * 2.1 * Math.PI);
            this.§ v§ -= param2 * §[K§.§>!<§ / §[K§.§&!;§;
            this.§1!5§ -= param2 * §[K§.§0J§ / §[K§.§&!;§;
            param1.§4M§(_loc3_,_loc4_);
            param1.§5G§();
            return true;
         }
         return false;
      }
   }
}
