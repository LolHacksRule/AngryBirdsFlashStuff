package §%r§
{
   import §!!0§.SoundEngine;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   
   public class §[!H§ extends §,!b§
   {
       
      
      private var §8!5§:String;
      
      private var §'a§:Boolean;
      
      private var §@`§:Number;
      
      private var §&_§:int;
      
      public function §[!H§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§8!5§ = param3;
         this.§'a§ = param4;
         this.§@`§ = param5;
         this.§&_§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            SoundEngine.§-!h§(this.§8!5§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,!b§
      {
         return new §[!H§(time,duration,this.§8!5§,this.§'a§,this.§@`§,this.§&_§);
      }
   }
}
