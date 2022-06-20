package §`#C§
{
   public class §##Z§ extends §4o§
   {
       
      
      protected var §+1§:String;
      
      protected var §#§:String;
      
      protected var §]"z§:String;
      
      protected var §0"N§:String;
      
      protected var §^#m§:String;
      
      public function §##Z§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false, param7:§8!h§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§+1§ = param1.spriteFreeze;
         this.§#§ = param1.damageSound;
         this.§]"z§ = param1.collisionSound;
         this.§^#m§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§#§)
         {
            return this.§#§;
         }
         return §;1§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§]"z§)
         {
            return this.§]"z§;
         }
         return §!#N§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§^#m§)
         {
            return this.§^#m§;
         }
         return §`#x§;
      }
      
      public function get §7!R§() : String
      {
         return this.§0"N§;
      }
   }
}
