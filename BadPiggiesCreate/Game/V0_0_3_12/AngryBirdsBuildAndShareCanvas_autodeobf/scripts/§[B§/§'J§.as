package §[B§
{
   import §@r§.§3!+§;
   
   public class §'J§
   {
       
      
      public var §!!Q§:Number = 0;
      
      public var §]!J§:Number = 0;
      
      public var §=&§:Number;
      
      public var §1!+§:Number;
      
      public function §'J§(param1:Number, param2:Number)
      {
         this.§=&§ = §5"1§.§>!f§;
         this.§1!+§ = §5"1§.§!!f§;
         super();
         this.§=&§ = param1;
         this.§1!+§ = param2;
         this.§!!Q§ = 0;
         this.§]!J§ = 0;
      }
      
      public function §20§(param1:§3!+§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§!!Q§ < §5"1§.§+J§)
         {
            this.§!!Q§ += param2;
            this.§]!J§ += this.§=&§;
            _loc3_ = param2 / §5"1§.§"f§ * this.§1!+§ * Math.sin(Math.PI / 4 + this.§]!J§ * 2 * Math.PI);
            _loc4_ = param2 / §5"1§.§"f§ * this.§1!+§ * Math.sin(this.§]!J§ * 2.1 * Math.PI);
            this.§1!+§ -= param2 * §5"1§.§!!f§ / §5"1§.§+J§;
            this.§=&§ -= param2 * §5"1§.§>!f§ / §5"1§.§+J§;
            param1.§04§(_loc3_,_loc4_);
            param1.§-!n§();
            return true;
         }
         return false;
      }
   }
}
