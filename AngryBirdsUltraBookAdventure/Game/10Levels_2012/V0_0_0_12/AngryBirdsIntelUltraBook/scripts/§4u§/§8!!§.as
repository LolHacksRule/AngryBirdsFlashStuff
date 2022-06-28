package §4u§
{
   import §,!_§.TextureManager;
   import §6!7§.Sprite;
   import §=?§.SoundEngine;
   
   public class §8!!§ extends §^!I§
   {
       
      
      private var §@!B§:String;
      
      private var §;!T§:Boolean;
      
      private var §,#§:Number;
      
      private var §2%§:int;
      
      public function §8!!§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§@!B§ = param3;
         this.§;!T§ = param4;
         this.§,#§ = param5;
         this.§2%§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            SoundEngine.§9!X§(this.§@!B§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §^!I§
      {
         return new §8!!§(time,duration,this.§@!B§,this.§;!T§,this.§,#§,this.§2%§);
      }
   }
}
