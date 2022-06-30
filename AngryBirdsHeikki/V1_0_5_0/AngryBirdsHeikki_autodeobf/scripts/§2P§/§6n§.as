package §2P§
{
   import § !9§.Texture;
   import §+D§.§4!^§;
   import §>Q§.§5!5§;
   import §`!H§.§@!E§;
   import flash.display.BitmapData;
   
   public class §6n§
   {
      
      private static var §6!3§:Object = {};
      
      private static var §5X§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §6n§()
      {
         super();
      }
      
      public static function §!!M§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §6!3§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §`!^§(param1:String, param2:§@!E§) : §4!^§
      {
         var _loc3_:ParticleResource = §]!C§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§1!1§(_loc3_.bitmapData,_loc4_);
         if(§5X§.indexOf(_loc5_) < 0)
         {
            §5X§.push(_loc5_);
         }
         return new §4!^§(_loc3_.config,_loc5_);
      }
      
      private static function §]!C§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§5!5§.§-!+§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §6!3§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §6!3§[param1] as ParticleResource;
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
