package §2!#§
{
   import §-!0§.§'!3§;
   import §?!?§.§3!E§;
   import §?^§.Sprite;
   
   public class §3!"§ extends §,1§
   {
       
      
      private var §9f§:String;
      
      private var §@G§:Boolean;
      
      private var §]4§:Number;
      
      private var §6u§:int;
      
      public function §3!"§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9f§ = param3;
         this.§@G§ = param4;
         this.§]4§ = param5;
         this.§6u§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'!3§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §3!E§.§<!,§(this.§9f§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,1§
      {
         return new §3!"§(time,duration,this.§9f§,this.§@G§,this.§]4§,this.§6u§);
      }
   }
}
