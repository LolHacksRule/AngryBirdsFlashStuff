package §_-KX§
{
   import §_-oZ§.§_-JH§;
   import §_-se§.Sprite;
   
   public class §_-YT§ extends §_-Z8§
   {
       
      
      private var §_-og§:String;
      
      private var §_-Fj§:Boolean;
      
      private var §_-YY§:Number;
      
      private var §_-4j§:int;
      
      public function §_-YT§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-og§ = param3;
         this.§_-Fj§ = param4;
         this.§_-YY§ = param5;
         this.§_-4j§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite) : Boolean
      {
         if(!super.update(param1,param2))
         {
            §_-JH§.§_-A3§(this.§_-og§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §_-Z8§
      {
         return new §_-YT§(time,duration,this.§_-og§,this.§_-Fj§,this.§_-YY§,this.§_-4j§);
      }
   }
}
