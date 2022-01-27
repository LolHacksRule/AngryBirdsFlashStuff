package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §,!X§ extends §@!w§
   {
       
      
      protected var §>X§:Number;
      
      protected var §0!7§:Number;
      
      protected var §5Q§:Number;
      
      protected var §9N§:Number;
      
      public function §,!X§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param12);
         this.§>X§ = param8;
         this.§0!7§ = param9;
         this.§5Q§ = param10;
         this.§9N§ = param11;
      }
      
      override protected function explodeBeforeRemoving(param1:§0!s§) : void
      {
         if(param1)
         {
            param1.§9",§(§`I§().GetPosition().x,§`I§().GetPosition().y,this.§>X§,this.§0!7§,this.§5Q§,this.§9N§);
         }
      }
   }
}
