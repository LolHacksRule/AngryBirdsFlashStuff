package §_-CR§
{
   import §_-5p§.§_-Kf§;
   import §_-Ls§.Sprite;
   import §_-cb§.§_-0B§;
   
   public class §_-XV§ extends §_-Lj§
   {
       
      
      private var §_-rP§:String;
      
      private var §_-b-§:Boolean;
      
      private var §_-0j§:Number;
      
      private var §_-b0§:int;
      
      public function §_-XV§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-rP§ = param3;
         this.§_-b-§ = param4;
         this.§_-0j§ = param5;
         this.§_-b0§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-Kf§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §_-0B§.playSound(this.§_-rP§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-Lj§
      {
         return new §_-XV§(time,duration,this.§_-rP§,this.§_-b-§,this.§_-0j§,this.§_-b0§);
      }
   }
}
