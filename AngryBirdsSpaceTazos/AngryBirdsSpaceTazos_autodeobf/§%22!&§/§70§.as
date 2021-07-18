package §"!&§
{
   public class §70§ extends §%F§
   {
       
      
      private var §,w§:Number;
      
      private var §%!j§:Number;
      
      private var §&K§:Number;
      
      private var §-p§:Number;
      
      public function §70§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§,w§ = param1.sparkleRotationRadius;
         this.§%!j§ = param1.sparkleRotationSpeed;
         this.§&K§ = param1.sparkleRotationTimeBombSpeed;
         this.§-p§ = param1.sparkleRotationSlingShotSpeed;
      }
      
      public function get sparkleRotationRadius() : Number
      {
         return this.§,w§;
      }
      
      public function get sparkleRotationSpeed() : Number
      {
         return this.§%!j§;
      }
      
      public function get sparkleRotationTimeBombSpeed() : Number
      {
         return this.§&K§;
      }
      
      public function get sparkleRotationSlingShotSpeed() : Number
      {
         return this.§-p§;
      }
   }
}
