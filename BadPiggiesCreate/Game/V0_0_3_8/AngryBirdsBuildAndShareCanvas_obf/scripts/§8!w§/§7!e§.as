package §8!w§
{
   import § !V§.§7!P§;
   import §6`§.§?!7§;
   import §]!2§.Sprite;
   
   public class §7!e§ extends §&p§
   {
       
      
      private var §9y§:String;
      
      private var §?""§:Boolean;
      
      private var §7!j§:Number;
      
      private var §!"6§:int;
      
      public function §7!e§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9y§ = param3;
         this.§?""§ = param4;
         this.§7!j§ = param5;
         this.§!"6§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §?!7§.playSound(this.§9y§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §&p§
      {
         return new §7!e§(time,duration,this.§9y§,this.§?""§,this.§7!j§,this.§!"6§);
      }
   }
}
