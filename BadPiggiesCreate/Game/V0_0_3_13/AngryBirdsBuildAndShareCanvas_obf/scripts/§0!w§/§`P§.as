package §0!w§
{
   import §>Z§.§5;§;
   import §`"2§.§6!,§;
   import §`L§.Sprite;
   
   public class §`P§ extends §5i§
   {
       
      
      private var §<r§:String;
      
      private var §%]§:Boolean;
      
      private var §'o§:Number;
      
      private var §+!J§:int;
      
      public function §`P§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§<r§ = param3;
         this.§%]§ = param4;
         this.§'o§ = param5;
         this.§+!J§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!,§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §5;§.playSound(this.§<r§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §5i§
      {
         return new §`P§(time,duration,this.§<r§,this.§%]§,this.§'o§,this.§+!J§);
      }
   }
}
