package §"!@§
{
   import §+!]§.§!,§;
   import §6!;§.Sprite;
   import §^f§.§<q§;
   
   public class §[q§ extends §,!T§
   {
       
      
      private var § _§:String;
      
      private var §>5§:Boolean;
      
      private var §#!#§:Number;
      
      private var §<!;§:int;
      
      public function §[q§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§ _§ = param3;
         this.§>5§ = param4;
         this.§#!#§ = param5;
         this.§<!;§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!,§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §<q§.§5!S§(this.§ _§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,!T§
      {
         return new §[q§(time,duration,this.§ _§,this.§>5§,this.§#!#§,this.§<!;§);
      }
   }
}
