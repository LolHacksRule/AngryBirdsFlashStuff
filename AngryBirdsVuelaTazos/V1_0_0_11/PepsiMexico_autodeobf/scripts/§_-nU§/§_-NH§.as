package §_-nU§
{
   import §_-Bp§.§_-5N§;
   import §_-ez§.§_-2f§;
   import flash.display.BitmapData;
   
   public class §_-NH§
   {
      
      private static var §_-ur§:Object = {};
       
      
      public function §_-NH§()
      {
         super();
      }
      
      public static function §_-NK§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-ur§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-Yf§(param1:String, param2:§_-5N§) : §_-2f§
      {
         var _loc3_:ParticleResource = §_-ur§[param1] as ParticleResource;
         if(!_loc3_)
         {
            throw new Error("No particle emitter exists with the id " + param1);
         }
         return new §_-2f§(_loc3_.config,_loc3_.bitmapData.clone(),param2);
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
