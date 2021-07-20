package §else§
{
   import §_-Qx§.§_-Sf§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   import §_-ya§.§_-oc§;
   import §_-ya§.§_-u-§;
   
   public class StateCutScene extends §_-VA§
   {
      
      public static const §_-Az§:String = "StateCutScene";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-Az§ = "StateCutScene";
         }
      }
      
      private var §_-Vd§:§_-oc§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate();
            if(_loc2_ || this)
            {
               §_-Qu§.§_-SQ§();
            }
         }
         §§push(this.§_-vz§());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         this.§_-Vd§ = §_-u-§.§each §(_loc1_);
         §§push(this.§_-Vd§);
         if(_loc2_)
         {
            if(§§pop())
            {
               if(!_loc3_)
               {
                  §§push(§_-MB§.§_-A7§);
                  if(!_loc3_)
                  {
                     §§push(true);
                     if(!(_loc3_ && this))
                     {
                        §§pop().§_-Gf§(§§pop());
                        §§push(§_-MB§.§_-A7§);
                        if(_loc2_)
                        {
                           §§goto(addr69);
                        }
                        §§goto(addr96);
                     }
                     addr69:
                     §§pop().§_-m3§(false);
                     this.§_-Vd§.update(0);
                     if(!(_loc3_ && _loc1_))
                     {
                        addr81:
                        §§push(§_-MB§.§_-A7§);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr90:
                           §§push(§§pop().§_-Zo§);
                           if(_loc2_)
                           {
                              §§goto(addr120);
                           }
                           §§pop().addChild(this.§_-Vd§.sprite);
                           if(_loc2_ || this)
                           {
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr90);
               }
               §§goto(addr81);
            }
            else
            {
               mNextState = §_-Jw§.§_-Az§;
            }
            addr120:
            if(§§pop())
            {
               addr96:
               §§push(§_-MB§.§_-A7§.§_-Zo§);
            }
            return;
         }
         §§goto(addr69);
      }
      
      private function §_-vz§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§_-Sf§.§_-6M§);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§_-Sf§.§_-Xv§().§_-4B§(_loc1_ + "-OUTRO"));
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        addr64:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(§_-Sf§.§_-LD§);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr77:
                              if(!§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr80:
                                    §§push(§_-Sf§.§_-vj§);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          _loc1_ = §§pop();
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§goto(addr95);
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr123);
                                 }
                                 addr95:
                                 §§push(§_-Sf§.§_-Xv§().§_-4B§(_loc1_ + "-INTRO"));
                                 if(_loc4_ || _loc1_)
                                 {
                                    addr108:
                                    §§push(§§pop());
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr123:
                                       _loc2_ = §§pop();
                                       addr124:
                                       §§push(_loc2_);
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr77);
               }
               §§goto(addr64);
            }
            §§goto(addr108);
         }
         §§goto(addr123);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§_-Vd§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§_-MB§.§_-A7§);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(§§pop().§_-Zo§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                           }
                           §§goto(addr85);
                        }
                        §§pop().removeChild(this.§_-Vd§.sprite);
                        if(_loc1_)
                        {
                           §§goto(addr85);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr85);
               }
               §§goto(addr90);
            }
            addr85:
            if(_loc1_ || _loc2_)
            {
               addr71:
               §§push(§_-MB§.§_-A7§.§_-Zo§);
            }
            this.§_-Vd§.dispose();
            if(!_loc2_)
            {
               addr90:
               this.§_-Vd§ = null;
               §§goto(addr93);
            }
            addr93:
            return;
         }
         §§goto(addr90);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr43);
                  }
                  else
                  {
                     addr65:
                     mNextState = §_-Jw§.§_-Az§;
                  }
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     return §_-VA§.STATE_STATUS_COMPLETED;
                  }
                  addr53:
                  if(!this.§_-Vd§.update(param1))
                  {
                     §§goto(addr65);
                  }
               }
               return §_-VA§.STATE_STATUS_RUNNING;
            }
            addr43:
            return _loc2_;
         }
         §§goto(addr53);
      }
   }
}
