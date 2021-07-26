package §8$=§
{
   import §,#e§.Sprite;
   import §3"V§.§ b§;
   import §7"T§.§#"^§;
   
   public class §"$-§ extends §=Q§
   {
       
      
      private var § " §:String;
      
      private var §&!<§:Boolean;
      
      private var §;I§:Number;
      
      private var §#!L§:int;
      
      public function §"$-§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§ " § = param3;
         this.§&!<§ = param4;
         this.§;I§ = param5;
         this.§#!L§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#"^§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            § b§.playSound(this.§ " §);
            return false;
         }
         return false;
      }
      
      override public function clone() : §=Q§
      {
         return new §"$-§(time,duration,this.§ " §,this.§&!<§,this.§;I§,this.§#!L§);
      }
   }
}
