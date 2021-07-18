package §>!'§
{
   import § !t§.b2World;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §?!6§.§@T§;
   
   public class §5!6§ extends §<!3§
   {
       
      
      public function §5!6§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_)
         {
            if(§0!E§.mTryToBlink > 0)
            {
               if(§0!E§.mTryToBlink >= §6!N§.§>!7§)
               {
                  if(_loc4_ || param1)
                  {
                     §§push(true);
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc2_ = §§pop();
                        if(!_loc3_)
                        {
                           addr58:
                           §0!E§.mTryToBlink = §6!N§.§>!7§ - 1;
                           §0!E§.mTryToBlink -= param1;
                           addr63:
                           if(§0!E§.mTryToBlink <= 0)
                           {
                              if(!_loc3_)
                              {
                                 addr85:
                                 §§push(true);
                                 if(_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc3_)
                                    {
                                       addr106:
                                       return _loc2_;
                                       addr91:
                                    }
                                 }
                                 §§goto(addr106);
                              }
                              else
                              {
                                 addr98:
                                 §0!E§.mIsBlinking = false;
                              }
                              §§push(true);
                              if(!_loc3_)
                              {
                                 _loc2_ = §§pop();
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr85);
                     }
                  }
                  §§goto(addr106);
               }
               §§goto(addr63);
            }
            else if(§0!E§.mIsBlinking)
            {
               §0!E§.mTryToBlink = 0;
               §§goto(addr98);
            }
            §§goto(addr106);
         }
         §§goto(addr58);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = false;
         if(_loc4_ || _loc2_)
         {
            if(§0!E§.mTryToScream > 0)
            {
               if(§0!E§.mTryToScream >= §6!N§.§0+§)
               {
                  §§push(true);
                  if(!(_loc3_ && this))
                  {
                     _loc2_ = §§pop();
                     this.playScreamingSoundEffect();
                     if(_loc4_ || this)
                     {
                        §0!E§.mTryToScream = §6!N§.§0+§ - 1;
                        if(!_loc3_)
                        {
                           addr70:
                           §0!E§.mTryToScream -= param1;
                           if(_loc4_)
                           {
                              if(§0!E§.mTryToScream <= 0)
                              {
                                 if(_loc4_ || this)
                                 {
                                    §§push(true);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc3_)
                                       {
                                          addr143:
                                          §§push(_loc2_);
                                          addr100:
                                       }
                                    }
                                    else
                                    {
                                       addr142:
                                       _loc2_ = §§pop();
                                    }
                                    §§goto(addr143);
                                 }
                                 else
                                 {
                                    addr134:
                                    §§push(true);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§goto(addr142);
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr142);
               }
               §§goto(addr70);
            }
            else if(§0!E§.mIsScreaming)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr121:
                  §0!E§.mTryToScream = 0;
               }
               §0!E§.mIsScreaming = false;
               if(!(_loc3_ && param1))
               {
                  §§goto(addr134);
               }
            }
            §§goto(addr143);
         }
         §§goto(addr121);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §97§(§@T§.§ if§);
         }
      }
   }
}
