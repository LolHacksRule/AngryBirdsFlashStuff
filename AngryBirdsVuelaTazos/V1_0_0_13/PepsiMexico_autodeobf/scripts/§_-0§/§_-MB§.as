package §_-0§
{
   import §_-FQ§.§_-au§;
   import §_-rQ§.§_-hA§;
   import flash.display.BitmapData;
   
   public class §_-MB§
   {
      
      private static var §_-n-§:Object = {};
       
      
      public function §_-MB§()
      {
         super();
      }
      
      public static function §_-d§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-n-§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-PO§(param1:String, param2:§_-hA§) : §_-au§
      {
         var _loc3_:ParticleResource = §_-n-§[param1] as ParticleResource;
         if(!_loc3_)
         {
            throw new Error("No particle emitter exists with the id " + param1);
         }
         return new §_-au§(_loc3_.config,_loc3_.bitmapData.clone(),param2);
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
