package §_-QI§
{
   import §_-4g§.§_-pX§;
   import §_-Ga§.§_-bm§;
   import §_-TG§.§_-00u§;
   import §_-j7§.§_-LY§;
   import §_-lt§.§_-30§;
   import §_-lt§.§_-eZ§;
   import §_-mh§.§_-09d§;
   import §_-uY§.Sprite;
   
   public class §_-DF§ extends §_-30§
   {
       
      
      public function §_-DF§(param1:§_-00u§, param2:§_-bm§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-eZ§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:* = null;
         if(_loc11_ || this)
         {
            §§push(param1);
            if(!(_loc12_ && this))
            {
               if(§§pop().indexOf("MISC_EASTER_EGG_") == 0)
               {
                  loop0:
                  while(true)
                  {
                     §§push("1000-");
                     if(!(_loc12_ && param3))
                     {
                        §§push(§§pop() + param1.split("_")[3]);
                     }
                     §§push(§§pop());
                     addr111:
                     while(true)
                     {
                        _loc10_ = §§pop();
                        while((AngryBirdsFP11.sUserProgress as §_-09d§).isEggUnlocked(_loc10_))
                        {
                           if(_loc11_)
                           {
                              §§goto(addr62);
                           }
                           if(!_loc12_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            }
            §§goto(addr111);
         }
         addr62:
         return null;
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-eZ§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param2)
         {
            if(param2.indexOf("MISC_EASTER_EGG_") == 0)
            {
               if(!_loc11_)
               {
                  §§goto(addr50);
               }
            }
            return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         addr50:
         return new §_-ZP§(this,param1,§_-6A§.mLevelEngine.mWorld,§_-6A§,§_-q-§,param2,param3,param4,param5,param9);
      }
      
      public function §_-00F§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §_-LY§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§_-LY§ = new §_-LY§(this,_loc5_,§_-6A§.mLevelEngine.mWorld,§_-6A§,§_-q-§,param1,param2,param3,param4);
         if(_loc8_ || param2)
         {
            §_-Tx§[§_-Tx§.length] = _loc6_;
         }
         do
         {
            §_-Rn§.addChild(_loc5_);
         }
         while(_loc7_ && param3);
         
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §_-ll§.push(§_-KZ§.createExplosion(param1,param2,param3));
         }
         do
         {
            §_-pX§.playSound("TntExplosions","ChannelExplosions");
         }
         while(!_loc4_);
         
      }
   }
}
