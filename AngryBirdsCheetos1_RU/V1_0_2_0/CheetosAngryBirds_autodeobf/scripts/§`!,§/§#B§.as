package §`!,§
{
   import §,H§.Sprite;
   import §1o§.§'M§;
   import §2!4§.§5T§;
   
   public class §#B§ extends §&H§
   {
       
      
      private var §`!3§:String;
      
      private var §6!2§:Boolean;
      
      private var §]!E§:Number;
      
      private var §?5§:int;
      
      public function §#B§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§`!3§ = param3;
         this.§6!2§ = param4;
         this.§]!E§ = param5;
         this.§?5§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5T§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §'M§.§1T§(this.§`!3§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §&H§
      {
         return new §#B§(time,duration,this.§`!3§,this.§6!2§,this.§]!E§,this.§?5§);
      }
   }
}
