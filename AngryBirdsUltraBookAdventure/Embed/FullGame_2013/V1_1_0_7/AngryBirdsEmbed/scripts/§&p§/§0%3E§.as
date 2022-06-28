package §&p§
{
   import §#X§.§,!F§;
   import §&o§.Sprite;
   import §9K§.§5!H§;
   
   public class §0>§ extends §,K§
   {
       
      
      private var §<@§:String;
      
      private var §'!$§:Boolean;
      
      private var §"!4§:Number;
      
      private var §]&§:int;
      
      public function §0>§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§<@§ = param3;
         this.§'!$§ = param4;
         this.§"!4§ = param5;
         this.§]&§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §,!F§.§;v§(this.§<@§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,K§
      {
         return new §0>§(time,duration,this.§<@§,this.§'!$§,this.§"!4§,this.§]&§);
      }
   }
}
