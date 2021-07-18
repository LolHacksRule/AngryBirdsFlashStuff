package § in§
{
   import §"!I§.§4Q§;
   import §"^§.§+!'§;
   import §=!<§.§>a§;
   import flash.display.BitmapData;
   
   public class §[!U§
   {
      
      private static var §+G§:Object;
      
      private static var §&B§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §+G§ = {};
            do
            {
               §&B§ = new Vector.<Texture>();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §[!U§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §5Q§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || §[!U§)
         {
            §+G§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §=#§(param1:String, param2:§>a§) : §4Q§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §43§(param1);
         if(_loc7_)
         {
            if(!_loc3_)
            {
               if(_loc7_)
               {
                  §§goto(addr28);
               }
            }
            var _loc4_:* = true;
            if(!(_loc6_ && param2))
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(_loc7_)
                  {
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
            }
            var _loc5_:Texture = param2.§=!Z§(_loc3_.bitmapData,_loc4_);
            if(!_loc6_)
            {
               if(§&B§.indexOf(_loc5_) < 0)
               {
                  if(!(_loc6_ && param2))
                  {
                     §&B§.push(_loc5_);
                  }
               }
            }
            return new §4Q§(_loc3_.config,_loc5_);
         }
         addr28:
         return null;
      }
      
      private static function §43§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && §[!U§))
         {
            if(!§+!'§.§"!#§)
            {
               if(_loc5_ || param1)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + "_gpu");
                     if(_loc5_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           addr67:
                           _loc3_ = §+G§[_loc2_] as ParticleResource;
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 addr88:
                                 _loc3_ = §+G§[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     addr64:
                     §§push(§§pop() + "_cpu");
                  }
                  _loc2_ = §§pop();
               }
               §§goto(addr67);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr64);
         }
         §§goto(addr67);
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
