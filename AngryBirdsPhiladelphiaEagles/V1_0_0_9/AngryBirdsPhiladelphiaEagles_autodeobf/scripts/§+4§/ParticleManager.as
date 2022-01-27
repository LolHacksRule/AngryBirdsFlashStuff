package §+4§
{
   import §'!3§.§&!H§;
   import §,T§.§1!P§;
   import §,]§.Texture;
   import §<A§.§'K§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §&T§:Object = {};
      
      private static var §2!M§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §%!M§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §&T§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §[P§(param1:String, param2:§'K§) : §1!P§
      {
         var _loc3_:ParticleResource = §+N§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§&W§(_loc3_.bitmapData,_loc4_);
         if(§2!M§.indexOf(_loc5_) < 0)
         {
            §2!M§.push(_loc5_);
         }
         return new §1!P§(_loc3_.config,_loc5_);
      }
      
      private static function §+N§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§&!H§.§+_§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §&T§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §&T§[param1] as ParticleResource;
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
