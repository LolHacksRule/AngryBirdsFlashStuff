package §%%§
{
   import §&"5§.§7!P§;
   import §-!n§.§5!U§;
   import §default§.Sprite;
   
   public class §1;§ extends §#K§
   {
       
      
      private var § ;§:String;
      
      private var §=!]§:Boolean;
      
      private var §#!u§:Number;
      
      private var §?!7§:int;
      
      public function §1;§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§ ;§ = param3;
         this.§=!]§ = param4;
         this.§#!u§ = param5;
         this.§?!7§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §5!U§.playSound(this.§ ;§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §#K§
      {
         return new §1;§(time,duration,this.§ ;§,this.§=!]§,this.§#!u§,this.§?!7§);
      }
   }
}
