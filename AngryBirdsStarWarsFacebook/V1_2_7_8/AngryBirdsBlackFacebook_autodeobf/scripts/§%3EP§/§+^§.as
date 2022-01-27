package §>P§
{
   public class §+^§ extends §;+§
   {
       
      
      protected var §"!g§:String;
      
      protected var §8`§:String;
      
      protected var §74§:String;
      
      protected var §7^§:String;
      
      protected var §3p§:String;
      
      public function §+^§(param1:Object, param2:int, param3:§1C§, param4:§&s§, param5:int, param6:Boolean = false, param7:§?[§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§"!g§ = param1.spriteFreeze;
         this.§8`§ = param1.damageSound;
         this.§74§ = param1.collisionSound;
         this.§3p§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§8`§)
         {
            return this.§8`§;
         }
         return §^!w§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§74§)
         {
            return this.§74§;
         }
         return §^k§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§3p§)
         {
            return this.§3p§;
         }
         return §["1§;
      }
      
      public function get § #&§() : String
      {
         return this.§7^§;
      }
   }
}
