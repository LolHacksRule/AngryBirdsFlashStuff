package §'v§
{
   import §%"§.§ try§;
   import §@M§.Texture;
   import §^'§.§ !C§;
   import §^h§.§2l§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §5h§:Object = {};
      
      private static var §get §:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §=w§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §5h§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §>Q§(param1:String, param2:§ !C§) : § try§
      {
         var _loc3_:ParticleResource = §2P§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§7d§(_loc3_.bitmapData,_loc4_);
         if(§get §.indexOf(_loc5_) < 0)
         {
            §get §.push(_loc5_);
         }
         return new § try§(_loc3_.config,_loc5_);
      }
      
      private static function §2P§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§2l§.§,X§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §5h§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §5h§[param1] as ParticleResource;
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
