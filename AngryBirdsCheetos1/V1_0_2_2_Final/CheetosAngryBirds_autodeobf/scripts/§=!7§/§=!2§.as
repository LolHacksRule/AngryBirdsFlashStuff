package §=!7§
{
   import § `§.§2w§;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   
   public class §=!2§ extends §%f§
   {
       
      
      private var §3!Q§:String;
      
      private var §2z§:Boolean;
      
      private var §8K§:Number;
      
      private var §[!Y§:int;
      
      public function §=!2§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§3!Q§ = param3;
         this.§2z§ = param4;
         this.§8K§ = param5;
         this.§[!Y§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §!!>§.playSound(this.§3!Q§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §%f§
      {
         return new §=!2§(time,duration,this.§3!Q§,this.§2z§,this.§8K§,this.§[!Y§);
      }
   }
}
