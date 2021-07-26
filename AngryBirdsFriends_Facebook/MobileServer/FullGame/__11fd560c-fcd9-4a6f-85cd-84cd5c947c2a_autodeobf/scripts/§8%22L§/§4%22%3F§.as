package §8"L§
{
   public class §4"?§ extends §5K§
   {
       
      
      protected var §3"i§:String;
      
      protected var §,F§:String;
      
      protected var §&"2§:String;
      
      protected var §<"3§:String;
      
      protected var §&$A§:String;
      
      public function §4"?§(param1:Object, param2:int, param3:§?"b§, param4:§+"L§, param5:int, param6:Boolean = false, param7:§6!0§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§3"i§ = param1.spriteFreeze;
         this.§,F§ = param1.damageSound;
         this.§&"2§ = param1.collisionSound;
         this.§&$A§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§,F§)
         {
            return this.§,F§;
         }
         return materialDamageSound;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§&"2§)
         {
            return this.§&"2§;
         }
         return materialCollisionSound;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§&$A§)
         {
            return this.§&$A§;
         }
         return materialDestroyedSound;
      }
      
      public function get §7"g§() : String
      {
         return this.§<"3§;
      }
   }
}
