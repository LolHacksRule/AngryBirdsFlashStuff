package §+&§
{
   import §!!X§.§&!E§;
   
   public class §^J§
   {
       
      
      public var §^!=§:Number = 0;
      
      public var §]Y§:Number = 0;
      
      public var §5l§:Number;
      
      public var §4!B§:Number;
      
      public function §^J§(param1:Number, param2:Number)
      {
         this.§5l§ = §3D§.§;,§;
         this.§4!B§ = §3D§.§0k§;
         super();
         this.§5l§ = param1;
         this.§4!B§ = param2;
         this.§^!=§ = 0;
         this.§]Y§ = 0;
      }
      
      public function §6!a§(param1:§&!E§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§^!=§ < §3D§.§6!f§)
         {
            this.§^!=§ += param2;
            this.§]Y§ += this.§5l§;
            _loc3_ = param2 / §3D§.§3!c§ * this.§4!B§ * Math.sin(Math.PI / 4 + this.§]Y§ * 2 * Math.PI);
            _loc4_ = param2 / §3D§.§3!c§ * this.§4!B§ * Math.sin(this.§]Y§ * 2.1 * Math.PI);
            this.§4!B§ -= param2 * §3D§.§0k§ / §3D§.§6!f§;
            this.§5l§ -= param2 * §3D§.§;,§ / §3D§.§6!f§;
            param1.§7G§(_loc3_,_loc4_);
            param1.§>!n§();
            return true;
         }
         return false;
      }
   }
}
