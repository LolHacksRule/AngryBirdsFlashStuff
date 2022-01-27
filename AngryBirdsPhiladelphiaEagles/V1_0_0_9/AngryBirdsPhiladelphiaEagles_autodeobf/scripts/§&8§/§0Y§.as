package §&8§
{
   import §<A§.§'K§;
   import §<A§.§'n§;
   
   public class §0Y§ extends §5P§
   {
       
      
      private var §7[§:§'n§;
      
      private var §@!8§:§'K§;
      
      public function §0Y§(param1:§'n§, param2:§'K§)
      {
         this.§7[§ = param1;
         this.§@!8§ = param2;
         super(param1,param2);
      }
      
      override public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5Z§
      {
         var _loc16_:§5Z§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§`D§;
         if(_loc17_ = §<4§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      override protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5Z§
      {
         return new §"!$§(this.§7[§,this.§@!8§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
   }
}
