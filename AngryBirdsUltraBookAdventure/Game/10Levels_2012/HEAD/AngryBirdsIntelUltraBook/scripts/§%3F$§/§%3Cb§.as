package §?$§
{
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §8!?§.TextureManager;
   
   public class §<b§ extends §9!'§
   {
       
      
      private var §9!M§:String;
      
      private var §6! §:Boolean;
      
      private var §1E§:Number;
      
      private var §[x§:int;
      
      public function §<b§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9!M§ = param3;
         this.§6! § = param4;
         this.§1E§ = param5;
         this.§[x§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            SoundEngine.§`B§(this.§9!M§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §9!'§
      {
         return new §<b§(time,duration,this.§9!M§,this.§6! §,this.§1E§,this.§[x§);
      }
   }
}
