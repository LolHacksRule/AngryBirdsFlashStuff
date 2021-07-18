package §#!q§
{
   import §!!!§.§6!l§;
   import §2`§.§%!!§;
   import §=!4§.Texture;
   import §@V§.§1"-§;
   import flash.display.BitmapData;
   
   public class §!%§
   {
      
      private static var §<!d§:Object;
      
      private static var §,!h§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!%§))
         {
            §<!d§ = {};
            do
            {
               §,!h§ = new Vector.<Texture>();
            }
            while(!(_loc1_ || §!%§));
            
         }
      }
      
      public function §!%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §2!q§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §<!d§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §!y§(param1:String, param2:§%!!§) : §1"-§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §3!!§(param1);
         if(!_loc7_)
         {
            if(!_loc3_)
            {
               if(!_loc7_)
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(_loc6_ || §!%§)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(_loc6_ || param2)
               {
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
         }
         var _loc5_:Texture = param2.§@!;§(_loc3_.bitmapData,_loc4_);
         if(!_loc7_)
         {
            if(§,!h§.indexOf(_loc5_) < 0)
            {
               if(!(_loc7_ && §!%§))
               {
                  addr100:
                  §,!h§.push(_loc5_);
               }
            }
            return new §1"-§(_loc3_.config,_loc5_);
         }
         §§goto(addr100);
      }
      
      private static function §3!!§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || §!%§)
         {
            if(!§6!l§.§`k§)
            {
               if(!_loc5_)
               {
                  addr46:
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + "_gpu");
                     if(_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           addr56:
                        }
                     }
                     else
                     {
                        addr60:
                        _loc2_ = §§pop();
                     }
                     _loc3_ = §<!d§[_loc2_] as ParticleResource;
                     if(!_loc5_)
                     {
                        if(!_loc3_)
                        {
                           addr82:
                           _loc3_ = §<!d§[param1] as ParticleResource;
                        }
                        return _loc3_;
                     }
                     §§goto(addr82);
                  }
                  else
                  {
                     addr58:
                     §§push(§§pop() + "_cpu");
                  }
                  §§goto(addr60);
               }
               §§goto(addr56);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr58);
         }
         §§goto(addr46);
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
