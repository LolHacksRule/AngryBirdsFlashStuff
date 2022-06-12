package §%!t§
{
   import §-N§.§=!]§;
   import §8Y§.Texture;
   import §;!<§.§7!f§;
   import §=b§.§=!B§;
   import flash.display.BitmapData;
   
   public class §[![§
   {
      
      private static var §=!<§:Object = {};
      
      private static var §7D§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §[![§()
      {
         super();
      }
      
      public static function §="!§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §=!<§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §>!W§(param1:String, param2:§7!f§) : §=!B§
      {
         var _loc3_:ParticleResource = §40§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§>!d§(_loc3_.bitmapData,_loc4_);
         if(§7D§.indexOf(_loc5_) < 0)
         {
            §7D§.push(_loc5_);
         }
         return new §=!B§(_loc3_.config,_loc5_);
      }
      
      private static function §40§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§=!]§.§&!f§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §=!<§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §=!<§[param1] as ParticleResource;
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
