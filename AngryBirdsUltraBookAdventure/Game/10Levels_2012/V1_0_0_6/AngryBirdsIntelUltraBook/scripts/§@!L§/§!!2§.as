package §@!L§
{
   import §5!c§.§9'§;
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   
   public class §!!2§ extends §9N§
   {
       
      
      private var §in §:String;
      
      private var §2!J§:Boolean;
      
      private var §7m§:Number;
      
      private var §'!n§:int;
      
      public function §!!2§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§in § = param3;
         this.§2!J§ = param4;
         this.§7m§ = param5;
         this.§'!n§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §9'§.playSound(this.§in §);
            return false;
         }
         return false;
      }
      
      override public function clone() : §9N§
      {
         return new §!!2§(time,duration,this.§in §,this.§2!J§,this.§7m§,this.§'!n§);
      }
   }
}
