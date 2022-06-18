package §3!#§
{
   import §!!V§.§5!]§;
   import §"4§.§<h§;
   import §9!2§.§'![§;
   import flash.display.BitmapData;
   import §switch§.Texture;
   
   public class §0N§
   {
      
      private static var §2!^§:Object = {};
      
      private static var §;!!§:Vector.<Texture> = new Vector.<Texture>();
       
      
      public function §0N§()
      {
         super();
      }
      
      public static function §@"§(param1:String, param2:XML, param3:BitmapData) : void
      {
         §2!^§[param1] = new ParticleResource(param2,param3);
      }
      
      public static function §!g§(param1:String, param2:§'![§) : §5!]§
      {
         var _loc3_:ParticleResource = §null§(param1);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:* = true;
         if(_loc3_.config.disableMipMapping.length() == 1)
         {
            _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
         }
         var _loc5_:Texture = param2.§@!=§(_loc3_.bitmapData,_loc4_);
         if(§;!!§.indexOf(_loc5_) < 0)
         {
            §;!!§.push(_loc5_);
         }
         return new §5!]§(_loc3_.config,_loc5_);
      }
      
      private static function §null§(param1:String) : ParticleResource
      {
         var _loc3_:ParticleResource = null;
         var _loc2_:* = param1;
         if(!§<h§.§+"§)
         {
            _loc2_ += "_gpu";
         }
         else
         {
            _loc2_ += "_cpu";
         }
         _loc3_ = §2!^§[_loc2_] as ParticleResource;
         if(!_loc3_)
         {
            _loc3_ = §2!^§[param1] as ParticleResource;
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
