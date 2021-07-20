package §=I§
{
   import §=`§.§6!I§;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   
   public class §>r§ extends §?!t§
   {
       
      
      private var §,!8§:String;
      
      private var §5>§:Boolean;
      
      private var §'9§:Number;
      
      private var §;E§:int;
      
      public function §>r§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§,!8§ = param3;
         this.§5>§ = param4;
         this.§'9§ = param5;
         this.§;E§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §-!Q§.§#3§(this.§,!8§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §?!t§
      {
         return new §>r§(time,duration,this.§,!8§,this.§5>§,this.§'9§,this.§;E§);
      }
   }
}
