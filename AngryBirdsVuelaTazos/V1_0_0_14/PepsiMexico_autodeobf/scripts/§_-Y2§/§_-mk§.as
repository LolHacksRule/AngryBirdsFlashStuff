package §_-Y2§
{
   import §_-5Y§.§_-ih§;
   import §_-PC§.§_-lx§;
   import flash.display.BitmapData;
   
   public class §_-mk§
   {
      
      private static var §_-Hr§:Object = {};
       
      
      public function §_-mk§()
      {
         super();
      }
      
      public static function §_-hF§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-Hr§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-m3§(param1:String, param2:§_-lx§) : §_-ih§
      {
         var _loc3_:ParticleResource = §_-Hr§[param1] as ParticleResource;
         if(!_loc3_)
         {
            throw new Error("No particle emitter exists with the id " + param1);
         }
         return new §_-ih§(_loc3_.config,_loc3_.bitmapData.clone(),param2);
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
