package §6M§
{
   import §&!W§.§8!K§;
   import §2k§.Texture;
   import §7W§.§ !+§;
   import §?'§.§7!>§;
   import flash.display.BitmapData;
   
   public class §%`§
   {
      
      private static var §`p§:Object = {};
      
      private static var §4!3§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §%`§()
      {
         super();
      }
      
      public static function §<!;§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §`p§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §super§(param1:String, param2:§8!K§) : §7!>§
      {
         var _loc3_:ParticleResource = §"!A§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§]]§(_loc3_.bitmapData,_loc4_);
         if(§4!3§.indexOf(_loc5_) < 0)
         {
            §4!3§.push(_loc5_);
         }
         return new §7!>§(_loc3_.config,_loc5_);
      }
      
      private static function §"!A§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§ !+§.§?t§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §`p§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §`p§[param1] as ParticleResource;
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
