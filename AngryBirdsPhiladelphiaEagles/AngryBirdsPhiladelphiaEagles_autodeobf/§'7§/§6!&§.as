package §'7§
{
   import § N§.Sprite;
   import §#e§.§'?§;
   import §&^§.§[!7§;
   
   public class §6!&§ extends §@!F§
   {
       
      
      private var §1l§:String;
      
      private var §,!Q§:Boolean;
      
      private var §;!6§:Number;
      
      private var §"!-§:int;
      
      public function §6!&§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§1l§ = param3;
         this.§,!Q§ = param4;
         this.§;!6§ = param5;
         this.§"!-§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'?§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §[!7§.playSound(this.§1l§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §@!F§
      {
         return new §6!&§(time,duration,this.§1l§,this.§,!Q§,this.§;!6§,this.§"!-§);
      }
   }
}
