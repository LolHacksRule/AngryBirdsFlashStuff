package §_-qU§
{
   import §_-GY§.Sprite;
   import §_-VH§.§_-X6§;
   import §_-my§.§_-V0§;
   
   public class §_-et§ extends §_-BV§
   {
       
      
      private var §_-jO§:String;
      
      private var §_-q9§:Boolean;
      
      private var §_-Ld§:Number;
      
      private var §_-7b§:int;
      
      public function §_-et§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-jO§ = param3;
         this.§_-q9§ = param4;
         this.§_-Ld§ = param5;
         this.§_-7b§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-V0§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §_-X6§.playSound(this.§_-jO§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-BV§
      {
         return new §_-et§(time,duration,this.§_-jO§,this.§_-q9§,this.§_-Ld§,this.§_-7b§);
      }
   }
}
