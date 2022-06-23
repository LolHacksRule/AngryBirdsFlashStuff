package §!+§
{
   import §7!0§.§6Z§;
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §89§ extends §>G§
   {
       
      
      public function §89§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(§'j§.mTryToBlink > 0)
         {
            if(§'j§.mTryToBlink >= override.§for §)
            {
               §§push(true);
               if(_loc4_ || _loc3_)
               {
                  _loc2_ = §§pop();
                  if(!(_loc3_ && _loc3_))
                  {
                     §'j§.mTryToBlink = override.§for § - 1;
                     §'j§.mTryToBlink -= param1;
                     §§goto(addr49);
                  }
                  else
                  {
                     addr113:
                     §'j§.mTryToBlink = 0;
                     §'j§.mIsBlinking = false;
                     if(_loc4_ || this)
                     {
                        §§goto(addr126);
                     }
                     §§goto(addr135);
                  }
               }
               §§goto(addr91);
            }
            addr49:
            if(_loc4_ || param1)
            {
               if(§'j§.mTryToBlink <= 0)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(true);
                     if(_loc4_ || param1)
                     {
                        addr91:
                        _loc2_ = §§pop();
                     }
                     §§goto(addr136);
                  }
               }
               addr135:
               §§push(_loc2_);
            }
            else
            {
               addr126:
               §§push(true);
               if(_loc4_ || param1)
               {
                  _loc2_ = §§pop();
                  §§goto(addr135);
               }
            }
            addr136:
            return §§pop();
         }
         if(§'j§.mIsBlinking)
         {
            if(_loc4_ || param1)
            {
               §§goto(addr113);
            }
         }
         §§goto(addr135);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(§'j§.mTryToScream > 0)
         {
            if(§'j§.mTryToScream >= override.§`=§)
            {
               if(!_loc3_)
               {
                  §§push(true);
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        this.playScreamingSoundEffect();
                        §'j§.mTryToScream = override.§`=§ - 1;
                        addr53:
                        §'j§.mTryToScream -= param1;
                        if(§'j§.mTryToScream <= 0)
                        {
                           if(!_loc3_)
                           {
                              §§push(true);
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr83);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr90);
                  }
                  addr83:
                  _loc2_ = §§pop();
                  if(!_loc3_)
                  {
                     addr107:
                     §§push(_loc2_);
                     addr86:
                  }
                  else
                  {
                     addr90:
                     §'j§.mTryToScream = 0;
                     if(_loc4_)
                     {
                        §'j§.mIsScreaming = false;
                     }
                     §§push(true);
                     if(!(_loc3_ && this))
                     {
                        addr106:
                        _loc2_ = §§pop();
                        §§goto(addr107);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr107);
            }
            §§goto(addr53);
         }
         else if(§'j§.mIsScreaming)
         {
            §§goto(addr90);
         }
         §§goto(addr107);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §+!&§(§6Z§.§0v§);
         }
      }
   }
}
