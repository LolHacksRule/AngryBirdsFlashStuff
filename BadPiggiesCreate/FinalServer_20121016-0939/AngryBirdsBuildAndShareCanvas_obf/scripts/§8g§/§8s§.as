package §8g§
{
   import §&"5§.§7!P§;
   import §5!V§.§9!C§;
   import §6p§.§?%§;
   import §7R§.Texture;
   import flash.display.BitmapData;
   
   public class §8s§
   {
      
      private static var § !y§:Object;
      
      private static var §7!s§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § !y§ = {};
         }
         do
         {
            §7!s§ = new Vector.<Texture>();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §8s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §;!g§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            § !y§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §8B§(param1:String, param2:§7!P§) : §9!C§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §8!N§(param1);
         if(!_loc7_)
         {
            if(!_loc3_)
            {
               if(!(_loc7_ && _loc3_))
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(!_loc7_)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(_loc6_)
               {
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
         }
         var _loc5_:Texture = param2.§&#§(_loc3_.bitmapData,_loc4_);
         if(!(_loc7_ && param2))
         {
            if(§7!s§.indexOf(_loc5_) < 0)
            {
               if(!_loc7_)
               {
                  addr95:
                  §7!s§.push(_loc5_);
               }
            }
            return new §9!C§(_loc3_.config,_loc5_);
         }
         §§goto(addr95);
      }
      
      private static function §8!N§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            if(!§?%§.§ !J§)
            {
               if(_loc4_)
               {
                  addr36:
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + "_gpu");
                     if(_loc4_ || _loc3_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           addr71:
                           _loc3_ = § !y§[_loc2_] as ParticleResource;
                           if(!(_loc5_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 addr97:
                                 _loc3_ = § !y§[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr71);
                  }
                  else
                  {
                     addr68:
                     §§push(§§pop() + "_cpu");
                  }
                  _loc2_ = §§pop();
               }
               §§goto(addr71);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr68);
         }
         §§goto(addr36);
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
