package §?6§
{
   import §+f§.§4!8§;
   import §4G§.Sprite;
   import §<!4§.§25§;
   
   public class §=!0§ extends §8+§
   {
       
      
      private var §8!4§:String;
      
      private var §]A§:Boolean;
      
      private var §-`§:Number;
      
      private var §2d§:int;
      
      public function §=!0§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§8!4§ = param3;
         this.§]A§ = param4;
         this.§-`§ = param5;
         this.§2d§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4!8§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §25§.playSound(this.§8!4§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §8+§
      {
         return new §=!0§(time,duration,this.§8!4§,this.§]A§,this.§-`§,this.§2d§);
      }
   }
}
