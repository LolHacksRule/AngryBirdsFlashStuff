package §<4§
{
   import §4!0§.§+!,§;
   import §4!0§.§3§;
   
   public class §#!F§ extends § try§
   {
       
      
      private var §#!C§:§+!,§;
      
      private var §"P§:§3§;
      
      public function §#!F§(param1:§+!,§, param2:§3§)
      {
         this.§#!C§ = param1;
         this.§"P§ = param2;
         super(param1,param2);
      }
      
      override public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5!C§
      {
         var _loc16_:§5!C§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§'X§;
         if(_loc17_ = §0!I§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      override protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5!C§
      {
         return new §[!$§(this.§#!C§,this.§"P§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
   }
}
