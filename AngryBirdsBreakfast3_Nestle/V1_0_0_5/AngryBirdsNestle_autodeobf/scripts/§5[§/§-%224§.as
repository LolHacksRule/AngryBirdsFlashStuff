package §5[§
{
   import §-!Y§.§%!%§;
   import §-!b§.§[E§;
   import §?V§.Texture;
   import §]k§.§`Q§;
   import flash.display.BitmapData;
   
   public class §-"4§
   {
      
      private static var §3!§:Object = {};
      
      private static var §0!b§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §-"4§()
      {
         super();
      }
      
      public static function §9w§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §3!§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §#I§(param1:String, param2:§[E§) : §`Q§
      {
         var _loc3_:ParticleResource = §20§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§2!8§(_loc3_.bitmapData,_loc4_);
         if(§0!b§.indexOf(_loc5_) < 0)
         {
            §0!b§.push(_loc5_);
         }
         return new §`Q§(_loc3_.config,_loc5_);
      }
      
      private static function §20§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§%!%§.§4K§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §3!§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §3!§[param1] as ParticleResource;
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
