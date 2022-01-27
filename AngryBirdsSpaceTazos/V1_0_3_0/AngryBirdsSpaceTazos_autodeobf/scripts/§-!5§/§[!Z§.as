package §-!5§
{
   import §4"@§.Sprite;
   import §>"!§.§@!9§;
   import §^e§.§0"1§;
   
   public class §[!Z§ extends §6!t§
   {
       
      
      private var §;u§:String;
      
      private var §]'§:Boolean;
      
      private var §@!U§:Number;
      
      private var §<§:int;
      
      public function §[!Z§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§;u§ = param3;
         this.§]'§ = param4;
         this.§@!U§ = param5;
         this.§<§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0"1§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §@!9§.playSound(this.§;u§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §6!t§
      {
         return new §[!Z§(time,duration,this.§;u§,this.§]'§,this.§@!U§,this.§<§);
      }
   }
}
