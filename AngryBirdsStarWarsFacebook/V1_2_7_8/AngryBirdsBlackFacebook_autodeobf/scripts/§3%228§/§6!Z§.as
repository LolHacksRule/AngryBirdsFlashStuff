package §3"8§
{
   import §,"v§.§@§;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   
   public class §6!Z§ extends §-"r§
   {
       
      
      private var §9!G§:String;
      
      private var §!"a§:Boolean;
      
      private var §&"7§:Number;
      
      private var § "^§:int;
      
      public function §6!Z§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9!G§ = param3;
         this.§!"a§ = param4;
         this.§&"7§ = param5;
         this.§ "^§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&"0§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §@§.§=Y§(this.§9!G§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §-"r§
      {
         return new §6!Z§(time,duration,this.§9!G§,this.§!"a§,this.§&"7§,this.§ "^§);
      }
   }
}
