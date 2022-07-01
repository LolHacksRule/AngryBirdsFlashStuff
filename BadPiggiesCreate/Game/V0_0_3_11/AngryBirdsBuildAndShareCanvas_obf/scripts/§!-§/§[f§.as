package §!-§
{
   import §1!Y§.Sprite;
   import §?!k§.§0!t§;
   import §[_§.§2!B§;
   
   public class §[f§ extends §[u§
   {
       
      
      private var §9>§:String;
      
      private var §&-§:Boolean;
      
      private var §@"$§:Number;
      
      private var §!a§:int;
      
      public function §[f§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9>§ = param3;
         this.§&-§ = param4;
         this.§@"$§ = param5;
         this.§!a§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2!B§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §0!t§.playSound(this.§9>§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §[u§
      {
         return new §[f§(time,duration,this.§9>§,this.§&-§,this.§@"$§,this.§!a§);
      }
   }
}
