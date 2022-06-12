package §>0§
{
   import §-!+§.§6"6§;
   import §8!E§.§%P§;
   import §@!#§.Texture;
   import §`"2§.§6!,§;
   import flash.display.BitmapData;
   
   public class §8" §
   {
      
      private static var §<!i§:Object = {};
      
      private static var §&";§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §8" §()
      {
         super();
      }
      
      public static function §0!>§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §<!i§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §^"6§(param1:String, param2:§6!,§) : §%P§
      {
         var _loc3_:ParticleResource = §#!9§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§`!+§(_loc3_.bitmapData,_loc4_);
         if(§&";§.indexOf(_loc5_) < 0)
         {
            §&";§.push(_loc5_);
         }
         return new §%P§(_loc3_.config,_loc5_);
      }
      
      private static function §#!9§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§6"6§.§5!f§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §<!i§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §<!i§[param1] as ParticleResource;
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
