package §,!§
{
   import §->§.Sprite;
   import §1!8§.§;!>§;
   import §[!$§.§"!%§;
   
   public class §9<§ extends §4k§
   {
       
      
      private var §@!&§:String;
      
      private var §'9§:Boolean;
      
      private var §6'§:Number;
      
      private var §[f§:int;
      
      public function §9<§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§@!&§ = param3;
         this.§'9§ = param4;
         this.§6'§ = param5;
         this.§[f§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§"!%§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §;!>§.§>t§(this.§@!&§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §4k§
      {
         return new §9<§(time,duration,this.§@!&§,this.§'9§,this.§6'§,this.§[f§);
      }
   }
}
