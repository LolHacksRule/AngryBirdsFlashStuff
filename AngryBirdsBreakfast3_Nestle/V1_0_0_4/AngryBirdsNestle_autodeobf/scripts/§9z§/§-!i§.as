package §9z§
{
   import §&!>§.§3!k§;
   import §-!f§.Sprite;
   import §6_§.§,!>§;
   
   public class §-!i§ extends §"^§
   {
       
      
      private var §#!K§:String;
      
      private var §"l§:Boolean;
      
      private var §;m§:Number;
      
      private var §-P§:int;
      
      public function §-!i§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§#!K§ = param3;
         this.§"l§ = param4;
         this.§;m§ = param5;
         this.§-P§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,!>§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §3!k§.§]"4§(this.§#!K§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §"^§
      {
         return new §-!i§(time,duration,this.§#!K§,this.§"l§,this.§;m§,this.§-P§);
      }
   }
}
