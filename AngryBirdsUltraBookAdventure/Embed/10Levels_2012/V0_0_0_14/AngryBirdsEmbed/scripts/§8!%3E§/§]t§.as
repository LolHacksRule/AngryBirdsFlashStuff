package §8!>§
{
   import §'k§.§ >§;
   import §9W§.Sprite;
   import §@D§.§6I§;
   
   public class §]t§ extends §1^§
   {
       
      
      private var §9Z§:String;
      
      private var §!v§:Boolean;
      
      private var each:Number;
      
      private var §<!2§:int;
      
      public function §]t§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9Z§ = param3;
         this.§!v§ = param4;
         this.each = param5;
         this.§<!2§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ >§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §6I§.§ ;§(this.§9Z§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §1^§
      {
         return new §]t§(time,duration,this.§9Z§,this.§!v§,this.each,this.§<!2§);
      }
   }
}
