package §_-bs§
{
   import § get§.§_-pD§;
   import §_-UX§.Sprite;
   
   public class §_-kC§ extends §_-bA§
   {
       
      
      private var §_-Ey§:String;
      
      private var §_-60§:Boolean;
      
      private var §_-sx§:Number;
      
      private var §_-i3§:int;
      
      public function §_-kC§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-Ey§ = param3;
         this.§_-60§ = param4;
         this.§_-sx§ = param5;
         this.§_-i3§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(!super.update(param1,param2))
         {
            §_-pD§.playSound(this.§_-Ey§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-bA§
      {
         return new §_-kC§(time,duration,this.§_-Ey§,this.§_-60§,this.§_-sx§,this.§_-i3§);
      }
   }
}
