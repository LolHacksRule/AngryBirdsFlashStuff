package §4;§
{
   import §'!6§.Sprite;
   import §8m§.§@"M§;
   import §<T§.§`m§;
   
   public class §-W§ extends §^g§
   {
       
      
      private var §@!F§:String;
      
      private var § p§:Boolean;
      
      private var §3N§:Number;
      
      private var §"!8§:int;
      
      public function §-W§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§@!F§ = param3;
         this.§ p§ = param4;
         this.§3N§ = param5;
         this.§"!8§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §@"M§.§3"C§(this.§@!F§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §^g§
      {
         return new §-W§(time,duration,this.§@!F§,this.§ p§,this.§3N§,this.§"!8§);
      }
   }
}
