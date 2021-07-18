package §<<§
{
   import §-Z§.§?h§;
   import §1n§.§5#§;
   import §[P§.Texture;
   import §[x§.§,S§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var §]!6§:Object;
      
      private static var §@!2§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]!6§ = {};
         }
         do
         {
            §@!2§ = new Vector.<Texture>();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §while§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §]!6§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §<!6§(param1:String, param2:§5#§) : §,S§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:ParticleResource = §<#§(param1);
         if(!_loc6_)
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
         if(_loc7_)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(_loc7_)
               {
                  addr52:
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
            var _loc5_:Texture = param2.§]C§(_loc3_.bitmapData,_loc4_);
            if(_loc7_ || param1)
            {
               if(§@!2§.indexOf(_loc5_) < 0)
               {
                  if(_loc7_ || param2)
                  {
                     §@!2§.push(_loc5_);
                  }
               }
            }
            return new §,S§(_loc3_.config,_loc5_);
         }
         §§goto(addr52);
      }
      
      private static function §<#§(param1:String) : ParticleResource
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
         if(!(_loc5_ && param1))
         {
            if(!§?h§.§7"§)
            {
               if(!(_loc5_ && param1))
               {
                  addr41:
                  §§push(_loc2_);
                  if(_loc4_ || ParticleManager)
                  {
                     §§push("_gpu");
                     if(_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc4_ || _loc2_)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              addr78:
                           }
                        }
                        else
                        {
                           addr92:
                           _loc2_ = §§pop();
                        }
                        _loc3_ = §]!6§[_loc2_] as ParticleResource;
                        if(_loc4_ || ParticleManager)
                        {
                           if(!_loc3_)
                           {
                              addr109:
                              _loc3_ = §]!6§[param1] as ParticleResource;
                           }
                           return _loc3_;
                        }
                        §§goto(addr109);
                     }
                     else
                     {
                        addr91:
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     addr90:
                     §§push("_cpu");
                  }
                  §§goto(addr91);
               }
               §§goto(addr78);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr90);
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
