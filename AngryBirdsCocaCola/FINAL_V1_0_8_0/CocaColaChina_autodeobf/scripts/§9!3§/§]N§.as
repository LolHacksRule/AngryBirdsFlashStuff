package §9!3§
{
   import §&!9§.Sprite;
   import §+x§.§-6§;
   import §48§.§4a§;
   
   public class §]N§ extends §8C§
   {
       
      
      private var §?W§:String;
      
      private var §=Z§:Boolean;
      
      private var §`i§:Number;
      
      private var §"!b§:int;
      
      public function §]N§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§?W§ = param3;
         this.§=Z§ = param4;
         this.§`i§ = param5;
         this.§"!b§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4a§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §-6§.§6!#§(this.§?W§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §8C§
      {
         return new §]N§(time,duration,this.§?W§,this.§=Z§,this.§`i§,this.§"!b§);
      }
   }
}
