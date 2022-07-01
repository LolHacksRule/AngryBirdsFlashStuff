package §9!e§
{
   import §6p§.§'!B§;
   import §7q§.Sprite;
   import §;!<§.§7!f§;
   
   public class §+!X§ extends §<!>§
   {
       
      
      private var §[k§:String;
      
      private var §+1§:Boolean;
      
      private var §,!M§:Number;
      
      private var §]"6§:int;
      
      public function §+!X§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§[k§ = param3;
         this.§+1§ = param4;
         this.§,!M§ = param5;
         this.§]"6§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!f§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §'!B§.playSound(this.§[k§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §<!>§
      {
         return new §+!X§(time,duration,this.§[k§,this.§+1§,this.§,!M§,this.§]"6§);
      }
   }
}
