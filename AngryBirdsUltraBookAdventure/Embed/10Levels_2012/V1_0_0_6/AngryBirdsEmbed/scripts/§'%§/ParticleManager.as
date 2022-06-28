package §'%§
{
   import §3G§.§ +§;
   import §5`§.§?y§;
   import §7!=§.Texture;
   import §catch§.§4@§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §7!E§:Object = {};
      
      private static var §5n§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function ParticleManager()
      {
         super();
      }
      
      public static function §`7§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §7!E§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §1!>§(param1:String, param2:§?y§) : § +§
      {
         var _loc3_:ParticleResource = §!a§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§-§(_loc3_.bitmapData,_loc4_);
         if(§5n§.indexOf(_loc5_) < 0)
         {
            §5n§.push(_loc5_);
         }
         return new § +§(_loc3_.config,_loc5_);
      }
      
      private static function §!a§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§4@§.§?!A§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §7!E§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §7!E§[param1] as ParticleResource;
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
