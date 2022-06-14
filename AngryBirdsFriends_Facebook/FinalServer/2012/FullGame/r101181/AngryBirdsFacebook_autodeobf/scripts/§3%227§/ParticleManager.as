package §3"7§
{
   import §'6§.§"]§;
   import §0!R§.Texture;
   import §6!D§.§0Y§;
   import §9"!§.§7!k§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §=!d§:Object = {};
      
      private static var §6!A§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §`+§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §=!d§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §=D§(param1:String, param2:§0Y§) : §7!k§
      {
         var _loc3_:ParticleResource = §^E§(param1);
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
         if(§6!A§.indexOf(_loc5_) < 0)
         {
            §6!A§.push(_loc5_);
         }
         return new §7!k§(_loc3_.config,_loc5_);
      }
      
      private static function §^E§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§"]§.§4"!§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §=!d§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §=!d§[param1] as ParticleResource;
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
