package §0O§
{
   import § !^§.Texture;
   import §&!!§.§<!'§;
   import §<L§.§6!^§;
   import §=!K§.§do§;
   import flash.display.BitmapData;
   
   public class §8Y§
   {
      
      private static var § in§:Object = {};
      
      private static var §`f§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §8Y§()
      {
         super();
      }
      
      public static function § true§(param1:String, param2:XML, param3:BitmapData) : void
      {
         § in§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §8!K§(param1:String, param2:§<!'§) : §6!^§
      {
         var _loc3_:ParticleResource = §7!3§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
         if(§`f§.indexOf(_loc5_) < 0)
         {
            §`f§.push(_loc5_);
         }
         return new §6!^§(_loc3_.config,_loc5_);
      }
      
      private static function §7!3§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§do§.§@$§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = § in§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = § in§[param1] as ParticleResource;
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
