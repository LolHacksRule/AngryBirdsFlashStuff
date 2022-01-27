package §[!1§
{
   import §+f§.§4!8§;
   import §+f§.§@d§;
   
   public class §-!0§ extends §,!'§
   {
       
      
      private var §,!J§:§@d§;
      
      private var §;?§:§4!8§;
      
      public function §-!0§(param1:§@d§, param2:§4!8§)
      {
         this.§,!J§ = param1;
         this.§;?§ = param2;
         super(param1,param2);
      }
      
      override public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § J§
      {
         var _loc16_:§ J§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§%F§;
         if(_loc17_ = §18§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      override protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § J§
      {
         return new §#`§(this.§,!J§,this.§;?§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
   }
}
