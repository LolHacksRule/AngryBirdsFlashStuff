package §_-mJ§
{
   import §_-OJ§.§_-KG§;
   import §_-Ra§.§_-2X§;
   import flash.display.BitmapData;
   
   public class §_-4n§
   {
      
      private static var §_-uU§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-uU§ = {};
         }
      }
      
      public function §_-4n§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §_-i5§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §_-uU§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §_-Wc§(param1:String, param2:§_-2X§) : §_-KG§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = §_-uU§[param1] as ParticleResource;
         if(!_loc5_)
         {
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  throw new Error("No particle emitter exists with the id " + param1);
               }
            }
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
