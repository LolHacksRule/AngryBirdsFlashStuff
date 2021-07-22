package §3D§
{
   import §#S§.§?!?§;
   import §>s§.§+m§;
   import §]!v§.Sprite;
   
   public class § K§ extends §3T§
   {
       
      
      private var §]!`§:String;
      
      private var §%X§:Boolean;
      
      private var §1"B§:Number;
      
      private var §2w§:int;
      
      public function § K§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§]!`§ = param3;
         this.§%X§ = param4;
         this.§1"B§ = param5;
         this.§2w§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?!?§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §+m§.§]!N§(this.§]!`§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §3T§
      {
         return new § K§(time,duration,this.§]!`§,this.§%X§,this.§1"B§,this.§2w§);
      }
   }
}
