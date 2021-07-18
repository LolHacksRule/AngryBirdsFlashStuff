package §-!<§
{
   import §#e§.§'?§;
   import §#e§.§@!+§;
   
   public class §29§ extends §5!5§
   {
       
      
      private var §'_§:§@!+§;
      
      private var §2"§:§'?§;
      
      public function §29§(param1:§@!+§, param2:§'?§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§'_§ = param1;
         }
         while(true)
         {
            this.§2"§ = param2;
            while(_loc3_ || param2)
            {
               super(param1,param2);
               if(!(_loc4_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      override public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8R§
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc16_:§8R§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§5D§;
         if(_loc17_ = §+! §(param2))
         {
            if(!_loc19_)
            {
               _loc17_.addParticle(_loc16_);
               if(_loc18_ || param1)
               {
               }
            }
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      override protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8R§
      {
         return new §@!0§(this.§'_§,this.§2"§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
   }
}
