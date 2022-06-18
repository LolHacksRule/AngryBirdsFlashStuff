package §4!3§
{
   import §'N§.§^]§;
   import §6u§.§3W§;
   import §]!6§.Sprite;
   
   public class §,!H§ extends §,d§
   {
       
      
      private var §73§:String;
      
      private var §@X§:Boolean;
      
      private var §6i§:Number;
      
      private var § G§:int;
      
      public function §,!H§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§73§ = param3;
         this.§@X§ = param4;
         this.§6i§ = param5;
         this.§ G§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3W§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §^]§.§1g§(this.§73§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,d§
      {
         return new §,!H§(time,duration,this.§73§,this.§@X§,this.§6i§,this.§ G§);
      }
   }
}
