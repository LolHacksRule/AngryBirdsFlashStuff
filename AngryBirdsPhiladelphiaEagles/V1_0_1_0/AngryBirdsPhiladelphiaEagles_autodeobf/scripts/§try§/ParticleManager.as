package §try§
{
   import § !N§.§`v§;
   import §0l§.Texture;
   import §5J§.§>$§;
   import §>2§.§%2§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §@z§:Object = {};
      
      private static var §=>§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §"5§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §@z§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §[!&§(param1:String, param2:§`v§) : §%2§
      {
         var _loc3_:ParticleResource = §;t§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§>!6§(_loc3_.bitmapData,_loc4_);
         if(§=>§.indexOf(_loc5_) < 0)
         {
            §=>§.push(_loc5_);
         }
         return new §%2§(_loc3_.config,_loc5_);
      }
      
      private static function §;t§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§>$§.§<8§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §@z§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §@z§[param1] as ParticleResource;
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
