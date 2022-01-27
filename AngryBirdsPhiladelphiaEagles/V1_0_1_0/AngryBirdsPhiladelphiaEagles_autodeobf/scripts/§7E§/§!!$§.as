package §7E§
{
   import § !N§.§]!P§;
   import § !N§.§`v§;
   
   public class §!!$§ extends §@u§
   {
       
      
      private var §8s§:§]!P§;
      
      private var §<!-§:§`v§;
      
      public function §!!$§(param1:§]!P§, param2:§`v§)
      {
         this.§8s§ = param1;
         this.§<!-§ = param2;
         super(param1,param2);
      }
      
      override public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^A§
      {
         var _loc16_:§^A§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§+!<§;
         if(_loc17_ = §<A§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      override protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^A§
      {
         return new § R§(this.§8s§,this.§<!-§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
   }
}
