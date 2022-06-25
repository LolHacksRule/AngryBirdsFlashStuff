package §`M§
{
   import §=R§.§5!a§;
   import flash.display.MovieClip;
   
   public class §&!G§ extends §5!a§
   {
      
      private static const § e§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § e§ = 1000 / 60;
         }
      }
      
      private var §6!N§:String;
      
      private var §7T§:String;
      
      private var §?o§:int = 0;
      
      private var §%!]§:int = 0;
      
      private var §"!T§:Number = 0;
      
      private var §=[§:Boolean = false;
      
      public function §&!G§(param1:XML, param2:§9!#§, param3:MovieClip = null)
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
      
      public function §,!C§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            §§push(this);
            §§push(this.§"!T§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§"!T§ = §§pop();
            if(!_loc6_)
            {
               addr36:
               §§push(this);
               §§push(this.§"!T§);
               if(_loc5_)
               {
                  §§push(§§pop() / § e§);
               }
               §§pop().§%!]§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§?o§ >= this.§%!]§)
               {
                  loop4:
                  while(!(_loc6_ && param1))
                  {
                     this.§?o§ = this.§%!]§;
                     for(; _loc5_; this.§7T§ = this.§6!N§,if(_loc5_ || _loc3_)
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
                                       if(§§pop() == this.§7T§)
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
                           this.§"!T§ = this.§%!]§ * § e§;
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
                           §§push(this.§6!N§);
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
                        this.§%!]§ = this.§?o§;
                        §§goto(addr167);
                     }
                     else
                     {
                        while(!(_loc6_ && _loc2_))
                        {
                           §§goto(addr171);
                           §§push(this.§6!N§);
                           continue loop7;
                        }
                        while(true)
                        {
                           this.§6!N§ = mClip.currentLabel;
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
                  §§push((_loc3_ = this).§?o§);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc3_.§?o§ = _loc4_;
                  }
                  if(_loc5_ || _loc3_)
                  {
                     mClip.gotoAndStop(this.§?o§);
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
      
      public function §=!Z§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §1!V§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §[7§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §#!q§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§6!N§ = param1;
               addr102:
               while(true)
               {
                  this.§7T§ = param1;
               }
               loop4:
               while(!(_loc3_ && this))
               {
                  this.§"!T§ = mClip.currentFrame * § e§;
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
                        this.§?o§ = mClip.currentFrame;
                        continue loop4;
                     }
                     addr97:
                     while(true)
                     {
                        this.§%!]§ = mClip.currentFrame;
                        continue loop3;
                     }
                  }
                  §§goto(addr102);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §5v§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §[q§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §<!P§() : Boolean
      {
         return this.§=[§;
      }
      
      public function set §<!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§=[§ = param1;
         }
      }
   }
}
