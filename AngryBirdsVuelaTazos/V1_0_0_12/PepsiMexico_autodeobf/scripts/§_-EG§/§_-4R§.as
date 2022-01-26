package §_-EG§
{
   import §_-1P§.§_-3p§;
   import §_-rp§.§_-6v§;
   import flash.display.BitmapData;
   
   public class §_-4R§
   {
      
      private static var §_-Gr§:Object = {};
       
      
      public function §_-4R§()
      {
         super();
      }
      
      public static function §_-YW§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-Gr§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-vz§(param1:String, param2:§_-3p§) : §_-6v§
      {
         var _loc3_:ParticleResource = §_-Gr§[param1] as ParticleResource;
         if(!_loc3_)
         {
            throw new Error("No particle emitter exists with the id " + param1);
         }
         return new §_-6v§(_loc3_.config,_loc3_.bitmapData.clone(),param2);
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
