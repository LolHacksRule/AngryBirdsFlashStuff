package §_-Wy§
{
   import §_-6n§.§_-5z§;
   import §_-b5§.Sprite;
   
   public class §_-vW§ extends §_-W5§
   {
       
      
      private var §_-pi§:String;
      
      private var §_-1i§:Boolean;
      
      private var §_-HT§:Number;
      
      private var §_-LK§:int;
      
      public function §_-vW§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-pi§ = param3;
         this.§_-1i§ = param4;
         this.§_-HT§ = param5;
         this.§_-LK§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(!super.update(param1,param2))
         {
            §_-5z§.§_-rp§(this.§_-pi§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-W5§
      {
         return new §_-vW§(time,duration,this.§_-pi§,this.§_-1i§,this.§_-HT§,this.§_-LK§);
      }
   }
}
