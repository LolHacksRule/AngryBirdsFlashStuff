package §_-ya§
{
   import §_-LP§.Sprite;
   import §_-rQ§.§_-Ou§;
   
   public class §_-fd§ extends §_-ga§
   {
       
      
      private var §_-hx§:String;
      
      private var §_-HK§:Boolean;
      
      private var §_-Dv§:Number;
      
      private var §_-3E§:int;
      
      public function §_-fd§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-hx§ = param3;
         this.§_-HK§ = param4;
         this.§_-Dv§ = param5;
         this.§_-3E§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(!super.update(param1,param2))
         {
            §_-Ou§.playSound(this.§_-hx§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-ga§
      {
         return new §_-fd§(time,duration,this.§_-hx§,this.§_-HK§,this.§_-Dv§,this.§_-3E§);
      }
   }
}
