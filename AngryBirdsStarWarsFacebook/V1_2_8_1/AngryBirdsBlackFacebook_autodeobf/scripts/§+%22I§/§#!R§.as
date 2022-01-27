package §+"I§
{
   import §!!k§.§0!B§;
   import §`"1§.§=Q§;
   import §use§.Sprite;
   
   public class §#!R§ extends §^"C§
   {
       
      
      private var §%o§:String;
      
      private var §6"7§:Boolean;
      
      private var §]l§:Number;
      
      private var §,!C§:int;
      
      public function §#!R§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§%o§ = param3;
         this.§6"7§ = param4;
         this.§]l§ = param5;
         this.§,!C§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0!B§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §=Q§.§`!A§(this.§%o§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §^"C§
      {
         return new §#!R§(time,duration,this.§%o§,this.§6"7§,this.§]l§,this.§,!C§);
      }
   }
}
