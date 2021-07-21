package §&z§
{
   import §%!0§.§;0§;
   import §%!j§.§%K§;
   import §0!%§.Texture;
   import §;"7§.§="<§;
   import flash.display.BitmapData;
   
   public class §'!i§
   {
      
      private static var include:Object;
      
      private static var §0!t§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            include = {};
         }
         do
         {
            §0!t§ = new Vector.<Texture>();
         }
         while(!_loc1_);
         
      }
      
      public function §'!i§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function § ""§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            include[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §#G§(param1:String, param2:§="<§) : §;0§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §<" §(param1);
         if(_loc7_ || §'!i§)
         {
            if(!_loc3_)
            {
               if(_loc7_ || param2)
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(_loc7_ || param1)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(!(_loc6_ && param2))
               {
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
         }
         var _loc5_:Texture = param2.§%N§(_loc3_.bitmapData,_loc4_);
         if(!_loc6_)
         {
            if(§0!t§.indexOf(_loc5_) < 0)
            {
               if(_loc7_)
               {
                  addr106:
                  §0!t§.push(_loc5_);
               }
            }
            return new §;0§(_loc3_.config,_loc5_);
         }
         §§goto(addr106);
      }
      
      private static function §<" §(param1:String) : ParticleResource
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
         if(!(_loc5_ && _loc2_))
         {
            if(!§%K§.§%!R§)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + "_gpu");
                     if(_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           addr66:
                           _loc3_ = include[_loc2_] as ParticleResource;
                           if(!_loc5_)
                           {
                              if(!_loc3_)
                              {
                                 addr87:
                                 _loc3_ = include[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr87);
                        }
                     }
                     §§goto(addr66);
                  }
                  else
                  {
                     addr63:
                     §§push(§§pop() + "_cpu");
                  }
                  _loc2_ = §§pop();
               }
               §§goto(addr66);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr63);
         }
         §§goto(addr66);
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
