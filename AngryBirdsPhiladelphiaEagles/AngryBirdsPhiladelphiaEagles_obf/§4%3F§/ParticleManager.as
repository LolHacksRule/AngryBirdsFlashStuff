package §4?§
{
   import §#e§.§'?§;
   import §5Z§.§[Z§;
   import §8z§.Texture;
   import §9T§.§['§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §-! §:Object;
      
      private static var §+l§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-! § = {};
            do
            {
               §+l§ = new Vector.<Texture>();
            }
            while(!(_loc2_ || ParticleManager));
            
         }
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §<&§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §-! §[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §0p§(param1:String, param2:§'?§) : §['§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §54§(param1);
         if(_loc7_ || param2)
         {
            if(!_loc3_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr38);
               }
            }
            var _loc4_:* = true;
            if(_loc7_ || param1)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(!_loc6_)
                  {
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
            }
            var _loc5_:Texture = param2.§'b§(_loc3_.bitmapData,_loc4_);
            if(_loc7_)
            {
               if(§+l§.indexOf(_loc5_) < 0)
               {
                  if(_loc7_)
                  {
                     §+l§.push(_loc5_);
                  }
               }
            }
            return new §['§(_loc3_.config,_loc5_);
         }
         addr38:
         return null;
      }
      
      private static function §54§(param1:String) : ParticleResource
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
         if(_loc4_ || ParticleManager)
         {
            if(!§[Z§.§-D§)
            {
               if(_loc4_ || ParticleManager)
               {
                  addr51:
                  §§push(_loc2_);
                  if(!(_loc5_ && param1))
                  {
                     §§push("_gpu");
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              addr83:
                           }
                        }
                        else
                        {
                           addr87:
                           _loc2_ = §§pop();
                        }
                        _loc3_ = §-! §[_loc2_] as ParticleResource;
                        if(!_loc5_)
                        {
                           if(!_loc3_)
                           {
                              addr99:
                              _loc3_ = §-! §[param1] as ParticleResource;
                           }
                           return _loc3_;
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        addr86:
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr87);
                  }
                  else
                  {
                     addr85:
                     §§push("_cpu");
                  }
                  §§goto(addr86);
               }
               §§goto(addr83);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr85);
         }
         §§goto(addr51);
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
