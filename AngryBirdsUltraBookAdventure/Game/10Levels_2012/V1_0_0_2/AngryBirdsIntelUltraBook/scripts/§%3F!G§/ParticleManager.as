package §?!G§
{
   import §,!5§.§6o§;
   import §-w§.§,Q§;
   import §<&§.§^b§;
   import §^!+§.Texture;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §5!f§:Object;
      
      private static var § !o§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!f§ = {};
         }
         do
         {
            § !o§ = new Vector.<Texture>();
         }
         while(!_loc1_);
         
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
      
      public static function §>m§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §5!f§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §<x§(param1:String, param2:§,Q§) : §6o§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §@6§(param1);
         if(!(_loc7_ && param2))
         {
            if(!_loc3_)
            {
               if(_loc6_ || ParticleManager)
               {
                  §§goto(addr37);
               }
            }
            var _loc4_:* = true;
            if(_loc6_ || param1)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(_loc6_)
                  {
                     addr66:
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
               var _loc5_:Texture = param2.getTextureFromBitmapData(_loc3_.bitmapData,_loc4_);
               if(!(_loc7_ && ParticleManager))
               {
                  if(§ !o§.indexOf(_loc5_) < 0)
                  {
                     if(!_loc7_)
                     {
                        addr105:
                        § !o§.push(_loc5_);
                     }
                  }
                  return new §6o§(_loc3_.config,_loc5_);
               }
               §§goto(addr105);
            }
            §§goto(addr66);
         }
         addr37:
         return null;
      }
      
      private static function §@6§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(_loc4_ || ParticleManager)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            if(!§^b§.§7h§)
            {
               if(_loc4_ || _loc3_)
               {
                  addr41:
                  §§push(_loc2_);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push("_gpu");
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_ || ParticleManager)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_ || param1)
                           {
                              addr98:
                              _loc3_ = §5!f§[_loc2_] as ParticleResource;
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr109:
                                    _loc3_ = §5!f§[param1] as ParticleResource;
                                 }
                                 return _loc3_;
                              }
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        addr96:
                        §§push(§§pop() + §§pop());
                     }
                     _loc2_ = §§pop();
                     §§goto(addr98);
                  }
                  else
                  {
                     addr95:
                     §§push("_cpu");
                  }
                  §§goto(addr96);
               }
               §§goto(addr98);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr95);
         }
         §§goto(addr41);
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
