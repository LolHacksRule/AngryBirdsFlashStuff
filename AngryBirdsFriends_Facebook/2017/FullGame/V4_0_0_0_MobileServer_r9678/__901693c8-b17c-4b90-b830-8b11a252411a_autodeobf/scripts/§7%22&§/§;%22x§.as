package §7"&§
{
   public class §;"x§ extends §2p§
   {
       
      
      private var §""q§:String;
      
      private var §3!-§:String;
      
      private var §&M§:String;
      
      public function §;"x§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false, param7:§8"G§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§""q§ = param1.idleSound;
         this.§3!-§ = param1.fearSound;
         this.§&M§ = param1.soundChannel;
      }
      
      public function get idleSound() : String
      {
         return this.§""q§;
      }
      
      public function get fearSound() : String
      {
         return this.§3!-§;
      }
      
      override public function get soundChannel() : String
      {
         var _loc1_:String = this.§&M§;
         if(_loc1_ == null)
         {
            _loc1_ = super.soundChannel;
         }
         return _loc1_;
      }
   }
}
