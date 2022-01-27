package §9##§
{
   import § "-§.§6!R§;
   import §!!k§.§0!B§;
   import §"§.§?"`§;
   import §&"s§.Texture;
   import flash.display.BitmapData;
   
   public class §`"0§
   {
      
      private static var §6"d§:Object = {};
      
      private static var §-"g§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §`"0§()
      {
         super();
      }
      
      public static function §<!6§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §6"d§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §'0§(param1:String, param2:§0!B§) : §?"`§
      {
         var _loc3_:ParticleResource = §`"z§(param1);
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
         if(§-"g§.indexOf(_loc5_) < 0)
         {
            §-"g§.push(_loc5_);
         }
         return new §?"`§(_loc3_.config,_loc5_);
      }
      
      private static function §`"z§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§6!R§.§%!f§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §6"d§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §6"d§[param1] as ParticleResource;
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
