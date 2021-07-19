package §2"Y§
{
   public class §2o§ extends §8!D§
   {
       
      
      protected var §4!g§:String;
      
      protected var §%"o§:String;
      
      protected var §;i§:String;
      
      protected var §5L§:String;
      
      protected var §,!>§:String;
      
      public function §2o§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§4!g§ = param1.spriteFreeze;
         this.§%"o§ = param1.damageSound;
         this.§;i§ = param1.collisionSound;
         this.§,!>§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§%"o§)
         {
            return this.§%"o§;
         }
         return §4#V§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§;i§)
         {
            return this.§;i§;
         }
         return §2"?§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§,!>§)
         {
            return this.§,!>§;
         }
         return §31§;
      }
      
      public function get §5!R§() : String
      {
         return this.§5L§;
      }
   }
}
