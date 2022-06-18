package § y§
{
   import §"a§.§>X§;
   import §#;§.§6u§;
   import §5@§.Texture;
   import §;%§.§8o§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §,!B§:Object = {};
      
      private static var §7!+§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §?v§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §,!B§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §-!1§(param1:String, param2:§>X§) : §6u§
      {
         var _loc3_:ParticleResource = §]!8§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§4;§(_loc3_.bitmapData,_loc4_);
         if(§7!+§.indexOf(_loc5_) < 0)
         {
            §7!+§.push(_loc5_);
         }
         return new §6u§(_loc3_.config,_loc5_);
      }
      
      private static function §]!8§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§8o§.§^H§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §,!B§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §,!B§[param1] as ParticleResource;
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
