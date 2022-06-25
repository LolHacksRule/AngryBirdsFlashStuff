package §<$§
{
   import §!!9§.Texture;
   import §+&§.§"F§;
   import §,6§.§!o§;
   import §@4§.§,!]§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §;X§:Object;
      
      private static var §;c§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §;X§ = {};
            do
            {
               §;c§ = new Vector.<Texture>();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §2d§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || ParticleManager)
         {
            §;X§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §"m§(param1:String, param2:§!o§) : §"F§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §?!6§(param1);
         if(!(_loc6_ && param1))
         {
            if(!_loc3_)
            {
               if(!(_loc6_ && param1))
               {
                  §§goto(addr38);
               }
            }
            var _loc4_:* = true;
            if(_loc7_ || param1)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(_loc7_)
                  {
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
            }
            var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
            if(_loc7_)
            {
               if(§;c§.indexOf(_loc5_) < 0)
               {
                  if(!(_loc6_ && ParticleManager))
                  {
                     addr106:
                     §;c§.push(_loc5_);
                  }
               }
               return new §"F§(_loc3_.config,_loc5_);
            }
            §§goto(addr106);
         }
         addr38:
         return null;
      }
      
      private static function §?!6§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            if(!§,!]§.§,?§)
            {
               if(_loc4_ || _loc2_)
               {
                  addr56:
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push("_gpu");
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              addr88:
                              _loc3_ = §;X§[_loc2_] as ParticleResource;
                              if(!(_loc5_ && ParticleManager))
                              {
                                 if(!_loc3_)
                                 {
                                    addr104:
                                    _loc3_ = §;X§[param1] as ParticleResource;
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr104);
                           }
                        }
                        §§goto(addr88);
                     }
                     else
                     {
                        addr86:
                        §§push(§§pop() + §§pop());
                     }
                     _loc2_ = §§pop();
                     §§goto(addr88);
                  }
                  else
                  {
                     addr85:
                     §§push("_cpu");
                  }
                  §§goto(addr86);
               }
               §§goto(addr88);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr85);
         }
         §§goto(addr56);
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
