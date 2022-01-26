package §6p§
{
   import §,!Q§.Sprite;
   import §2l§.§]O§;
   import §7m§.§7I§;
   
   public class §4v§ extends §6!Y§
   {
       
      
      private var §[f§:String;
      
      private var §&l§:Boolean;
      
      private var §9W§:Number;
      
      private var §2!D§:int;
      
      public function §4v§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§[f§ = param3;
         this.§&l§ = param4;
         this.§9W§ = param5;
         this.§2!D§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§]O§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §7I§.playSound(this.§[f§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §6!Y§
      {
         return new §4v§(time,duration,this.§[f§,this.§&l§,this.§9W§,this.§2!D§);
      }
   }
}
