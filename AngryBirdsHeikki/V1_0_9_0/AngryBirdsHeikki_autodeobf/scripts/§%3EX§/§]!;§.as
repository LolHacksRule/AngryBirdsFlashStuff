package §>X§
{
   import §#!f§.Sprite;
   import §%i§.§#`§;
   import §3!§.§-e§;
   
   public class §]!;§ extends §5!4§
   {
       
      
      private var §?!'§:String;
      
      private var §4!#§:Boolean;
      
      private var §-P§:Number;
      
      private var §?!8§:int;
      
      public function §]!;§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§?!'§ = param3;
         this.§4!#§ = param4;
         this.§-P§ = param5;
         this.§?!8§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§-e§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §#`§.§2o§(this.§?!'§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §5!4§
      {
         return new §]!;§(time,duration,this.§?!'§,this.§4!#§,this.§-P§,this.§?!8§);
      }
   }
}
