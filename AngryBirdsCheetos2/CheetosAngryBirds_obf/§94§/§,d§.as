package §94§
{
   import §,§.§]!f§;
   import §6;§.§%[§;
   import §9t§.§=!>§;
   import §]!a§.Texture;
   import flash.display.BitmapData;
   
   public class §,d§
   {
      
      private static var §&!G§:Object;
      
      private static var §package§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&!G§ = {};
            do
            {
               §package§ = new Vector.<Texture>();
            }
            while(!(_loc2_ || §,d§));
            
         }
      }
      
      public function §,d§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §]Y§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §&!G§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §5!Z§(param1:String, param2:§=!>§) : §]!f§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §@!h§(param1);
         if(_loc7_ || _loc3_)
         {
            if(!_loc3_)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(!(_loc6_ && param2))
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(!(_loc6_ && param2))
               {
                  addr67:
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
            var _loc5_:Texture = param2.§0!U§(_loc3_.bitmapData,_loc4_);
            if(!(_loc6_ && _loc3_))
            {
               if(§package§.indexOf(_loc5_) < 0)
               {
                  if(_loc7_)
                  {
                     §package§.push(_loc5_);
                  }
               }
            }
            return new §]!f§(_loc3_.config,_loc5_);
         }
         §§goto(addr67);
      }
      
      private static function §@!h§(param1:String) : ParticleResource
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
         if(_loc4_ || §,d§)
         {
            if(!§%[§.§4$§)
            {
               if(!_loc5_)
               {
                  addr36:
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + "_gpu");
                     if(_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           addr66:
                           _loc3_ = §&!G§[_loc2_] as ParticleResource;
                           if(_loc4_ || _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 addr92:
                                 _loc3_ = §&!G§[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr92);
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
