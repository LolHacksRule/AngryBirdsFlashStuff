package §3"#§
{
   public class §#!w§
   {
      
      private static const §'d§:Number = 1;
       
      
      private var §`"%§:Number = 1.0;
      
      private var §&!w§:Number = 0.0;
      
      private var §4!b§:Number = 0.0;
      
      private var §]h§:Number = 0.0;
      
      private var §8_§:Number = 0.0;
      
      private var §@!l§:Number = 1.0;
      
      public function §#!w§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         super();
         this.§`"%§ = param4;
         this.§&!w§ = param2;
         this.§4!b§ = param1;
         this.§]h§ = param3;
         this.update(0);
      }
      
      public function get speed() : Number
      {
         return this.§@!l§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         this.§8_§ += param1;
         if(this.§8_§ < this.§4!b§)
         {
            this.§@!l§ = §'d§ + (this.§`"%§ - §'d§) * this.§8_§ / this.§4!b§;
         }
         else if(this.§8_§ < this.§4!b§ + this.§&!w§)
         {
            this.§@!l§ = this.§`"%§;
         }
         else
         {
            if(this.§8_§ >= this.§4!b§ + this.§&!w§ + this.§]h§)
            {
               this.§@!l§ = §'d§;
               return false;
            }
            _loc2_ = this.§8_§ - (this.§4!b§ + this.§&!w§);
            this.§@!l§ = this.§`"%§ + (§'d§ - this.§`"%§) * _loc2_ / this.§]h§;
         }
         return true;
      }
   }
}
