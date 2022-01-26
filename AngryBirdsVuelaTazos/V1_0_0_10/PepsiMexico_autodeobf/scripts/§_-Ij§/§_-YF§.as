package §_-Ij§
{
   import §_-0y§.§_-X7§;
   import §_-KS§.§_-ia§;
   import flash.display.BitmapData;
   
   public class §_-YF§
   {
      
      private static var §_-lp§:Object = {};
       
      
      public function §_-YF§()
      {
         super();
      }
      
      public static function each(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-lp§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-UB§(param1:String, param2:§_-ia§) : §_-X7§
      {
         var _loc3_:ParticleResource = §_-lp§[param1] as ParticleResource;
         if(!_loc3_)
         {
            throw new Error("No particle emitter exists with the id " + param1);
         }
         return new §_-X7§(_loc3_.config,_loc3_.bitmapData.clone(),param2);
      }
   }
}

import flash.display.BitmapData;

class ParticleResource
{
    
   
   public var config:XML;
   
   public var bitmapData:BitmapData;
   
   function ParticleResource(param1:XML, param2:BitmapData)
   {
      super();
      this.config = param1;
      this.bitmapData = param2;
   }
}
