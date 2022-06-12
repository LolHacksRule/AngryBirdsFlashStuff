package §`"0§
{
   import §'G§.§3$§;
   import §6#H§.Sprite;
   import §8#K§.§3Z§;
   
   public class § #h§ extends §?#d§
   {
       
      
      private var §;! §:String;
      
      private var §7,§:Boolean;
      
      private var §>!N§:Number;
      
      private var §6#F§:int;
      
      public function § #h§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§;! § = param3;
         this.§7,§ = param4;
         this.§>!N§ = param5;
         this.§6#F§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3$§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §3Z§.playSound(this.§;! §);
            return false;
         }
         return false;
      }
      
      override public function clone() : §?#d§
      {
         return new § #h§(time,duration,this.§;! §,this.§7,§,this.§>!N§,this.§6#F§);
      }
   }
}
