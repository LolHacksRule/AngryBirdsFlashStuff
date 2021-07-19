package §3!Z§
{
   import §-!Q§.§,!7§;
   import §9t§.§=!>§;
   import §^a§.Sprite;
   
   public class §%5§ extends §!'§
   {
       
      
      private var §>6§:String;
      
      private var §,q§:Boolean;
      
      private var §+!#§:Number;
      
      private var §1!"§:int;
      
      public function §%5§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§>6§ = param3;
         this.§,q§ = param4;
         this.§+!#§ = param5;
         this.§1!"§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §,!7§.playSound(this.§>6§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §!'§
      {
         return new §%5§(time,duration,this.§>6§,this.§,q§,this.§+!#§,this.§1!"§);
      }
   }
}
