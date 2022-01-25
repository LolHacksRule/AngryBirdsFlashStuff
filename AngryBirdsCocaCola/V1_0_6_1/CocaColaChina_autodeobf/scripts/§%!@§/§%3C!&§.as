package §%!@§
{
   import §+N§.§``§;
   import §<!$§.Sprite;
   import §=L§.§@E§;
   
   public class §<!&§ extends §[!$§
   {
       
      
      private var §-!;§:String;
      
      private var §?!Z§:Boolean;
      
      private var §`!I§:Number;
      
      private var §6'§:int;
      
      public function §<!&§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§-!;§ = param3;
         this.§?!Z§ = param4;
         this.§`!I§ = param5;
         this.§6'§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§``§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §@E§.playSound(this.§-!;§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §[!$§
      {
         return new §<!&§(time,duration,this.§-!;§,this.§?!Z§,this.§`!I§,this.§6'§);
      }
   }
}
