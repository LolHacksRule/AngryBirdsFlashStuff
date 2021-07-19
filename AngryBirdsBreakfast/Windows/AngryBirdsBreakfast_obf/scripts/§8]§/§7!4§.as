package §8]§
{
   import § ! §.§5!x§;
   import §%q§.Texture;
   import §@L§.§30§;
   import §`!a§.§1"&§;
   import flash.display.BitmapData;
   
   public class §7!4§
   {
      
      private static var §]!f§:Object;
      
      private static var §`m§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]!f§ = {};
         }
         do
         {
            §`m§ = new Vector.<Texture>();
         }
         while(_loc2_);
         
      }
      
      public function §7!4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §%U§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §7!4§))
         {
            §]!f§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §5!o§(param1:String, param2:§5!x§) : §30§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §@D§(param1);
         if(_loc6_)
         {
            if(!_loc3_)
            {
               if(_loc6_)
               {
                  §§goto(addr27);
               }
            }
            var _loc4_:* = true;
            if(!_loc7_)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(!(_loc7_ && param1))
                  {
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
            }
            var _loc5_:Texture = param2.§%^§(_loc3_.bitmapData,_loc4_);
            if(_loc6_ || param2)
            {
               if(§`m§.indexOf(_loc5_) < 0)
               {
                  if(!_loc7_)
                  {
                     addr95:
                     §`m§.push(_loc5_);
                  }
               }
               return new §30§(_loc3_.config,_loc5_);
            }
            §§goto(addr95);
         }
         addr27:
         return null;
      }
      
      private static function §@D§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(!§1"&§.§'!g§)
            {
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc4_ || §7!4§)
                  {
                     §§push(§§pop() + "_gpu");
                     if(_loc4_ || param1)
                     {
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                           addr71:
                           _loc3_ = §]!f§[_loc2_] as ParticleResource;
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 addr92:
                                 _loc3_ = §]!f§[param1] as ParticleResource;
                              }
                              return _loc3_;
                           }
                           §§goto(addr92);
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
         §§goto(addr71);
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
