package §_-Sc§
{
   import §_-5x§.§_-8p§;
   import §_-vO§.Sprite;
   
   public class §_-lR§ extends § case§
   {
       
      
      private var §_-YS§:String;
      
      private var §_-ZU§:Boolean;
      
      private var §_-cd§:Number;
      
      private var §_-uq§:int;
      
      public function §_-lR§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-YS§ = param3;
         this.§_-ZU§ = param4;
         this.§_-cd§ = param5;
         this.§_-uq§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(!super.update(param1,param2))
         {
            §_-8p§.§_-rD§(this.§_-YS§);
            return false;
         }
         return false;
      }
      
      override public function clone() : § case§
      {
         return new §_-lR§(time,duration,this.§_-YS§,this.§_-ZU§,this.§_-cd§,this.§_-uq§);
      }
   }
}
