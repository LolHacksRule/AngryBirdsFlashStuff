package §`#C§
{
   public class §@!1§ extends §4o§
   {
       
      
      private var §4B§:String;
      
      private var §[!]§:String;
      
      private var §[!B§:String;
      
      public function §@!1§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false, param7:§8!h§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§4B§ = param1.idleSound;
         this.§[!]§ = param1.fearSound;
         this.§[!B§ = param1.soundChannel;
      }
      
      public function get idleSound() : String
      {
         return this.§4B§;
      }
      
      public function get fearSound() : String
      {
         return this.§[!]§;
      }
      
      override public function get soundChannel() : String
      {
         var _loc1_:String = this.§[!B§;
         if(_loc1_ == null)
         {
            _loc1_ = super.soundChannel;
         }
         return _loc1_;
      }
   }
}
