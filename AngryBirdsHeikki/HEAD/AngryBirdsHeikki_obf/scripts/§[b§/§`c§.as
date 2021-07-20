package §[b§
{
   import §!!S§.Texture;
   import §&L§.§?]§;
   import §+!]§.§!,§;
   import §9!'§.§<!W§;
   import flash.display.BitmapData;
   
   public class §`c§
   {
      
      private static var §[!@§:Object = {};
      
      private static var §"4§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §`c§()
      {
         super();
      }
      
      public static function §%!>§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §[!@§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §@+§(param1:String, param2:§!,§) : §<!W§
      {
         var _loc3_:ParticleResource = §2_§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§@!&§(_loc3_.bitmapData,_loc4_);
         if(§"4§.indexOf(_loc5_) < 0)
         {
            §"4§.push(_loc5_);
         }
         return new §<!W§(_loc3_.config,_loc5_);
      }
      
      private static function §2_§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§?]§.§7!T§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §[!@§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §[!@§[param1] as ParticleResource;
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
