package §_-CR§
{
   import §_-HU§.§_-6n§;
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-kw§ extends §_-Dz§
   {
       
      
      public function §_-kw§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(§_-e7§.mTryToBlink > 0)
         {
            if(§_-e7§.mTryToBlink >= §_-l9§.§_-L5§)
            {
               if(_loc4_)
               {
                  §§push(true);
                  if(!(_loc3_ && param1))
                  {
                     _loc2_ = §§pop();
                     §_-e7§.mTryToBlink = §_-l9§.§_-L5§ - 1;
                     if(_loc4_ || this)
                     {
                        §_-e7§.mTryToBlink -= param1;
                        addr48:
                        if(_loc4_ || param1)
                        {
                           if(§_-e7§.mTryToBlink <= 0)
                           {
                              if(_loc4_ || _loc2_)
                              {
                              }
                              addr117:
                              return _loc2_;
                              addr90:
                           }
                           §§goto(addr90);
                        }
                        §§push(true);
                        if(!_loc3_)
                        {
                           addr82:
                           _loc2_ = §§pop();
                           if(_loc4_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr115:
                           _loc2_ = §§pop();
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr82);
               }
            }
            §§goto(addr48);
         }
         else if(§_-e7§.mIsBlinking)
         {
            §_-e7§.mTryToBlink = 0;
            §_-e7§.mIsBlinking = false;
            §§push(true);
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr115);
            }
            §§goto(addr117);
         }
         §§goto(addr117);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!(_loc4_ && this))
         {
            if(§_-e7§.mTryToScream > 0)
            {
               if(§_-e7§.mTryToScream >= §_-l9§.§_-ey§)
               {
                  if(_loc3_ || param1)
                  {
                     §§push(true);
                     if(_loc3_)
                     {
                        _loc2_ = §§pop();
                        this.playScreamingSoundEffect();
                        if(!(_loc4_ && _loc2_))
                        {
                           §_-e7§.mTryToScream = §_-l9§.§_-ey§ - 1;
                           addr63:
                           §_-e7§.mTryToScream -= param1;
                           addr69:
                           if(§_-e7§.mTryToScream <= 0)
                           {
                           }
                           addr104:
                           return _loc2_;
                           addr77:
                        }
                        §§push(true);
                        if(_loc3_)
                        {
                           _loc2_ = §§pop();
                        }
                        else
                        {
                           addr102:
                           _loc2_ = §§pop();
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr104);
               }
               §§goto(addr63);
            }
            else if(§_-e7§.mIsScreaming)
            {
               §_-e7§.mTryToScream = 0;
               §_-e7§.mIsScreaming = false;
               §§push(true);
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr102);
               }
               §§goto(addr63);
            }
            §§goto(addr63);
         }
         §§goto(addr69);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-h7§(§_-6n§.§_-6l§);
         }
      }
   }
}
