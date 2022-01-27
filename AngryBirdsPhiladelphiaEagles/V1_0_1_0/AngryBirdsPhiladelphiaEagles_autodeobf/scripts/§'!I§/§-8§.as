package §'!I§
{
   import § !N§.§`v§;
   import §3H§.Sprite;
   import §[N§.§9k§;
   
   public class §-8§ extends §]p§
   {
       
      
      private var §"L§:String;
      
      private var §`!9§:Boolean;
      
      private var §1Q§:Number;
      
      private var §3]§:int;
      
      public function §-8§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§"L§ = param3;
         this.§`!9§ = param4;
         this.§1Q§ = param5;
         this.§3]§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`v§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §9k§.playSound(this.§"L§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §]p§
      {
         return new §-8§(time,duration,this.§"L§,this.§`!9§,this.§1Q§,this.§3]§);
      }
   }
}
