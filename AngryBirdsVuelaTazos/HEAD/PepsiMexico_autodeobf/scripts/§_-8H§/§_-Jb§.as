package §_-8H§
{
   import §_-3b§.§_-Og§;
   import §_-Di§.§_-T6§;
   import §_-Ku§.§_-Ha§;
   import flash.display.BitmapData;
   
   public class §_-Jb§
   {
      
      private static var §_-Cs§:Object = {};
       
      
      public function §_-Jb§()
      {
         super();
      }
      
      public static function §_-qw§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §_-Cs§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §_-AF§(param1:String, param2:§_-Og§) : §_-T6§
      {
         var _loc3_:ParticleResource = §_-Qa§(param1);
         if(!_loc3_)
         {
            throw new Error("No particle emitter exists with the id " + param1);
         }
         return new §_-T6§(_loc3_.config,_loc3_.bitmapData.clone(),param2);
      }
      
      private static function §_-Qa§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§_-Ha§.§_-0E§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §_-Cs§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §_-Cs§[param1] as ParticleResource;
         }
         return _loc3_;
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
