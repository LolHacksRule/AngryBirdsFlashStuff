package §_-00f§
{
   import §_-4I§.§_-v8§;
   import §_-E5§.§_-Wo§;
   import §case §.Sprite;
   
   public class §_-Bo§ extends §_-PQ§
   {
       
      
      private var §_-CN§:String;
      
      private var §_-tj§:Boolean;
      
      private var §_-Iq§:Number;
      
      private var §_-o9§:int;
      
      public function §_-Bo§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-CN§ = param3;
         this.§_-tj§ = param4;
         this.§_-Iq§ = param5;
         this.§_-o9§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-v8§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §_-Wo§.playSound(this.§_-CN§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-PQ§
      {
         return new §_-Bo§(time,duration,this.§_-CN§,this.§_-tj§,this.§_-Iq§,this.§_-o9§);
      }
   }
}
