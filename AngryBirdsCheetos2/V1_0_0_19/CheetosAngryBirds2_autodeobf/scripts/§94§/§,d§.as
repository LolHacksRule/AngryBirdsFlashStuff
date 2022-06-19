package §94§
{
   import §,§.§]!f§;
   import §6;§.§%[§;
   import §9t§.§=!>§;
   import §]!a§.Texture;
   import flash.display.BitmapData;
   
   public class §,d§
   {
      
      private static var §&!G§:Object = {};
      
      private static var §package§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §,d§()
      {
         super();
      }
      
      public static function §]Y§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §&!G§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §5!Z§(param1:String, param2:§=!>§) : §]!f§
      {
         var _loc3_:ParticleResource = §@!h§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§0!U§(_loc3_.bitmapData,_loc4_);
         if(§package§.indexOf(_loc5_) < 0)
         {
            §package§.push(_loc5_);
         }
         return new §]!f§(_loc3_.config,_loc5_);
      }
      
      private static function §@!h§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§%[§.§4$§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §&!G§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §&!G§[param1] as ParticleResource;
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
