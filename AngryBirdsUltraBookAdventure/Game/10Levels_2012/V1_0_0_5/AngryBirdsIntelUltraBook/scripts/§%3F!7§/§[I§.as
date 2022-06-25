package §?!7§
{
   import §9Y§.§+!!§;
   import flash.display.MovieClip;
   
   public class §[I§ extends §+!!§
   {
      
      private static const §1k§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §1k§ = 1000 / 60;
         }
      }
      
      private var §2!%§:String;
      
      private var §2!k§:String;
      
      private var §;T§:int = 0;
      
      private var §55§:int = 0;
      
      private var §^V§:Number = 0;
      
      private var §1!S§:Boolean = false;
      
      public function §[I§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §+#§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            §§push(this);
            §§push(this.§^V§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^V§ = §§pop();
            if(!_loc6_)
            {
               addr36:
               §§push(this);
               §§push(this.§^V§);
               if(_loc5_)
               {
                  §§push(§§pop() / §1k§);
               }
               §§pop().§55§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§;T§ >= this.§55§)
               {
                  loop4:
                  while(!(_loc6_ && param1))
                  {
                     this.§;T§ = this.§55§;
                     for(; _loc5_; this.§2!k§ = this.§2!%§,if(_loc5_ || _loc3_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           if(!_loc6_)
                           {
                              addr126:
                              §§push(_loc2_);
                              if(_loc5_ || _loc2_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       break loop0;
                                    }
                                    addr171:
                                    while(true)
                                    {
                                       if(§§pop() == this.§2!k§)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr184);
                                    }
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr187);
                              addr126:
                           }
                           this.§^V§ = this.§55§ * §1k§;
                           break;
                           addr167:
                        }
                        continue loop4;
                     })
                     {
                        if(_loc5_ || _loc3_)
                        {
                           continue;
                        }
                        addr184:
                        while(true)
                        {
                           §§push(this.§2!%§);
                           addr186:
                           while(true)
                           {
                              §§push(§§pop());
                              addr187:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 break loop4;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  loop7:
                  while(true)
                  {
                     if(_loc5_ || param1)
                     {
                        this.§55§ = this.§;T§;
                        §§goto(addr167);
                     }
                     else
                     {
                        while(!(_loc6_ && _loc2_))
                        {
                           §§goto(addr171);
                           §§push(this.§2!%§);
                           continue loop7;
                        }
                        while(true)
                        {
                           this.§2!%§ = mClip.currentLabel;
                           §§goto(addr201);
                        }
                        addr201:
                        addr213:
                     }
                  }
               }
               else
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§;T§);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc3_.§;T§ = _loc4_;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     mClip.gotoAndStop(this.§;T§);
                     §§goto(addr213);
                  }
                  else
                  {
                     §§goto(addr126);
                  }
               }
               §§goto(addr126);
            }
            return §§pop();
         }
         §§goto(addr36);
      }
      
      public function §=!g§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §;t§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §-!H§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §2!?§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§2!%§ = param1;
               addr102:
               while(true)
               {
                  this.§2!k§ = param1;
               }
               loop4:
               while(!(_loc3_ && this))
               {
                  this.§^V§ = mClip.currentFrame * §1k§;
                  if(_loc3_)
                  {
                     continue;
                  }
                  addr37:
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                  }
                  loop3:
                  while(true)
                  {
                     if(_loc2_ || this)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        this.§;T§ = mClip.currentFrame;
                        continue loop4;
                     }
                     addr97:
                     while(true)
                     {
                        this.§55§ = mClip.currentFrame;
                        continue loop3;
                     }
                  }
                  §§goto(addr102);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §!!#§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §1!!§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §;J§() : Boolean
      {
         return this.§1!S§;
      }
      
      public function set §;J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§1!S§ = param1;
         }
      }
   }
}
