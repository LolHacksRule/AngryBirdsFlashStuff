package §[!8§
{
   import §&V§.§,w§;
   import §>Z§.§2;§;
   import §@!=§.Sprite;
   
   public class §6D§ extends §-u§
   {
       
      
      private var §9V§:String;
      
      private var §^!§:Boolean;
      
      private var §!T§:Number;
      
      private var §#+§:int;
      
      public function §6D§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9V§ = param3;
         this.§^!§ = param4;
         this.§!T§ = param5;
         this.§#+§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,w§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §2;§.playSound(this.§9V§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §-u§
      {
         return new §6D§(time,duration,this.§9V§,this.§^!§,this.§!T§,this.§#+§);
      }
   }
}
