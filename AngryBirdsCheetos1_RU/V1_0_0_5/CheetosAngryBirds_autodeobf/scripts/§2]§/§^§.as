package §2]§
{
   import §;C§.§5!O§;
   import §@!§.§?! §;
   import §null §.Sprite;
   
   public class §^§ extends §#!F§
   {
       
      
      private var §7!C§:String;
      
      private var §9!Y§:Boolean;
      
      private var §#! §:Number;
      
      private var §6a§:int;
      
      public function §^§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§7!C§ = param3;
         this.§9!Y§ = param4;
         this.§#! § = param5;
         this.§6a§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?! §) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §5!O§.§-q§(this.§7!C§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §#!F§
      {
         return new §^§(time,duration,this.§7!C§,this.§9!Y§,this.§#! §,this.§6a§);
      }
   }
}
