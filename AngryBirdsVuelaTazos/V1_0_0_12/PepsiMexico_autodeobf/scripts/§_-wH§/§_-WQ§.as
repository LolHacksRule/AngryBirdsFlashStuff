package §_-wH§
{
   import §_-am§.§_-XJ§;
   import §_-pF§.Sprite;
   
   public class §_-WQ§ extends §_-Xc§
   {
       
      
      private var §_-NM§:String;
      
      private var §_-8k§:Boolean;
      
      private var §_-eD§:Number;
      
      private var §_-FA§:int;
      
      public function §_-WQ§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-NM§ = param3;
         this.§_-8k§ = param4;
         this.§_-eD§ = param5;
         this.§_-FA§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(!super.update(param1,param2))
         {
            §_-XJ§.§_-aW§(this.§_-NM§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-Xc§
      {
         return new §_-WQ§(time,duration,this.§_-NM§,this.§_-8k§,this.§_-eD§,this.§_-FA§);
      }
   }
}
