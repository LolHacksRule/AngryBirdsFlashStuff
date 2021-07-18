package §_-mJ§
{
   import §_-OJ§.§_-KG§;
   import §_-Ra§.§_-2X§;
   import flash.display.BitmapData;
   
   public class §_-4n§
   {
      
      private static var §_-uU§:Object = {};
       
      
      public function §_-4n§()
      {
         super();
      }
      
      public static function §_-i5§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-uU§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-Wc§(param1:String, param2:§_-2X§) : §_-KG§
      {
         var _loc3_:ParticleResource = §_-uU§[param1] as ParticleResource;
         if(!_loc3_)
         {
            throw new Error("No particle emitter exists with the id " + param1);
         }
         return new §_-KG§(_loc3_.config,_loc3_.bitmapData.clone(),param2);
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
