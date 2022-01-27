package §"!&§
{
   public class §5!f§ extends §]!C§
   {
       
      
      protected var §%Q§:String;
      
      protected var §!!<§:String;
      
      protected var §[!-§:String;
      
      protected var §"!p§:String;
      
      protected var §7"%§:String;
      
      public function §5!f§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§%Q§ = param1.spriteFreeze;
         this.§!!<§ = param1.damageSound;
         this.§[!-§ = param1.collisionSound;
         this.§7"%§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§!!<§)
         {
            return this.§!!<§;
         }
         return §>!i§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§[!-§)
         {
            return this.§[!-§;
         }
         return §0!N§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§7"%§)
         {
            return this.§7"%§;
         }
         return §'!T§;
      }
      
      public function get §#!a§() : String
      {
         return this.§"!p§;
      }
   }
}
