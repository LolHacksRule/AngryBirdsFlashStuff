package §_-n§
{
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-0FF§;
   import §_-uY§.Sprite;
   
   public class §_-9l§ extends §_-tC§
   {
       
      
      private var §_-5o§:String;
      
      private var § use§:Boolean;
      
      private var §_-PN§:Number;
      
      private var §_-xX§:int;
      
      public function §_-9l§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-5o§ = param3;
         this.§ use§ = param4;
         this.§_-PN§ = param5;
         this.§_-xX§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §_-pX§.playSound(this.§_-5o§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-tC§
      {
         return new §_-9l§(time,duration,this.§_-5o§,this.§ use§,this.§_-PN§,this.§_-xX§);
      }
   }
}
