package §1a§
{
   import §,!1§.§]e§;
   import §-!'§.Sprite;
   import §<A§.§'K§;
   
   public class §"6§ extends §#]§
   {
       
      
      private var §;g§:String;
      
      private var §6?§:Boolean;
      
      private var § 8§:Number;
      
      private var §`]§:int;
      
      public function §"6§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§;g§ = param3;
         this.§6?§ = param4;
         this.§ 8§ = param5;
         this.§`]§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'K§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §]e§.playSound(this.§;g§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §#]§
      {
         return new §"6§(time,duration,this.§;g§,this.§6?§,this.§ 8§,this.§`]§);
      }
   }
}
