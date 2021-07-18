package §;o§
{
   import §0!-§.Texture;
   import §<!<§.§ M§;
   import §=U§.§3p§;
   import §@!X§.§7j§;
   import flash.display.BitmapData;
   
   public class ParticleManager
   {
      
      private static var § 0§:Object;
      
      private static var §!!<§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            § 0§ = {};
            if(!(_loc1_ && _loc2_))
            {
               §!!<§ = new Vector.<Texture>();
            }
         }
      }
      
      public function ParticleManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §^!t§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            § 0§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §2!>§(param1:String, param2:§3p§) : § M§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §%o§(param1);
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
            if(_loc6_)
            {
               if(_loc3_.config.disableMipMapping.length() == 1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     addr56:
                     _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
                  }
               }
               var _loc5_:Texture = param2.§%!^§(_loc3_.bitmapData,_loc4_);
               if(_loc6_ || param1)
               {
                  if(§!!<§.indexOf(_loc5_) < 0)
                  {
                     if(!_loc7_)
                     {
                        addr95:
                        §!!<§.push(_loc5_);
                     }
                  }
                  return new § M§(_loc3_.config,_loc5_);
               }
               §§goto(addr95);
            }
            §§goto(addr56);
         }
         addr27:
         return null;
      }
      
      private static function §%o§(param1:String) : ParticleResource
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
         if(_loc4_ || ParticleManager)
         {
            if(!§7j§.§?!X§)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push("_gpu");
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc2_ = §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              addr88:
                           }
                        }
                        else
                        {
                           addr92:
                           _loc2_ = §§pop();
                        }
                        _loc3_ = § 0§[_loc2_] as ParticleResource;
                        if(_loc4_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              addr109:
                              _loc3_ = § 0§[param1] as ParticleResource;
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
               §§goto(addr88);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr90);
         }
         §§goto(addr88);
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
