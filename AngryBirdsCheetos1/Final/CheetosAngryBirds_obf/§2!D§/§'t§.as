package §2!D§
{
   import § `§.§2w§;
   import §!X§.§7!H§;
   import §]!B§.Texture;
   import §`C§.§9!'§;
   import flash.display.BitmapData;
   
   public class §'t§
   {
      
      private static var §2j§:Object;
      
      private static var §=4§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2j§ = {};
            do
            {
               §=4§ = new Vector.<Texture>();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §'t§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §>!8§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §2j§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §8G§(param1:String, param2:§2w§) : §7!H§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §?X§(param1);
         if(!_loc7_)
         {
            if(!_loc3_)
            {
               if(!(_loc7_ && param2))
               {
                  §§goto(addr32);
               }
            }
            var _loc4_:* = true;
            if(_loc6_)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(!_loc7_)
                  {
                     addr56:
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
               var _loc5_:Texture = param2.§1u§(_loc3_.bitmapData,_loc4_);
               if(!_loc7_)
               {
                  if(§=4§.indexOf(_loc5_) < 0)
                  {
                     if(_loc6_ || §'t§)
                     {
                        addr95:
                        §=4§.push(_loc5_);
                     }
                  }
                  return new §7!H§(_loc3_.config,_loc5_);
               }
               §§goto(addr95);
            }
            §§goto(addr56);
         }
         addr32:
         return null;
      }
      
      private static function §?X§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(!(_loc4_ && §'t§))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            if(!§9!'§.§'!$§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + "_gpu");
                     if(!(_loc4_ && §'t§))
                     {
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           addr72:
                           _loc3_ = §2j§[_loc2_] as ParticleResource;
                           if(!(_loc4_ && §'t§))
                           {
                              if(!_loc3_)
                              {
                                 addr98:
                                 _loc3_ = §2j§[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr98);
                           addr67:
                        }
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     addr69:
                     §§push(§§pop() + "_cpu");
                  }
                  _loc2_ = §§pop();
                  §§goto(addr72);
               }
               §§goto(addr67);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr69);
         }
         §§goto(addr72);
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
