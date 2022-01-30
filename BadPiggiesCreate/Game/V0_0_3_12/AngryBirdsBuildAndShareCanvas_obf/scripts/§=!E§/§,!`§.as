package §=!E§
{
   import §3",§.§0"<§;
   import §@!-§.§3"1§;
   import §[B§.§7!<§;
   import §^Q§.Texture;
   import flash.display.BitmapData;
   
   public class §,!`§
   {
      
      private static var §,!z§:Object = {};
      
      private static var §+Z§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §,!`§()
      {
         super();
      }
      
      public static function §7"$§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §,!z§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §?!O§(param1:String, param2:§3"1§) : §7!<§
      {
         var _loc3_:ParticleResource = §!`§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§,!d§(_loc3_.bitmapData,_loc4_);
         if(§+Z§.indexOf(_loc5_) < 0)
         {
            §+Z§.push(_loc5_);
         }
         return new §7!<§(_loc3_.config,_loc5_);
      }
      
      private static function §!`§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§0"<§.§4§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §,!z§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §,!z§[param1] as ParticleResource;
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
