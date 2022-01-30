package §]A§
{
   import §-6§.§%5§;
   
   public class §[!f§
   {
      
      protected static const §]!K§:Number = 1000 / 60;
       
      
      protected var §'"4§:Number = 0;
      
      protected var §<!;§:Number = 0;
      
      protected var §3D§:Number = 0;
      
      protected var §>#§:Number = 0;
      
      protected var §4d§:Number = 0;
      
      protected var §>H§:Number = 0;
      
      protected var §3[§:Number = 0;
      
      public function §[!f§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§3D§ = param1;
         this.§>#§ = param2;
         this.§>H§ = param1;
         this.§3[§ = param2;
         this.§'"4§ = 0;
         this.§<!;§ = 0;
         this.§4d§ = param3;
      }
      
      public function §5v§(param1:§%5§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§'"4§ < this.§4d§)
         {
            this.§'"4§ += param2;
            this.§<!;§ += this.§3D§;
            _loc3_ = param2 / §]!K§ * this.§>#§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§<!;§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§>#§ -= param2 / this.§4d§ * this.§3[§;
            this.§3D§ -= param2 / this.§4d§ * this.§>H§;
            param1.§5p§(_loc4_,_loc5_);
            param1.§#!K§();
            return true;
         }
         return false;
      }
   }
}
