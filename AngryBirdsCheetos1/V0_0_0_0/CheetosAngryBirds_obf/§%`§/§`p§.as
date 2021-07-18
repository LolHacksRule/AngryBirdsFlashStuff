package §%`§
{
   import § !+§.§0Z§;
   import §2!-§.Texture;
   import §4W§.§!]§;
   import §9N§.§#"§;
   import flash.display.BitmapData;
   
   public class §`p§
   {
      
      private static var §4!3§:Object;
      
      private static var §<!;§:Vector.<Texture>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §`p§))
         {
            §4!3§ = {};
            do
            {
               §<!;§ = new Vector.<Texture>();
            }
            while(!(_loc1_ || §`p§));
            
         }
      }
      
      public function §`p§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §super§(param1:String, param2:XML, param3:BitmapData) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §4!3§[param1] = new ParticleResource(param2,param3);
         }
      }
      
      public static function §"!A§(param1:String, param2:§!]§) : §#"§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:ParticleResource = §89§(param1);
         if(_loc6_ || _loc3_)
         {
            if(!_loc3_)
            {
               if(_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc4_:* = true;
         if(!_loc7_)
         {
            if(_loc3_.config.disableMipMapping.length() == 1)
            {
               if(!(_loc7_ && param2))
               {
                  _loc4_ = parseFloat(_loc3_.config.disableMipMapping) == 0;
               }
            }
         }
         var _loc5_:Texture = param2.§8E§(_loc3_.bitmapData,_loc4_);
         if(_loc6_)
         {
            if(§<!;§.indexOf(_loc5_) < 0)
            {
               if(_loc6_)
               {
                  addr95:
                  §<!;§.push(_loc5_);
               }
            }
            return new §#"§(_loc3_.config,_loc5_);
         }
         §§goto(addr95);
      }
      
      private static function §89§(param1:String) : ParticleResource
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ParticleResource = null;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            if(!§0Z§.§=2§)
            {
               if(!_loc4_)
               {
                  addr32:
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() + "_gpu");
                     if(!_loc4_)
                     {
                        _loc2_ = §§pop();
                        if(_loc5_)
                        {
                           addr52:
                        }
                     }
                     else
                     {
                        addr56:
                        _loc2_ = §§pop();
                     }
                     _loc3_ = §4!3§[_loc2_] as ParticleResource;
                     if(!(_loc4_ && _loc2_))
                     {
                        if(!_loc3_)
                        {
                           addr83:
                           _loc3_ = §4!3§[param1] as ParticleResource;
                        }
                        return _loc3_;
                     }
                     §§goto(addr83);
                  }
                  else
                  {
                     addr54:
                     §§push(§§pop() + "_cpu");
                  }
                  §§goto(addr56);
               }
               §§goto(addr52);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr54);
         }
         §§goto(addr32);
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
