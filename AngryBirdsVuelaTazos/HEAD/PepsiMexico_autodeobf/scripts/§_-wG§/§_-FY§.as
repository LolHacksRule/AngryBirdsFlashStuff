package §_-wG§
{
   import §_-3b§.§_-Og§;
   import §_-4K§.§_-Av§;
   import §_-SE§.Sprite;
   
   public class §_-FY§ extends include
   {
       
      
      private var §_-mz§:String;
      
      private var §_-uk§:Boolean;
      
      private var §_-Zs§:Number;
      
      private var §with§:int;
      
      public function §_-FY§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§_-mz§ = param3;
         this.§_-uk§ = param4;
         this.§_-Zs§ = param5;
         this.§with§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-Og§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §_-Av§.§_-so§(this.§_-mz§);
            return false;
         }
         return false;
      }
      
      override public function clone() : include
      {
         return new §_-FY§(time,duration,this.§_-mz§,this.§_-uk§,this.§_-Zs§,this.§with§);
      }
   }
}
