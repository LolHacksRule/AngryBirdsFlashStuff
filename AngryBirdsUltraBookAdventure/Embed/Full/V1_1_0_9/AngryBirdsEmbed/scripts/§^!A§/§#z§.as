package §^!A§
{
   import §&o§.Sprite;
   import §6A§.§ !§;
   import §^!L§.§%h§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#z§ extends §;!%§
   {
       
      
      public function §#z§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = false;
         if(!(_loc4_ && param1))
         {
            if(§;S§.mTryToBlink > 0)
            {
               if(§;S§.mTryToBlink >= §[!J§.§4!-§)
               {
                  §§push(true);
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     addr48:
                     §;S§.mTryToBlink = §[!J§.§4!-§ - 1;
                     addr53:
                     §;S§.mTryToBlink -= param1;
                     if(_loc3_)
                     {
                        if(§;S§.mTryToBlink <= 0)
                        {
                           §§push(true);
                           if(_loc3_ || _loc3_)
                           {
                              _loc2_ = §§pop();
                           }
                           else
                           {
                              addr104:
                              return §§pop();
                              addr105:
                           }
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr104);
               }
               §§goto(addr53);
            }
            else if(§;S§.mIsBlinking)
            {
               §;S§.mTryToBlink = 0;
               §;S§.mIsBlinking = false;
               if(!(_loc4_ && _loc3_))
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr104);
               }
            }
            §§goto(addr104);
         }
         §§goto(addr48);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(§;S§.mTryToScream > 0)
         {
            if(!(_loc3_ && param1))
            {
               if(§;S§.mTryToScream >= §[!J§.§`"§)
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§push(true);
                     if(_loc4_ || _loc2_)
                     {
                        _loc2_ = §§pop();
                        this.playScreamingSoundEffect();
                        §;S§.mTryToScream = §[!J§.§`"§ - 1;
                        if(_loc4_)
                        {
                           addr70:
                           §;S§.mTryToScream -= param1;
                           if(§;S§.mTryToScream <= 0)
                           {
                              §§push(true);
                              if(!_loc3_)
                              {
                                 _loc2_ = §§pop();
                                 addr94:
                                 §§push(_loc2_);
                                 addr94:
                              }
                           }
                        }
                     }
                     else
                     {
                        addr119:
                        _loc2_ = §§pop();
                     }
                     §§goto(addr94);
                  }
                  else
                  {
                     addr108:
                     §;S§.mIsScreaming = false;
                     §§push(true);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr119);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr70);
            }
            §§goto(addr94);
         }
         else if(§;S§.mIsScreaming)
         {
            §;S§.mTryToScream = 0;
            if(!(_loc3_ && this))
            {
               §§goto(addr108);
            }
         }
         §§goto(addr94);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,H§(§%h§.§&;§);
         }
      }
   }
}
